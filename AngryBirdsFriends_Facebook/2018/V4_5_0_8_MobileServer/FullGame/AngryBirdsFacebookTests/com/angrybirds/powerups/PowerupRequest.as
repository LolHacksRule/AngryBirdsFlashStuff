package com.angrybirds.powerups
{
   import com.rovio.server.RetryingURLLoader;
   
   public class PowerupRequest
   {
       
      
      public var powerupName:String;
      
      public var powerupCount:Array;
      
      public var urlLoader:RetryingURLLoader;
      
      public function PowerupRequest(powerupName:String, powerupCount:Array, urlLoader:RetryingURLLoader = null)
      {
         super();
         this.powerupName = powerupName;
         this.powerupCount = powerupCount;
         this.urlLoader = urlLoader;
      }
   }
}
