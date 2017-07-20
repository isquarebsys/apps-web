package pdfbox206;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;

public class SearchUtil {
	// location where the index will be stored.
	private static final String INDEX_DIR = "src/main/resources/index/pdfbox206";
	private static final int DEFAULT_RESULT_SIZE = 100;
	private static final String PDF_LOCATION = "D://ws//search_engine//DigiLib_Web//src//resources//";

	public static List<Result> search(String searchString) {
		String resultString = "Not Yet Searched";
		List<Result> searchResult = null;
		System.out.println("Search String: " + searchString);
		try {
			File file = new File(PDF_LOCATION);
			if (file.isDirectory()) {
				String[] files = file.list();
				// an IO error could occur
				if (files != null) {
					for (String fileName : files) {
						File pdfFile = new File(PDF_LOCATION + fileName);
						IndexItem pdfIndexItem = index(pdfFile);
						Indexer indexer = new Indexer(INDEX_DIR);
						indexer.index(pdfIndexItem);
						indexer.close();
						Searcher searcher = new Searcher(INDEX_DIR);
						searchResult = searcher.findByContent(searchString, DEFAULT_RESULT_SIZE);
					}
				}
			}
		} catch (Exception e) {
			System.out.println("Exception :" + e.toString());
		}
		return searchResult;
	}

	// Extract text from PDF document
	public static IndexItem index(File file) throws IOException {
		PDDocument doc = PDDocument.load(file);
		String content = new PDFTextStripper().getText(doc);
		doc.close();
		return new IndexItem((long) file.getName().hashCode(), file.getName(), content);
	}
}
