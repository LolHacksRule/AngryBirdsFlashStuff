package §1!3§
{
   import §&!_§.§+#`§;
   import §1L§.§!!o§;
   import §1L§.§9#f§;
   import §1L§.§;#&§;
   import §>z§.ErrorPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class § !w§ extends EventDispatcher implements § each§
   {
       
      
      private var §9#I§:§9#f§;
      
      private var §@"w§:Vector.<§!#1§>;
      
      public function § !w§()
      {
         super();
         this.§@"w§ = new Vector.<§!#1§>();
      }
      
      public function §8#Z§() : void
      {
         if(this.§9#I§)
         {
            return;
         }
         this.§9#I§ = new §!!o§();
         this.§9#I§.addEventListener(Event.COMPLETE,this.§#5§);
         this.§9#I§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/getdynamicnotifications");
         this.§9#I§.load(_loc1_);
      }
      
      protected function §#5§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var obj:Object = null;
         var dynamicNotification:§!#1§ = null;
         var event:Event = param1;
         this.§@"w§.length = 0;
         try
         {
            if(this.§9#I§.data.hasOwnProperty("st"))
            {
               delete this.§9#I§.data["st"];
            }
            rawJSONData = this.§9#I§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error parsing JSON: " + §9#I§.data + "\nError code: " + §+#`§.§ !R§));
         }
         if(rawJSONData.errorCode)
         {
            return;
         }
         for each(obj in this.§9#I§.data)
         {
            dynamicNotification = new §!#1§(obj.sid);
            dynamicNotification.§!!R§(obj);
            this.§@"w§.push(dynamicNotification);
         }
         this.§9#I§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §7I§(param1:Array) : void
      {
         if(this.§9#I§)
         {
            return;
         }
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/markseendynamicnotifications");
         this.§9#I§ = new §!!o§();
         this.§9#I§.addEventListener(Event.COMPLETE,this.§%$%§);
         this.§9#I§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:Array = param1;
         _loc2_.data = JSON.stringify(_loc3_);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         this.§9#I§.load(_loc2_);
      }
      
      protected function §%$%§(param1:Event) : void
      {
         this.§9#I§ = null;
      }
      
      public function get §!u§() : Vector.<§!#1§>
      {
         return this.§@"w§;
      }
   }
}
