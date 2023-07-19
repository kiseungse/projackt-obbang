package com.obbang.controller.board;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.obbang.model.board.Criteria;
import com.obbang.model.board.NoticeDTO;
import com.obbang.model.board.PageMakerDTO;
import com.obbang.service.board.NoticeService;


@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	private static final Logger log = LoggerFactory.getLogger(NoticeController.class);

	@Autowired
	private NoticeService nservice;


    /* 게시판 목록 페이지 접속(페이징 적용) */
  @GetMapping("/noticelist")
  public void noticeListGET(Model model, Criteria cri) {
      
      model.addAttribute("list", nservice.getListPaging(cri));
      
      int total = nservice.getTotal(cri);
      System.out.println("total : "+ total);
      PageMakerDTO pageMake = new PageMakerDTO(cri, total);
      
      model.addAttribute("pageMaker", pageMake);
  }
	
	@GetMapping("/noticeenroll")
	public void noticeEnrollGET() {

		log.info("게시판 등록 페이지 진입");

	}
	/* 게시판 등록 */
	@PostMapping("/noticeenroll")
	public String noticeEnrollPOST(NoticeDTO notice,RedirectAttributes rttr) {

		nservice.enroll(notice);
		rttr.addFlashAttribute("result", "enrol success");
		return "redirect:/notice/noticelist";
	}

    /* 게시판 조회 */
    @GetMapping("/noticeget")
    public void noticeGetPageGET(int notice_nno, Model model) throws Exception {
        
        model.addAttribute("pageInfo", nservice.getPage(notice_nno));

    }
    /* 수정 페이지 이동 */
    @GetMapping("/noticemodify")
    public void noticeModifyGET(int notice_nno, Model model) {
        
        model.addAttribute("pageInfo", nservice.getPage(notice_nno));
        
    }

    /* 페이지 수정 */
    @PostMapping("/noticemodify")
    public String noticeModifyPOST(NoticeDTO notice, RedirectAttributes rttr) {
        
        nservice.modify(notice);
        
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/notice/noticelist";
        
    }
    
    /* 페이지 삭제 */
    @PostMapping("/delete")
    public String noticeDeletePOST(int notice_nno, RedirectAttributes rttr) {
        
        nservice.delete(notice_nno);
        
        rttr.addFlashAttribute("result", "delete success");
        
        return "redirect:/notice/noticelist";
    }
    


}
