package com.main.one.dto;



import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MainnoticeDto {
private int anum;
private String aid;
private String acategory;
private String atitle;
private String acontent;
private Date adate;
private int ahit;
private int astep;
private int aindent;

private int mrnum;
private String mrid;
private String mrcontent;
private Date mrdate;
private String mrgroup;
private String mrstep;
private String mrindent;
}
