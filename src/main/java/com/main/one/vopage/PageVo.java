package com.main.one.vopage;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageVo {
	 private Integer displayRowCount = 6;            // 출력할 데이터 개수
	    private Integer rowStart;                       // 시작행번호
	    private Integer rowEnd;                         // 종료행 번호
	    private Integer totPage;                        // 전체 페이수
	    private Integer totRow = 0;                     // 전체 데이터 수
	    private Integer page;                           // 현재 페이지
	    private Integer pageStart;                      // 시작페이지
	    private Integer pageEnd;                        // 종료페이지
	    

//	    전체 데이터 개수(total)를 이용하여 페이지수 계산. 
	    public void pageCalculate(Integer total) {
	    	int pageGroupCnt=5;		//한그룹에 표현되는 페이지갯수
	    	
	        getPage();
	        totRow  = total;
	        totPage    = (int) ( total / displayRowCount );
	        
	        if ( total % displayRowCount > 0 ) {
	            totPage++;
	        }

	        pageStart = (page - (page - 1) % pageGroupCnt) ;
	        pageEnd = pageStart + 2;
	        
	        if (pageEnd > totPage) {
	            pageEnd = totPage;
	        }
	        
	        rowStart = ((page - 1) * displayRowCount) + 1 ;
	        rowEnd   = rowStart + displayRowCount - 1;
	        
	    } 

		//	    현재 페이지 번호. 
	    public Integer getPage() {
	        if (page == null || page == 0) {
	            page = 1;
	        }
	        
	        return page;
	        
	    }
}
