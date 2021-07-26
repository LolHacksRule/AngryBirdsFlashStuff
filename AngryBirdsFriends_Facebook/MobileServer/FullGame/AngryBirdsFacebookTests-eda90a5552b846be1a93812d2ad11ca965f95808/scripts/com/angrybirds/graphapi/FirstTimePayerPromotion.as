package com.angrybirds.graphapi
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class FirstTimePayerPromotion
   {
       
      
      private var mIsEligible:Boolean;
      
      private var mLoader:URLLoader;
      
      public function FirstTimePayerPromotion()
      {
         super();
      }
      
      public function get isEligible() : Boolean
      {
         return this.mIsEligible;
      }
      
      public function set isEligible(value:Boolean) : void
      {
         this.mIsEligible = value;
      }
      
      public function fetchIsPlayerEligible() : URLLoader
      {
         var urlReq:URLRequest = AngryBirdsFacebook.sSingleton.graphAPICaller.createGraphAPIRequest("https://graph.facebook.com/" + AngryBirdsFacebook.FB_API_VERSION + "/me?fields=is_eligible_promo&");
         if(!this.mLoader)
         {
            this.mLoader = new URLLoader(urlReq);
            this.mLoader.addEventListener(Event.COMPLETE,this.onComplete);
            this.mLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         }
         return this.mLoader;
      }
      
      private function onComplete(e:Event) : void
      {
         var jsonOb:Object = JSON.parse(e.target.data);
         if(jsonOb.is_eligible_promo)
         {
            this.isEligible = true;
         }
         else
         {
            this.isEligible = false;
         }
      }
      
      private function onError(e:IOErrorEvent) : void
      {
      }
   }
}
