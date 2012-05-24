package com.example.service;

import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Service;

import com.force.sdk.oauth.context.ForceSecurityContextHolder;
import com.salesforce.chatter.entities.ChatterFeed;

@Service
public class ChatterFeedServiceImpl implements ChatterFeedService {

    private String getApiSessionId() {
        return ForceSecurityContextHolder.get().getSessionId();
    }
 
    private String getApiEndpoint() {
        return ForceSecurityContextHolder.get().getEndPointHost();
    }
	@Override
	public ChatterFeed getMyChatterFeed() {
		String feedUrl = getApiEndpoint()+"/services/data/v24.0/chatter/feeds/news/me/feed-items";
		HttpGet chatterFeed = new HttpGet(feedUrl);
		chatterFeed.setHeader("Authorization", "OAuth "+getApiSessionId());
		chatterFeed.setHeader("Content-Type", "application/json");
		DefaultHttpClient httpclient = new DefaultHttpClient();

		try {
            ResponseHandler<String> responseHandler = new BasicResponseHandler();
            String responseBody = httpclient.execute(chatterFeed, responseHandler);
            System.out.println("--------------------------");
            System.out.println(responseBody);
            System.out.println("--------------------------");
            ObjectMapper mapper = new ObjectMapper();
            ChatterFeed feed = mapper.readValue(responseBody, ChatterFeed.class);
            return feed;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		} 
	}

}
