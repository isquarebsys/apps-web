package pdfbox073;

import org.apache.lucene.queryParser.ParseException;
import org.pdfbox.pdmodel.PDDocument;
import org.pdfbox.util.PDFTextStripper;

import java.io.File;
import java.io.IOException;

public class SearchUtil {
	// location where the index will be stored.
	private static final String INDEX_DIR = "src/main/resources/index";
	private static final int DEFAULT_RESULT_SIZE = 100;
	private static final String pdfFileName="SamplePDF.pdf";
	public static String search(String searchString) {
		String resultString = "Not Yet Searched";
		try {
			File pdfFile = new File("D://ws//search_engine//DigiLib_Web//src//resources//"+pdfFileName);
			IndexItem pdfIndexItem = index(pdfFile);

			// creating an instance of the indexer class and indexing the items
			Indexer indexer = new Indexer(INDEX_DIR);
			indexer.index(pdfIndexItem);
			indexer.close();

			// creating an instance of the Searcher class to the query the index
			Searcher searcher = new Searcher(INDEX_DIR);
			int result = searcher.findByContent(searchString, DEFAULT_RESULT_SIZE);
			resultString = print(result);
			searcher.close();
		} catch (Exception e) {
			System.out.println("Exception :" + e.toString());
		}
		return resultString;
	}

	public static void main(String[] args) throws IOException, ParseException {

		File pdfFile = new File("src/resources/SamplePDF.pdf");
		IndexItem pdfIndexItem = index(pdfFile);

		// creating an instance of the indexer class and indexing the items
		Indexer indexer = new Indexer(INDEX_DIR);
		indexer.index(pdfIndexItem);
		indexer.close();

		// creating an instance of the Searcher class to the query the index
		Searcher searcher = new Searcher(INDEX_DIR);
		int result = searcher.findByContent("Vijay", DEFAULT_RESULT_SIZE);
		print(result);
		searcher.close();
	}

	// Extract text from PDF document
	public static IndexItem index(File file) throws IOException {
		PDDocument doc = PDDocument.load(file);
		String content = new PDFTextStripper().getText(doc);
		doc.close();
		return new IndexItem((long) file.getName().hashCode(), file.getName(), content);
	}

	// Print the results
	private static String print(int result) {
		String resultString = "";
		if (result == 1) {
			resultString = "The document "+pdfFileName+ " CONTAINS the search keyword";
			System.out.println(resultString);
		} else {
			resultString = "The document "+pdfFileName+ " DOES NOT contain the search keyword";
			System.out.println(resultString);
		}
		return resultString;
	}
}
