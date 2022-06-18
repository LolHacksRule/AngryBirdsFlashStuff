package §?]§
{
   import § $%§.§%§;
   import § $%§.§0#`§;
   import § $%§.§4"v§;
   import §6V§.§4!v§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §1v§ extends EventDispatcher implements §?#K§
   {
       
      
      private var §]!5§:§0#`§;
      
      private var §^"3§:Vector.<§0!B§>;
      
      public function §1v§()
      {
         super();
         this.§^"3§ = new Vector.<§0!B§>();
      }
      
      public function §`c§() : void
      {
         if(this.§]!5§)
         {
            return;
         }
         this.§]!5§ = new §4"v§();
         this.§]!5§.addEventListener(Event.COMPLETE,this.§8$=§);
         this.§]!5§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/getdynamicnotifications");
         this.§]!5§.load(_loc1_);
      }
      
      protected function §8$=§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var obj:Object = null;
         var dynamicNotification:§0!B§ = null;
         var event:Event = param1;
         this.§^"3§.length = 0;
         try
         {
            if(this.§]!5§.data.hasOwnProperty("st"))
            {
               delete this.§]!5§.data["st"];
            }
            rawJSONData = this.§]!5§.data;
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §]!5§.data,§4!v§.§&"a§);
         }
         if(rawJSONData.errorCode)
         {
            return;
         }
         for each(obj in this.§]!5§.data)
         {
            dynamicNotification = new §0!B§(obj.sid);
            dynamicNotification.§1#M§(obj);
            this.§^"3§.push(dynamicNotification);
         }
         this.§]!5§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §=!!§(param1:Array) : void
      {
         if(this.§]!5§)
         {
            return;
         }
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/markseendynamicnotifications");
         this.§]!5§ = new §4"v§();
         this.§]!5§.addEventListener(Event.COMPLETE,this.§1""§);
         this.§]!5§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:Array = param1;
         _loc2_.data = JSON.stringify(_loc3_);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         this.§]!5§.load(_loc2_);
      }
      
      protected function §1""§(param1:Event) : void
      {
         this.§]!5§ = null;
      }
      
      public function get §;G§() : Vector.<§0!B§>
      {
         return this.§^"3§;
      }
   }
}
