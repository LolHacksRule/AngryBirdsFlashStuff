package §4#O§
{
   import §+#B§.§ "f§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>"Q§.§7"2§;
   import §?!N§.ErrorPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<!H§ extends EventDispatcher implements §4!q§
   {
       
      
      private var §,">§:§7"2§;
      
      private var §,!`§:Vector.<§="j§>;
      
      public function §<!H§()
      {
         super();
         this.§,!`§ = new Vector.<§="j§>();
      }
      
      public function §5>§() : void
      {
         if(this.§,">§)
         {
            return;
         }
         this.§,">§ = new §'!n§();
         this.§,">§.addEventListener(Event.COMPLETE,this.§;!s§);
         this.§,">§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/getdynamicnotifications");
         this.§,">§.load(_loc1_);
      }
      
      protected function §;!s§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var obj:Object = null;
         var dynamicNotification:§="j§ = null;
         var event:Event = param1;
         this.§,!`§.length = 0;
         try
         {
            if(this.§,">§.data.hasOwnProperty("st"))
            {
               delete this.§,">§.data["st"];
            }
            rawJSONData = this.§,">§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error parsing JSON: " + §,">§.data + "\nError code: " + § "f§.§[$3§));
         }
         if(rawJSONData.errorCode)
         {
            return;
         }
         for each(obj in this.§,">§.data)
         {
            dynamicNotification = new §="j§(obj.sid);
            dynamicNotification.§&#8§(obj);
            this.§,!`§.push(dynamicNotification);
         }
         this.§,">§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §!"t§(param1:Array) : void
      {
         if(this.§,">§)
         {
            return;
         }
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/markseendynamicnotifications");
         this.§,">§ = new §'!n§();
         this.§,">§.addEventListener(Event.COMPLETE,this.§;"Z§);
         this.§,">§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:Array = param1;
         _loc2_.data = JSON.stringify(_loc3_);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         this.§,">§.load(_loc2_);
      }
      
      protected function §;"Z§(param1:Event) : void
      {
         this.§,">§ = null;
      }
      
      public function get § @§() : Vector.<§="j§>
      {
         return this.§,!`§;
      }
   }
}
