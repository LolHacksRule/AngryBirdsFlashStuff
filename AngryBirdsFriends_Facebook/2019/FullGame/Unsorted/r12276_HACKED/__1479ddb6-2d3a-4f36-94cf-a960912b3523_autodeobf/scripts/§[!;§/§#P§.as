package §[!;§
{
   import § h§.ErrorPopup;
   import §2E§.§=$3§;
   import §7"1§.§!"`§;
   import §7"1§.§"$D§;
   import §7"1§.§5"f§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §#P§ extends EventDispatcher implements §;#k§
   {
       
      
      private var §2"'§:§"$D§;
      
      private var §'!V§:Vector.<§<#a§>;
      
      public function §#P§()
      {
         super();
         this.§'!V§ = new Vector.<§<#a§>();
      }
      
      public function §&#I§() : void
      {
         if(this.§2"'§)
         {
            return;
         }
         this.§2"'§ = new §5"f§();
         this.§2"'§.addEventListener(Event.COMPLETE,this.§8$,§);
         this.§2"'§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/getdynamicnotifications");
         this.§2"'§.load(_loc1_);
      }
      
      protected function §8$,§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var obj:Object = null;
         var dynamicNotification:§<#a§ = null;
         var event:Event = param1;
         this.§'!V§.length = 0;
         try
         {
            if(this.§2"'§.data.hasOwnProperty("st"))
            {
               delete this.§2"'§.data["st"];
            }
            rawJSONData = this.§2"'§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error parsing JSON: " + §2"'§.data + "\nError code: " + §=$3§.§!$5§));
         }
         if(rawJSONData.errorCode)
         {
            return;
         }
         for each(obj in this.§2"'§.data)
         {
            dynamicNotification = new §<#a§(obj.sid);
            dynamicNotification.§9!§(obj);
            this.§'!V§.push(dynamicNotification);
         }
         this.§2"'§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function § #g§(param1:Array) : void
      {
         if(this.§2"'§)
         {
            return;
         }
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/markseendynamicnotifications");
         this.§2"'§ = new §5"f§();
         this.§2"'§.addEventListener(Event.COMPLETE,this.§?"<§);
         this.§2"'§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:Array = param1;
         _loc2_.data = JSON.stringify(_loc3_);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         this.§2"'§.load(_loc2_);
      }
      
      protected function §?"<§(param1:Event) : void
      {
         this.§2"'§ = null;
      }
      
      public function get §<$%§() : Vector.<§<#a§>
      {
         return this.§'!V§;
      }
   }
}
