package com.maoyan.bean;

import java.io.Serializable;

public class FilmBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String enname;
	//播放次数
	private String playerCount;
	//播放类型：3D 3DMAX 2DMAX
	private int playType;
	//上映时间
	private String showTime;
	//时长
	private int timeLength;
	//剧情简介
	private String synopsis;
	//票房
	private double boxOffice;
	//用户评分
	private double userGrade;
	//用户评分的人数
	private int userCount;
	//专业评分
	private double proGrade;
	//专业评分的人数
	private int proCount;
	//图片路径
	private String indexImage;
	//是否为热映影片 0-否 1-是
	private int hot;
	//是否为待映影片 0-否 1-是
	private int soon;
	//想看的人数
	private int wantWatch;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEnname() {
		return enname;
	}
	public void setEnname(String enname) {
		this.enname = enname;
	}
	public String getPlayerCount() {
		return playerCount;
	}
	public void setPlayerCount(String playerCount) {
		this.playerCount = playerCount;
	}
	public int getPlayType() {
		return playType;
	}
	public void setPlayType(int playType) {
		this.playType = playType;
	}
	public String getShowTime() {
		return showTime;
	}
	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}
	public int getTimeLength() {
		return timeLength;
	}
	public void setTimeLength(int timeLength) {
		this.timeLength = timeLength;
	}
	public String getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	public double getBoxOffice() {
		return boxOffice;
	}
	public void setBoxOffice(double boxOffice) {
		this.boxOffice = boxOffice;
	}
	public double getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(double userGrade) {
		this.userGrade = userGrade;
	}
	public int getUserCount() {
		return userCount;
	}
	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}
	public double getProGrade() {
		return proGrade;
	}
	public void setProGrade(double proGrade) {
		this.proGrade = proGrade;
	}
	public int getProCount() {
		return proCount;
	}
	public void setProCount(int proCount) {
		this.proCount = proCount;
	}
	public String getIndexImage() {
		return indexImage;
	}
	public void setIndexImage(String indexImage) {
		this.indexImage = indexImage;
	}
	public int getHot() {
		return hot;
	}
	public void setHot(int hot) {
		this.hot = hot;
	}
	public int getSoon() {
		return soon;
	}
	public void setSoon(int soon) {
		this.soon = soon;
	}
	public int getWantWatch() {
		return wantWatch;
	}
	public void setWantWatch(int wantWatch) {
		this.wantWatch = wantWatch;
	}
	@Override
	public String toString() {
		return "FilmBean [id=" + id + ", name=" + name + ", enname=" + enname + ", playerCount=" + playerCount
				+ ", playType=" + playType + ", showTime=" + showTime + ", timeLength=" + timeLength + ", synopsis="
				+ synopsis + ", boxOffice=" + boxOffice + ", userGrade=" + userGrade + ", userCount=" + userCount
				+ ", proGrade=" + proGrade + ", proCount=" + proCount + ", indexImage=" + indexImage + ", hot=" + hot
				+ ", soon=" + soon + ", wantWatch=" + wantWatch + "]";
	}

	
	
}
