package com.rovio.server
{
   import flash.net.URLRequest;
   
   public class URLRequestFactory
   {
      
      private static var randomId:String;
       
      
      public function URLRequestFactory()
      {
         super();
      }
      
      public static function getNonCachingURLRequest(url:String) : URLRequest
      {
         var hash:String = null;
         if(!randomId)
         {
            randomId = Math.round(Math.random() * int.MAX_VALUE).toString();
         }
         if(url != null)
         {
            hash = randomId + "-" + new Date().time.toString();
            if(url.indexOf("?") < 0)
            {
               url = url + "?hash=" + hash;
            }
            else
            {
               url = url + "&hash=" + hash;
            }
         }
         return new URLRequest(url);
      }
   }
}
