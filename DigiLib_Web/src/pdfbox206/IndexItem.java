package pdfbox206;


public class IndexItem {
	private Long id;
    private String title;
    private String content;
    private String pageNumber;

    public String getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(String pageNumber) {
		this.pageNumber = pageNumber;
	}

	public static final String ID = "id";
    public static final String TITLE = "title";
    public static final String CONTENT = "content";
    public static final String PAGE_NUMBER = "page_number";

    public IndexItem(Long id, String title, String content,String pageNumber) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.pageNumber=pageNumber;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    @Override
    public String toString() {
        return "IndexItem{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

}
