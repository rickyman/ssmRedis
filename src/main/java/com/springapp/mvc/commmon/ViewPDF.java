package com.springapp.mvc.commmon;

import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfWriter;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by ruiqizhang on 3/22/16.
 */
public class ViewPDF extends AbstractPdfView {
    @Override
    public void buildPdfDocument(Map model, Document document,
                                 PdfWriter writer, HttpServletRequest request,
                                 HttpServletResponse response) throws Exception {
        List list = (List) model.get("list");
        for (int i = 0; i < list.size(); i++)
            document.add(new Paragraph((String) list.get(i)));
    }
}
