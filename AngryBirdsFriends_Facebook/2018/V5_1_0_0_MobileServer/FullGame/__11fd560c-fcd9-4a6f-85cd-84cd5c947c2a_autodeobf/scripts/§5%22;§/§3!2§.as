package §5";§
{
   import §?P§.ErrorPopup;
   import §@V§.§1"V§;
   import §@V§.§6"§;
   import §@V§.§["0§;
   import §`7§.§[$-§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §3!2§ extends EventDispatcher implements §7"s§
   {
       
      
      private var §0V§:§6"§;
      
      private var §[#k§:Vector.<§6#X§>;
      
      public function §3!2§()
      {
         super();
         this.§[#k§ = new Vector.<§6#X§>();
      }
      
      public function §"D§() : void
      {
         if(this.§0V§)
         {
            return;
         }
         this.§0V§ = new §1"V§();
         this.§0V§.addEventListener(Event.COMPLETE,this.§&J§);
         this.§0V§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/getdynamicnotifications");
         this.§0V§.load(_loc1_);
      }
      
      protected function §&J§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var obj:Object = null;
         var dynamicNotification:§6#X§ = null;
         var event:Event = param1;
         this.§[#k§.length = 0;
         try
         {
            if(this.§0V§.data.hasOwnProperty("st"))
            {
               delete this.§0V§.data["st"];
            }
            rawJSONData = this.§0V§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error parsing JSON: " + §0V§.data + "\nError code: " + §[$-§.§&!X§));
         }
         if(rawJSONData.errorCode)
         {
            return;
         }
         for each(obj in this.§0V§.data)
         {
            dynamicNotification = new §6#X§(obj.sid);
            dynamicNotification.§'"3§(obj);
            this.§[#k§.push(dynamicNotification);
         }
         this.§0V§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §"" §(param1:Array) : void
      {
         if(this.§0V§)
         {
            return;
         }
         var _loc2_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/markseendynamicnotifications");
         this.§0V§ = new §1"V§();
         this.§0V§.addEventListener(Event.COMPLETE,this.§`" §);
         this.§0V§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:Array = param1;
         _loc2_.data = JSON.stringify(_loc3_);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         this.§0V§.load(_loc2_);
      }
      
      protected function §`" §(param1:Event) : void
      {
         this.§0V§ = null;
      }
      
      public function get §%"=§() : Vector.<§6#X§>
      {
         return this.§[#k§;
      }
   }
}
