package §4R§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §?!@§.§%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §=#0§ extends EventDispatcher
   {
      
      private static const §"#?§:String = "/v3/dailyreward/checkReward?localTimeZoneOffset";
      
      private static const §@"F§:String = "/v3/dailyreward/getReward?localTimeZoneOffset";
       
      
      private var §1"3§:§4"v§;
      
      private var vo:§-#`§;
      
      public function §=#0§()
      {
         super();
      }
      
      public function §6!Z§() : void
      {
         var _loc1_:URLRequest = § $%§.§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §"#?§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§1"3§ = new §4"v§();
         this.§1"3§.addEventListener(Event.COMPLETE,this.§@K§);
         this.§1"3§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§1"3§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§1"3§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1"3§.load(_loc1_);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Daily reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §@K§(param1:Event) : void
      {
         this.§1"3§.removeEventListener(Event.COMPLETE,this.§@K§);
         if(param1.currentTarget.data.d)
         {
            this.vo = new §-#`§(param1.currentTarget.data);
            dispatchEvent(new §?!@§.§%#2§(§?!@§.§%#2§.§?#=§,this.vo));
         }
      }
      
      public function §`#K§() : void
      {
         var _loc1_:URLRequest = § $%§.§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §@"F§ + "=" + (new Date().timezoneOffset / 60).toString());
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§1"3§ = new §4"v§();
         this.§1"3§.addEventListener(Event.COMPLETE,this.§"!4§);
         this.§1"3§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§1"3§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§1"3§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1"3§.load(_loc1_);
      }
      
      private function §"!4§(param1:Event) : void
      {
         this.§1"3§.removeEventListener(Event.COMPLETE,this.§"!4§);
         if(param1.currentTarget.data.items)
         {
            this.vo.§;!f§(param1.currentTarget.data);
            dispatchEvent(new §?!@§.§%#2§(§?!@§.§%#2§.§6"?§,this.vo));
         }
         else
         {
            dispatchEvent(new §?!@§.§%#2§(§?!@§.§%#2§.§5#p§));
         }
      }
   }
}
