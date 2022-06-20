package §^!&§
{
   import § h§.ErrorPopup;
   import §5#<§.§-"q§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §2#0§ extends EventDispatcher
   {
      
      private static const §2"$§:String = "/v3/dailyreward/checkReward?localTimeZoneOffset";
      
      private static const §49§:String = "/v3/dailyreward/getReward?localTimeZoneOffset";
       
      
      private var §]#_§:§5"f§;
      
      private var vo:§'-§;
      
      public function §2#0§()
      {
         super();
      }
      
      public function §?#2§() : void
      {
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §2"$§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§]#_§ = new §5"f§();
         this.§]#_§.addEventListener(Event.COMPLETE,this.§%Y§);
         this.§]#_§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]#_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]#_§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]#_§.load(_loc1_);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"V2--Daily reward error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §%Y§(param1:Event) : void
      {
         this.§]#_§.removeEventListener(Event.COMPLETE,this.§%Y§);
         if(param1.currentTarget.data.d)
         {
            this.vo = new §'-§(param1.currentTarget.data);
            dispatchEvent(new §-"q§(§-"q§.§2"9§,this.vo));
         }
      }
      
      public function §;!§() : void
      {
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §49§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§]#_§ = new §5"f§();
         this.§]#_§.addEventListener(Event.COMPLETE,this.§["t§);
         this.§]#_§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]#_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]#_§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]#_§.load(_loc1_);
      }
      
      private function §["t§(param1:Event) : void
      {
         this.§]#_§.removeEventListener(Event.COMPLETE,this.§["t§);
         if(param1.currentTarget.data.items)
         {
            this.vo.§"$§(param1.currentTarget.data);
            dispatchEvent(new §-"q§(§-"q§.§[!P§,this.vo));
         }
         else
         {
            dispatchEvent(new §-"q§(§-"q§.§,"Q§));
         }
      }
   }
}
