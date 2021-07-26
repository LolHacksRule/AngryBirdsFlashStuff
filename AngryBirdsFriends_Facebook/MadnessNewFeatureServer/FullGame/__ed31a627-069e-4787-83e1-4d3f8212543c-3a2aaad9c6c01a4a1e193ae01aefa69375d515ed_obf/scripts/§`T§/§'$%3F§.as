package §`T§
{
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §8"g§.§^#$§;
   import §>z§.ErrorPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §'$?§ extends EventDispatcher
   {
      
      private static const §3$C§:String = "/v3/dailyreward/checkReward?localTimeZoneOffset";
      
      private static const §9K§:String = "/v3/dailyreward/getReward?localTimeZoneOffset";
       
      
      private var §!#+§:§!!o§;
      
      private var vo:§%";§;
      
      public function §'$?§()
      {
         super();
      }
      
      public function §<$>§() : void
      {
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §3$C§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§!#+§ = new §!!o§();
         this.§!#+§.addEventListener(Event.COMPLETE,this.§?"X§);
         this.§!#+§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!#+§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§!#+§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§!#+§.load(_loc1_);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"V2--Daily reward error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §?"X§(param1:Event) : void
      {
         this.§!#+§.removeEventListener(Event.COMPLETE,this.§?"X§);
         if(param1.currentTarget.data.d)
         {
            this.vo = new §%";§(param1.currentTarget.data);
            dispatchEvent(new §^#$§(§^#$§.§>"o§,this.vo));
         }
      }
      
      public function §4o§() : void
      {
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §9K§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§!#+§ = new §!!o§();
         this.§!#+§.addEventListener(Event.COMPLETE,this.§2!'§);
         this.§!#+§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!#+§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§!#+§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§!#+§.load(_loc1_);
      }
      
      private function §2!'§(param1:Event) : void
      {
         this.§!#+§.removeEventListener(Event.COMPLETE,this.§2!'§);
         if(param1.currentTarget.data.items)
         {
            this.vo.§9Y§(param1.currentTarget.data);
            dispatchEvent(new §^#$§(§^#$§.§[Y§,this.vo));
         }
         else
         {
            dispatchEvent(new §^#$§(§^#$§.§8"!§));
         }
      }
   }
}
