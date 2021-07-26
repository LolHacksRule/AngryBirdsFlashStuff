package §5,§
{
   import §#"R§.§?""§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §?Q§.ErrorPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §!"t§ extends EventDispatcher
   {
      
      private static const §>]§:String = "/v3/dailyreward/checkReward?localTimeZoneOffset";
      
      private static const §'x§:String = "/v3/dailyreward/getReward?localTimeZoneOffset";
       
      
      private var §]!O§:§-$C§;
      
      private var vo:§,$-§;
      
      public function §!"t§()
      {
         super();
      }
      
      public function §#s§() : void
      {
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §>]§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§]!O§ = new §-$C§();
         this.§]!O§.addEventListener(Event.COMPLETE,this.§%!^§);
         this.§]!O§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]!O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]!O§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]!O§.load(_loc1_);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"V2--Daily reward error:" + param1.text + " id: " + param1.errorID));
      }
      
      private function §%!^§(param1:Event) : void
      {
         this.§]!O§.removeEventListener(Event.COMPLETE,this.§%!^§);
         if(param1.currentTarget.data.d)
         {
            this.vo = new §,$-§(param1.currentTarget.data);
            dispatchEvent(new §?""§(§?""§.§'I§,this.vo));
         }
      }
      
      public function §=#'§() : void
      {
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §'x§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§]!O§ = new §-$C§();
         this.§]!O§.addEventListener(Event.COMPLETE,this.§@"o§);
         this.§]!O§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]!O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]!O§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]!O§.load(_loc1_);
      }
      
      private function §@"o§(param1:Event) : void
      {
         this.§]!O§.removeEventListener(Event.COMPLETE,this.§@"o§);
         if(param1.currentTarget.data.items)
         {
            this.vo.§[`§(param1.currentTarget.data);
            dispatchEvent(new §?""§(§?""§.§#§,this.vo));
         }
         else
         {
            dispatchEvent(new §?""§(§?""§.§3!P§));
         }
      }
   }
}
