package §;k§
{
   import §5§.§9$6§;
   import §?P§.ErrorPopup;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §-";§ extends EventDispatcher
   {
      
      private static const §?#J§:String = "/v3/dailyreward/checkReward?localTimeZoneOffset";
      
      private static const §^0§:String = "/v3/dailyreward/getReward?localTimeZoneOffset";
       
      
      private var § #g§:§1"V§;
      
      private var vo:§+"7§;
      
      public function §-";§()
      {
         super();
      }
      
      public function §<"C§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + §?#J§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§ #g§ = new §1"V§();
         this.§ #g§.addEventListener(Event.COMPLETE,this.§;"x§);
         this.§ #g§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ #g§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ #g§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§ #g§.load(_loc1_);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"V2--Daily reward error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §;"x§(param1:Event) : void
      {
         this.§ #g§.removeEventListener(Event.COMPLETE,this.§;"x§);
         if(param1.currentTarget.data.d)
         {
            this.vo = new §+"7§(param1.currentTarget.data);
            dispatchEvent(new §9$6§(§9$6§.§8#T§,this.vo));
         }
      }
      
      public function §="q§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + §^0§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§ #g§ = new §1"V§();
         this.§ #g§.addEventListener(Event.COMPLETE,this.§`F§);
         this.§ #g§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ #g§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ #g§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§ #g§.load(_loc1_);
      }
      
      private function §`F§(param1:Event) : void
      {
         this.§ #g§.removeEventListener(Event.COMPLETE,this.§`F§);
         if(param1.currentTarget.data.items)
         {
            this.vo.§@"W§(param1.currentTarget.data);
            dispatchEvent(new §9$6§(§9$6§.§#!0§,this.vo));
         }
         else
         {
            dispatchEvent(new §9$6§(§9$6§.§6!R§));
         }
      }
   }
}
