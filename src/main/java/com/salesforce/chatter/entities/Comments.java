
package com.salesforce.chatter.entities;
import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.codehaus.jackson.annotate.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Comments{
	@JsonProperty(value="comments")
   	private List<Comment> comments;
   	private String currentPageUrl;
   	private String nextPageUrl;
   	private Number total;
   	

 	public List<Comment> getComments(){
		return this.comments;
	}
	public void setComments(List<Comment> comments){
		this.comments = comments;
	}
 	public String getCurrentPageUrl() {
		return currentPageUrl;
	}
	public void setCurrentPageUrl(String currentPageUrl) {
		this.currentPageUrl = currentPageUrl;
	}
	public String getNextPageUrl() {
		return nextPageUrl;
	}
	public void setNextPageUrl(String nextPageUrl) {
		this.nextPageUrl = nextPageUrl;
	}
	public Number getTotal(){
		return this.total;
	}
	public void setTotal(Number total){
		this.total = total;
	}
}
