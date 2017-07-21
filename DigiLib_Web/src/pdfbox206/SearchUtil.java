package pdfbox206;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;

public class SearchUtil {
	// location where the index will be stored.
//	private static final String INDEX_DIR = "src/index/pdfbox206";
	private static final int DEFAULT_RESULT_SIZE = 100;
//	private static final String PDF_LOCATION = "src/resources";
//	private static final String PDF_LOCATION = "D://ws//apps-web//digilib_web//DigiLib_Web//src//resources//";

	public static List<Result> search(String searchString, File file) {
//		String resultString = "Not Yet Searched";
		String INDEX_DIR=System.getProperty("user.dir");
		List<Result> searchResult = new ArrayList();
//		File pdfDirectory=new File(file.getAbsolutePath()+"/"+"pdf");
		System.out.println("Index Directory: "+INDEX_DIR);
		System.out.println("pdfDirectory: "+file.getAbsolutePath());
		System.out.println("Search String: " + searchString);
		try {
//			File file = new File(System.getProperty("user.dir"));
//			File file = new File(pdfFolder);
//			System.out.println("Current Path: "+file.getAbsolutePath());
			if (file.isDirectory()) {
//				String fileDirectory=file.getPath()+"//"+"pdf";
				
				String[] files = file.list();
				// an IO error could occur
				if (files != null) {
					for (String fileName : files) {
						System.out.println("fileName: "+fileName);		
						if(fileName.endsWith(".pdf")){
							File pdfFile = new File(file + "/"+fileName);
							IndexItem pdfIndexItem = index(pdfFile);
							Indexer indexer = new Indexer(INDEX_DIR);
							indexer.index(pdfIndexItem);
							indexer.close();
							Searcher searcher = new Searcher(INDEX_DIR);
							searchResult = searcher.findByContent(searchString, DEFAULT_RESULT_SIZE);			
						}
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
