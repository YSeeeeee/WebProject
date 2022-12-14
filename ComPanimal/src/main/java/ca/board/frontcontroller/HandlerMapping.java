package ca.board.frontcontroller;

import java.util.HashMap;

import ca.board.controller.BoardFormController;
import ca.board.controller.BoardWriteController;
import ca.board.controller.BoardWriteFormController;
import ca.board.controller.CdetailFormController;
import ca.board.controller.CheckController;
import ca.board.controller.CheckFormController;
import ca.board.controller.CompanimalController;
import ca.board.controller.Controller;
import ca.board.controller.CupdateController;
import ca.board.controller.CupdateFormController;
import ca.board.controller.FdeleteController;
import ca.board.controller.CdeleteController;
import ca.board.controller.FdetailController;
import ca.board.controller.FdetailFormController;
import ca.board.controller.FindUpdateFormController;
import ca.board.controller.FindWriteController;
import ca.board.controller.FindWriteFormController;
import ca.board.controller.FindboardFormController;
import ca.board.controller.InsertCommentController;
import ca.board.controller.MainPageController;
import ca.board.controller.MapController;
import ca.board.controller.PetListController;
import ca.board.controller.PetimgController;
import ca.board.controller.QrCatchController;
import ca.board.controller.SearchController;
import ca.board.controller.SearchFormController;
import ca.board.controller.Search_qr_userController;
import ca.board.controller.SigninController;
import ca.board.controller.SigninFormController;
import ca.board.controller.SignupController;
import ca.board.controller.SignupFormController;
import ca.board.controller.checkIdController;
import ca.board.controller.commentDeleteController;
import ca.board.controller.logoutController;
import ca.board.controller.logoutFormController;
import ca.board.controller.user_detailController;
import ca.board.controller.user_detailFormController;
import ca.board.controller.user_updateController;
import ca.board.controller.user_updateFormController;

public class HandlerMapping {
	
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String,Controller>();
		mappings.put("/mainpage.do", new MainPageController());
		mappings.put("/companimal.do", new CompanimalController());
		mappings.put("/searchform.do", new SearchFormController());
		mappings.put("/search.do", new SearchController());
		mappings.put("/checkform.do", new CheckFormController());
		mappings.put("/check.do", new CheckController());
		mappings.put("/boardform.do", new BoardFormController());
		mappings.put("/boardwriteform.do", new BoardWriteFormController());
		mappings.put("/boardwrite.do", new BoardWriteController());
		mappings.put("/cdetailform.do", new CdetailFormController()); // ??????????????? 
		mappings.put("/findboardform.do", new FindboardFormController());
		mappings.put("/findwriteform.do", new FindWriteFormController());
		mappings.put("/findwrite.do", new FindWriteController());
		mappings.put("/fdetailform.do", new FdetailFormController());
		mappings.put("/fdetail.do", new FdetailController());
		mappings.put("/fdelete.do", new FdeleteController());
		mappings.put("/signinform.do", new SigninFormController());
		mappings.put("/signin.do", new SigninController());
		mappings.put("/signupform.do", new SignupFormController());
		mappings.put("/signup.do", new SignupController());
		mappings.put("/cdelete.do", new CdeleteController());// ??????
		mappings.put("/logout.do", new logoutController());
		mappings.put("/logoutform.do", new logoutFormController());
		mappings.put("/fupdateform.do", new FindUpdateFormController());
		mappings.put("/cupdateform.do", new CupdateFormController());
		mappings.put("/cupdate.do", new CupdateController());
		mappings.put("/user_update.do", new user_updateController());
		mappings.put("/user_updateform.do", new user_updateFormController());
		mappings.put("/check.do", new CheckController());
		mappings.put("/inputcomment.do", new InsertCommentController());
		mappings.put("/user_detail.do", new user_detailController());
		mappings.put("/user_detailform.do", new user_detailFormController());
		mappings.put("/petimg.do", new PetimgController());
		mappings.put("/commentdelete.do",new commentDeleteController());
		mappings.put("/catch.do", new QrCatchController());
		mappings.put("/map.do", new MapController());
		mappings.put("/petlist.do", new PetListController());
		mappings.put("/checkId.do", new checkIdController());
		mappings.put("/search_qr_user.do", new Search_qr_userController()); // QR ???????????? userDB????????? ??????
		
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
