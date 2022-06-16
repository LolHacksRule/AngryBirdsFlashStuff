package §0!i§
{
   import §,l§.§+I§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §9@§.§1!j§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §7-§ extends EventDispatcher
   {
       
      
      private var §;9§:§3d§;
      
      public function §7-§(param1:String, param2:String, param3:int)
      {
         super();
         this.§@!j§(param1,param2,param3);
      }
      
      private function §@!j§(param1:String, param2:String, param3:int) : void
      {
         if(this.§;9§)
         {
            return;
         }
         this.§;9§ = new §3d§();
         this.§;9§.addEventListener(Event.COMPLETE,this.§17§);
         this.§;9§.addEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
         this.§;9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]4§);
         this.§;9§.addEventListener(§9G§.§33§,this.§]4§);
         this.§;9§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:URLRequest = §9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/draw/submitentry/" + param1 + "/" + param2 + "/" + param3);
         this.§;9§.load(_loc4_);
      }
      
      private function §17§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var e:Event = param1;
         this.§;9§.removeEventListener(Event.COMPLETE,this.§17§);
         this.§;9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
         this.§;9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]4§);
         this.§;9§.removeEventListener(§9G§.§33§,this.§]4§);
         try
         {
            rawJSONData = JSON.parse(this.§;9§.data);
         }
         catch(error:Error)
         {
            throw new Error("Error parsing JSON: " + §;9§.data,§1!j§.§%e§);
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            throw new Error("SubmitEntryToDraw error:" + rawJSONData.errorMessage);
         }
         dispatchEvent(new §]q§(§]q§.§@!u§,false,false,rawJSONData));
      }
      
      private function §]4§(param1:Event) : void
      {
         this.§;9§.removeEventListener(Event.COMPLETE,this.§17§);
         this.§;9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
         this.§;9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]4§);
         this.§;9§.removeEventListener(§9G§.§33§,this.§]4§);
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§#!o§();
         }
         this.§;9§ = null;
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
