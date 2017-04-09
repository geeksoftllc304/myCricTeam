package myCriceTeam.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import myCriceTeam.actionForm.AcEntity;
import myCriceTeam.actionForm.ArchivedContestsForm;
import myCriceTeam.actionForm.FinalRanksEntity;
import myCriceTeam.actionForm.ListPageForm;
import plugin.HibernatePlugin;

public class ListPageAction extends Action{
	
private static Log log =  LogFactory.getLog(LoginAction.class);
	
	final public static String HQL_FIND_ELEMENT =
		      "from FinalRanksEntity";
	
	//AcEntity acEntity = null;
	FinalRanksEntity finalRanksEntity =null;
    //List acEntityList= null;
    SessionFactory factory ;
    Session session = null;

	
    
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ListPageForm listPageForm = (ListPageForm) form;
		System.out.println("in listpage actionnnnnnnnnnnnnn");
		
		List<FinalRanksEntity> elements = new ArrayList<FinalRanksEntity>();
		try{
		
		factory =  (SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
         session = factory.openSession();
         
          elements =  session.createQuery(HQL_FIND_ELEMENT).list();
         System.out.println("in list page actionnnnnnnnnnnnnn after query");
         //lpForm.setFinalRanksEntityList(elements);;
        // System.out.println("output::::"+lpForm.getFinalRanksEntityList().get(3).getPlayerName());
         
         
      } catch (HibernateException e) {
    	 
         log.error("Hibernate error", e);
         } finally {
            log.error("Hibernate exception encountered");
        // session.close();
      }
		
		
		request.getSession().setAttribute("fRlist",elements);
		
		return mapping.findForward("listPageShow");
	}	

}
