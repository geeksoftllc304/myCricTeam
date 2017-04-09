package myCriceTeam.actionForm;

import java.util.List;

import org.apache.struts.action.ActionForm;

public class ArchivedContestsForm extends ActionForm{
	
	private List<AcEntity> acEntityList;

	public List<AcEntity> getAcEntityList() {
		return acEntityList;
	}

	public void setAcEntityList(List<AcEntity> acEntityList) {
		this.acEntityList = acEntityList;
	}
	
	

}
