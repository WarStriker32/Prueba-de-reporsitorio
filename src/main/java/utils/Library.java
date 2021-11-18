package utils;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
import org.eclipse.jdt.annotation.Nullable;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Library {
    
    public static java.sql.Date convertToSqlDate(String value) throws ParseException {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date parsed = formatter.parse(value);
        java.sql.Date sqlDate = new java.sql.Date(parsed.getTime());
        return sqlDate;
    }

	@Nullable
	public static String getMsg(String name) {
		String msg = null;
		try {
			File xmlFile = new File("src/main/resources/messages.xml");
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document document = builder.parse(xmlFile);
			XPathFactory xPathFactory = XPathFactory.newInstance();
			XPath xPath = xPathFactory.newXPath();
			XPathExpression expression = xPath.compile("//message[@name=\"" + name + "\"]");
			NodeList nodeList = (NodeList) expression.evaluate(document, XPathConstants.NODESET);
			for (int i = 0; i < nodeList.getLength(); i++) {
				Node node = nodeList.item(i);
				msg = node.getTextContent();
			}
		}
		catch (Exception e) { e.printStackTrace(); }
		return msg;
	}
}
