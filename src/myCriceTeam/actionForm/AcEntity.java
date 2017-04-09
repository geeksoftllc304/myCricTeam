package myCriceTeam.actionForm;

public class AcEntity {

	private int entityID;
	private String date;
	private int matchNumber;
	private String team1;
	private String team2;
	private int prizeValue;
	
	public int getEntityID() {
		return entityID;
	}
	public void setEntityID(int entityID) {
		this.entityID = entityID;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getMatchNumber() {
		return matchNumber;
	}
	public void setMatchNumber(int matchNumber) {
		this.matchNumber = matchNumber;
	}
	public String getTeam1() {
		return team1;
	}
	public void setTeam1(String team1) {
		this.team1 = team1;
	}
	public String getTeam2() {
		return team2;
	}
	public void setTeam2(String team2) {
		this.team2 = team2;
	}
	public int getPrizeValue() {
		return prizeValue;
	}
	public void setPrizeValue(int prizeValue) {
		this.prizeValue = prizeValue;
	}

}
