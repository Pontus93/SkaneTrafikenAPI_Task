package skaneTrafiken;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/**
 * Servlet implementation class skaneTrafiken
 */
@WebServlet("")
public class skaneTrafiken extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//
	//public String URL = "http://www.labs.skanetrafiken.se/v2.2/neareststation.asp?x=6167930&y=1323215&Radius=500";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public skaneTrafiken() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		// Request parameters from our java script.
		PrintWriter out = response.getWriter();
		String cords1 = request.getParameter("xLatitude");
		String cords2 = request.getParameter("yLongitude");

		// API URL with users coordinates.
		String URLtoSend = "http://www.labs.skanetrafiken.se/v2.2/neareststation.asp?x=" + cords1 + "&y=" + cords2
				+ "&Radius=500";

		// Including our directionPage.
		request.getRequestDispatcher("/components/directionSiteTop.jsp").include(request, response);

		URL line_api_url = new URL(URLtoSend);

		// Create a HTTP connection to sent the GET request over.
		HttpURLConnection linec = (HttpURLConnection) line_api_url.openConnection();
		linec.setDoInput(true);
		linec.setDoOutput(true);
		linec.setRequestMethod("GET");

		// Make a Buffer to read the response from the API
		BufferedReader in = new BufferedReader(new InputStreamReader(linec.getInputStream()));

		// Save line&response for later usage.
		String inputLine;
		String ApiResponse = "";

		// Loops the response.
		while ((inputLine = in.readLine()) != null) {
			ApiResponse += inputLine;
		}
		in.close();

		// Call a method to make a XMLdoc out of the full response.
		Document doc = convertStringToXMLDocument(ApiResponse);
		doc.getDocumentElement().normalize();

		// Creates a nodeList for StationName+Distance.
		NodeList nameList = doc.getElementsByTagName("Name");
		NodeList nDistanceList = doc.getElementsByTagName("Distance");

		if (request.getParameter("buttonGetAway") != null) {
			out.println("Here is your options.");
			out.println("<hr>");

			// Loops through the contentLength.
			for (int i = 0; i < nameList.getLength(); i++) {
				Node node = nameList.item(i);
				Node noded = nDistanceList.item(i);

				// Gets the closest train/buss places and prints them.
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) node;
					Element elElement = (Element) noded;
					out.println("<br>");
					out.println(elElement.getTextContent() + " meters to " + eElement.getTextContent());
				}
			}
		}
		request.getRequestDispatcher("/components/directionSiteBottom.jsp").include(request, response);
	}

	// Method the makes a XML doc out of a string, if it is in a XML format.
	private static Document convertStringToXMLDocument(String xmlString) {
		// Parser that produces DOM object trees from XML content
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

		// API to obtain DOM Document instance
		DocumentBuilder builder = null;
		try {
			// Create DocumentBuilder with default configuration
			builder = factory.newDocumentBuilder();

			// Parse the content to Document object
			Document doc = builder.parse(new InputSource(new StringReader(xmlString)));
			return doc;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
