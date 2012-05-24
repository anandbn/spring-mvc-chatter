package com.salesforce.chatter.entities;
import java.util.Date;
import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown=true)

public class Comment {

	private User parent;
   	private String id;
   	private String type;
	private User user;
   	private String clientInfo;
   	private String url;
   	private Body body;
   	private String createdDate;
   	private Likes likes;
   	private boolean myLike;
   	private boolean event;

   	@JsonIgnore
   	private String attachment;

 	public Body getBody(){
		return this.body;
	}
	public void setBody(Body body){
		this.body = body;
	}
 	public String getClientInfo(){
		return this.clientInfo;
	}
	public void setClientInfo(String clientInfo){
		this.clientInfo = clientInfo;
	}
 	public String getCreatedDate(){
		return this.createdDate;
	}
 	public Date getCreatedDateAsDt(){
		return javax.xml.bind.DatatypeConverter.parseDateTime(this.createdDate.substring(0,19)).getTime();

	}
	public void setCreatedDate(String createdDate){
		this.createdDate = createdDate;
	}
 	public boolean getEvent(){
		return this.event;
	}
	public void setEvent(boolean event){
		this.event = event;
	}
 	public String getAttachment() {
		return attachment;
	}
	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}
	public String getId(){
		return this.id;
	}
	public void setId(String id){
		this.id = id;
	}
 	public Likes getLikes(){
		return this.likes;
	}
	public void setLikes(Likes likes){
		this.likes = likes;
	}
 	public boolean isLikedByCurrentUser() {
		return myLike;
	}
	public void setIsLikedByCurrentUser(boolean isLikedByCurrentUser) {
		this.myLike = isLikedByCurrentUser;
	}
	
 	public String getType(){
		return this.type;
	}
	public void setType(String type){
		this.type = type;
	}
   	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
 	public User getParent(){
		return this.parent;
	}
	public void setParent(User parent){
		this.parent = parent;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User actor) {
		this.user = actor;
	}
}

