package com.main.one.vopage;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SearchVo2 extends PageVo2{
	   
	private String bgno;                       // 게시판 그룹
	    private String searchKeyword = "";         // 검색 키워드
	    private String searchType = "";            // 검색 필드: 제목, 내용  
	    private String[] searchTypeArr;            // 검색 필드를 배열로 변환

	    
}
