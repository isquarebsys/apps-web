package pdfbox206;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.apache.lucene.queryParser.ParseException;

public class SearchMain {
	private static final String searchString = "Chokkampalayam";
	
	public static void main(String[] args) throws IOException, ParseException {
		if (searchString != null) {
			File file=new File(".");
			List<Result> searchResult = SearchUtil.search(searchString,file);
			Iterator<Result> searchResultIterator = searchResult.iterator();
			while (searchResultIterator.hasNext()) {
				Result result = (Result) searchResultIterator.next();
				System.out.println("Search text is found in the file: " + result.getFileName());
			}
		}
	}
}
