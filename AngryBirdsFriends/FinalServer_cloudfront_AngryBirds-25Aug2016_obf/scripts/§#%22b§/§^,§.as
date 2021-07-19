package §#"b§
{
   import §?"e§.§,##§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §^,§ extends EventDispatcher
   {
      
      private static const §1C§:String = "/v3/dailyreward/checkReward?localTimeZoneOffset";
      
      private static const §@b§:String = "/v3/dailyreward/getReward?localTimeZoneOffset";
       
      
      private var §"a§:§5$!§;
      
      private var vo:§["I§;
      
      public function §^,§()
      {
         super();
      }
      
      public function §9]§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §1C§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§"a§ = new §5$!§();
         this.§"a§.addEventListener(Event.COMPLETE,this.§=#a§);
         this.§"a§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"a§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"a§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§"a§.load(_loc1_);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Daily reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §=#a§(param1:Event) : void
      {
         this.§"a§.removeEventListener(Event.COMPLETE,this.§=#a§);
         if(param1.currentTarget.data.d)
         {
            this.vo = new §["I§(param1.currentTarget.data);
            dispatchEvent(new §,##§(§,##§.§-2§,this.vo));
         }
      }
      
      public function § $7§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §@b§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§"a§ = new §5$!§();
         this.§"a§.addEventListener(Event.COMPLETE,this.§@"Y§);
         this.§"a§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"a§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"a§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§"a§.load(_loc1_);
      }
      
      private function §@"Y§(param1:Event) : void
      {
         this.§"a§.removeEventListener(Event.COMPLETE,this.§@"Y§);
         if(param1.currentTarget.data.items)
         {
            this.vo.§ #o§(param1.currentTarget.data);
            dispatchEvent(new §,##§(§,##§.§>#v§,this.vo));
         }
         else
         {
            dispatchEvent(new §,##§(§,##§.§&"N§));
         }
      }
   }
}
