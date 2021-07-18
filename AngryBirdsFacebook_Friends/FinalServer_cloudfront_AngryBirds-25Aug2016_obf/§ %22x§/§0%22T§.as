package § "x§
{
   import §>!#§.§@"$§;
   import §]$9§.§5$!§;
   import §]$9§.§5$5§;
   import §]$9§.§>J§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §0"T§ extends EventDispatcher implements §""!§
   {
       
      
      private var §;!G§:§5$5§;
      
      private var §'!D§:Vector.<§@#F§>;
      
      public function §0"T§()
      {
         super();
         this.§'!D§ = new Vector.<§@#F§>();
      }
      
      public function §@#S§() : void
      {
         if(this.§;!G§)
         {
            return;
         }
         this.§;!G§ = new §5$!§();
         this.§;!G§.addEventListener(Event.COMPLETE,this.§'"T§);
         this.§;!G§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/getdynamicnotifications");
         this.§;!G§.load(_loc1_);
      }
      
      protected function §'"T§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var obj:Object = null;
         var dynamicNotification:§@#F§ = null;
         var event:Event = param1;
         this.§'!D§.length = 0;
         try
         {
            if(this.§;!G§.data.hasOwnProperty("st"))
            {
               delete this.§;!G§.data["st"];
            }
            rawJSONData = this.§;!G§.data;
            if(rawJSONData.errorCode)
            {
               return;
            }
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §;!G§.data,§@"$§.§3"t§);
         }
         for each(obj in this.§;!G§.data)
         {
            dynamicNotification = new §@#F§(obj.sid);
            dynamicNotification.§?!?§(obj);
            this.§'!D§.push(dynamicNotification);
         }
         this.§;!G§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §^"&§(param1:Array) : void
      {
         if(this.§;!G§)
         {
            return;
         }
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/markseendynamicnotifications");
         this.§;!G§ = new §5$!§();
         this.§;!G§.addEventListener(Event.COMPLETE,this.§#!"§);
         this.§;!G§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:Array = param1;
         _loc2_.data = JSON.stringify(_loc3_);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         this.§;!G§.load(_loc2_);
      }
      
      protected function §#!"§(param1:Event) : void
      {
         this.§;!G§ = null;
      }
      
      public function get §-![§() : Vector.<§@#F§>
      {
         return this.§'!D§;
      }
   }
}
