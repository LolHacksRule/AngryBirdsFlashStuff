package §8"§
{
   import §'$9§.§8!L§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.ErrorPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §^3§ extends EventDispatcher
   {
      
      private static const § $%§:String = "/v3/dailyreward/checkReward?localTimeZoneOffset";
      
      private static const §61§:String = "/v3/dailyreward/getReward?localTimeZoneOffset";
       
      
      private var §[z§:§'!n§;
      
      private var vo:§ l§;
      
      public function §^3§()
      {
         super();
      }
      
      public function §""U§() : void
      {
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + § $%§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§[z§ = new §'!n§();
         this.§[z§.addEventListener(Event.COMPLETE,this.§?#6§);
         this.§[z§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[z§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[z§.load(_loc1_);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"V2--Daily reward error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §?#6§(param1:Event) : void
      {
         this.§[z§.removeEventListener(Event.COMPLETE,this.§?#6§);
         if(param1.currentTarget.data.d)
         {
            this.vo = new § l§(param1.currentTarget.data);
            dispatchEvent(new §8!L§(§8!L§.§!&§,this.vo));
         }
      }
      
      public function §&Z§() : void
      {
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + §61§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§[z§ = new §'!n§();
         this.§[z§.addEventListener(Event.COMPLETE,this.§!"L§);
         this.§[z§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[z§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[z§.load(_loc1_);
      }
      
      private function §!"L§(param1:Event) : void
      {
         this.§[z§.removeEventListener(Event.COMPLETE,this.§!"L§);
         if(param1.currentTarget.data.items)
         {
            this.vo.§!#X§(param1.currentTarget.data);
            dispatchEvent(new §8!L§(§8!L§.§+!I§,this.vo));
         }
         else
         {
            dispatchEvent(new §8!L§(§8!L§.§]#5§));
         }
      }
   }
}
