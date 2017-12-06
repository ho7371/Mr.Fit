package org.kosta.MrFit;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kosta.MrFit.model.AdminService;
import org.kosta.MrFit.model.BoardService;
import org.kosta.MrFit.model.ListVO;
import org.kosta.MrFit.model.MemberDAO;
import org.kosta.MrFit.model.MemberService;
import org.kosta.MrFit.model.OrderService;
import org.kosta.MrFit.model.PagingBean;
import org.kosta.MrFit.model.ProductDetailVO;
import org.kosta.MrFit.model.ProductQnaVO;
import org.kosta.MrFit.model.ProductReviewVO;
import org.kosta.MrFit.model.ProductService;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring-model.xml","file:src/main/webapp/WEB-INF/spring-security.xml"})
public class UnitTest {
	@Resource
	 private MemberDAO memberDAO;
	 @Resource
	 private MemberService memberService;
	@Resource
	private ProductService productService;
	
	@Resource
	private BoardService boardService;
	
	@Resource
	private OrderService orderService;
	
	@Resource
	private AdminService adminService;
	 @Test
	 public void unitTest() {
			ProductDetailVO pdvo=new ProductDetailVO();
			pdvo.setPno("1");
			pdvo.setPcno("1");
			System.out.println(productService.findProductDetailByColorAjax(pdvo));
	//System.out.println(productService.getTotalProductQnaCountByPno("1"));
		 //List<ProductReviewVO> prvolist=productService.findProductReplyByPno("1");
		 //System.out.println(productService.findProductReplyByPno("1"));
		// System.out.println(prvolist);
	  //System.out.println(memberDAO.findMemberById("java"));
	  /*System.out.println(pservice.findProductDtailByPno("3"));
	  System.out.println("*******************************");
	  System.out.println(pservice.findProductDtailByPno("3").getProductDetailList());
	  System.out.println("*******************************");
	  System.out.println(pservice.findProductDtailByPno("3").getImageList());*/
	  //System.out.println(pservice.findProductByName("청바지"));
		 /*	MemberVO memberVO=new MemberVO();
		 	memberVO.setId("mrfit");
		 	memberVO.setPassword("hot6");
		   memberService.updatePasswordById(memberVO);

	
		 
		/* System.out.println("OrderService : "+oservice);
		 Map<String,Object> map =  oservice.findMyCart("java3");
		 System.out.println("map : "+map);*/
		 //System.out.println("test1 : "+oservice.findMyCart("java3").get("cart"));
	
		// Map<String,Object> map;
		// System.out.println(adminService.adminAllOrderList());
	//	 System.out.println(orderService.orderProductReviewForm("5"));
		 
	 }
	 
	 /*@Test
	 public void inquiryTest() {
		 InquiryVO ivo = boardService.inquiryDetail("21");
		 System.out.println("고객문의 : " + ivo);
	 }*/
	 

}
