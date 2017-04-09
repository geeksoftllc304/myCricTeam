package myCriceTeam.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import myCriceTeam.actionForm.AcEntity;
import myCriceTeam.actionForm.ArchivedContestsForm;
import myCriceTeam.actionForm.FinalRanksEntity;
import plugin.HibernatePlugin;

public class ArchivedContestsAction extends Action{
private static Log log =  LogFactory.getLog(LoginAction.class);
	
	final public static String HQL_FIND_ELEMENT =
		      "from AcEntity";
	
	AcEntity acEntity = null;
	//FinalRanksEntity finalRanksEntity =null;
    List acEntityList= null;
    SessionFactory factory ;
    Session session = null;

	
    
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ArchivedContestsForm acForm = (ArchivedContestsForm) form;
		System.out.println("in actionnnnnnnnnnnnnn");
		
		try{
		
		factory =  (SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
         session = factory.openSession();
         Transaction tx = session.beginTransaction();
         List<AcEntity> elements =  session.createQuery(HQL_FIND_ELEMENT).list();
         System.out.println("in actionnnnnnnnnnnnnn after query");
         acForm.setAcEntityList(elements);
         System.out.println("output::::"+acForm.getAcEntityList().get(1).getEntityID());
         
         
      } catch (HibernateException e) {
    	 
         log.error("Hibernate error", e);
         } finally {
            log.error("Hibernate exception encountered");
         session.close();
      }
	
		
		return mapping.findForward("archived");
	}	
	}
