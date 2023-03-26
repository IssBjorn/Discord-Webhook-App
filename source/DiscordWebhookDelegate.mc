using Toybox.Communications;
using Toybox.Application;
using Toybox.WatchUi;
using Toybox;

class DiscordWebhookDelegate extends WatchUi.BehaviorDelegate {
    public var active = true;

    function initialize() {
        BehaviorDelegate.initialize();
    }
    
    function onTap(event){
    	return sendRequest();
    }
        
    
    function onKey(event){
        return sendRequest();
    }
	
	function sendRequest(){
	    {
	        var url = Application.Properties.getValue("webhookUrl");
	  
	        var params = {
	            "username" => Application.Properties.getValue("username"),
	            "avatar_url" => Application.Properties.getValue("avatarUrl"),
	            "content" => Application.Properties.getValue("content"),
	            "embeds" => [],
	            "components" => []
	        };
	  
	        var options = {                                            
  	 	        :method => Communications.HTTP_REQUEST_METHOD_POST,
   		        :headers => {"Content-Type" => Communications.REQUEST_CONTENT_TYPE_JSON},                                                    
   		        :responseType => Communications.HTTP_RESPONSE_CONTENT_TYPE_JSON
 	        };
	  
	        Communications.makeWebRequest(url, params, options, method(:onResponse));
	       
	    }
	   
	}
	
	function onResponse(status, data){
	    return true;
	}
}