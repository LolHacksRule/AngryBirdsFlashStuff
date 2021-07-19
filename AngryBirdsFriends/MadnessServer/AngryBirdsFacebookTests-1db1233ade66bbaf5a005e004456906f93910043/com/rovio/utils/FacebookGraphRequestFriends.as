package com.rovio.utils
{
   public class FacebookGraphRequestFriends extends FacebookGraphRequest
   {
       
      
      public function FacebookGraphRequestFriends(command:String, parameters:Object = null)
      {
         super(command,parameters);
      }
      
      public static function set accessToken(value:String) : void
      {
         sAccessToken = value;
      }
      
      override protected function getGraphURL() : String
      {
         return GRAPH_URL + AngryBirdsFacebook.FB_API_VERSION + "/" + mCommand;
      }
   }
}
