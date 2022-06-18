package §>!!§
{
   import §#"4§.§@$7§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §4S§.§@§;
   import §?Q§.ErrorPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §#D§ extends EventDispatcher implements §,!l§
   {
       
      
      private var §&!$§:§@#1§;
      
      private var §#H§:Vector.<§<#^§>;
      
      public function §#D§()
      {
         super();
         this.§#H§ = new Vector.<§<#^§>();
      }
      
      public function §@"7§() : void
      {
         if(this.§&!$§)
         {
            return;
         }
         this.§&!$§ = new §-$C§();
         this.§&!$§.addEventListener(Event.COMPLETE,this.§&9§);
         this.§&!$§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/getdynamicnotifications");
         this.§&!$§.load(_loc1_);
      }
      
      protected function §&9§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var obj:Object = null;
         var dynamicNotification:§<#^§ = null;
         var event:Event = param1;
         this.§#H§.length = 0;
         try
         {
            if(this.§&!$§.data.hasOwnProperty("st"))
            {
               delete this.§&!$§.data["st"];
            }
            rawJSONData = this.§&!$§.data;
         }
         catch(e:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error parsing JSON: " + §&!$§.data + "\nError code: " + §@$7§.§8A§));
         }
         if(rawJSONData.errorCode)
         {
            return;
         }
         for each(obj in this.§&!$§.data)
         {
            dynamicNotification = new §<#^§(obj.sid);
            dynamicNotification.§9!$§(obj);
            this.§#H§.push(dynamicNotification);
         }
         this.§&!$§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §]>§(param1:Array) : void
      {
         if(this.§&!$§)
         {
            return;
         }
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/markseendynamicnotifications");
         this.§&!$§ = new §-$C§();
         this.§&!$§.addEventListener(Event.COMPLETE,this.§"#h§);
         this.§&!$§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc3_:Array = param1;
         _loc2_.data = JSON.stringify(_loc3_);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         this.§&!$§.load(_loc2_);
      }
      
      protected function §"#h§(param1:Event) : void
      {
         this.§&!$§ = null;
      }
      
      public function get §0$,§() : Vector.<§<#^§>
      {
         return this.§#H§;
      }
   }
}
