package com.springapp.mvc.commmon;

import javax.servlet.http.HttpServletResponse;

import com.springapp.mvc.helper.MyUtils;
import org.apache.poi.hssf.usermodel.*;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import javax.servlet.http.HttpServletRequest;
import java.io.OutputStream;
import java.util.Map;

/**
 * Created by ruiqizhang on 3/22/16.
 */
public class ViewExcel extends AbstractExcelView {

   @Override
    public void buildExcelDocument(Map model, HSSFWorkbook workbook,
                                   HttpServletRequest request, HttpServletResponse response)
            throws Exception {
       System.out.println(HSSFWorkbook.class.getProtectionDomain().getCodeSource().getLocation());
       HSSFSheet sheet = workbook.createSheet("list");
        sheet.setDefaultColumnWidth((short) 12);
        HSSFCell cell = getCell(sheet, 0, 0);
        setText(cell, "Spring Excel test");
        HSSFCellStyle dateStyle = workbook.createCellStyle();
        dateStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("mm/dd/yyyy"));
        cell = getCell(sheet, 1, 0);
        cell.setCellValue("日期：2008-10-23");
        getCell(sheet, 2, 0).setCellValue("920010460000010912292001046000001091229200104600000109122");
        getCell(sheet, 2, 1).setCellValue("测试2");
        HSSFRow sheetRow = sheet.createRow(3);
        for (short i = 0; i < 10; i++) {
            sheetRow.createCell(i).setCellValue(i * 10);
        }
       String filename = "测试.xls";//设置下载时客户端Excel的名称
       filename = MyUtils.encodeFilename(filename, request);//处理中文文件名
       response.setContentType("application/vnd.ms-excel");
       response.setHeader("Content-disposition", "attachment;filename=" + filename);
       OutputStream ouputStream = response.getOutputStream();
       workbook.write(ouputStream);
       ouputStream.flush();
       ouputStream.close();

   }
}
