package §]]§
{
   import §,l§.§#!,§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §59§.§#l§;
   import §59§.§="C§;
   import §9@§.§1!j§;
   import §=!@§.§1!l§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §1"2§ extends EventDispatcher
   {
       
      
      private var §="Y§:§3d§;
      
      private var §>"#§:§="C§;
      
      private var §9!5§:§#l§;
      
      private var §5"W§:String;
      
      private var §]8§:int;
      
      private var §&G§:String;
      
      public function §1"2§(param1:§="C§, param2:§#l§)
      {
         super();
         this.§>"#§ = param1;
         this.§9!5§ = param2;
         this.§1r§();
      }
      
      private function §1r§() : void
      {
         if(this.§="Y§)
         {
            return;
         }
         this.§="Y§ = new §3d§();
         this.§="Y§.addEventListener(Event.COMPLETE,this.§^!P§);
         this.§="Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§>O§);
         this.§="Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>O§);
         this.§="Y§.addEventListener(§9G§.§33§,this.§>O§);
         this.§="Y§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc1_:URLRequest = §9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/buywithvc/" + this.§>"#§.id + "/" + this.§9!5§.§ !?§);
         this.§="Y§.load(_loc1_);
      }
      
      private function §^!P§(param1:Event) : void
      {
         var rawJSONData:Object = null;
         var changedItems:Array = null;
         var e:Event = param1;
         this.§="Y§.removeEventListener(Event.COMPLETE,this.§^!P§);
         this.§="Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>O§);
         this.§="Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>O§);
         this.§="Y§.removeEventListener(§9G§.§33§,this.§>O§);
         try
         {
            rawJSONData = JSON.parse(this.§="Y§.data);
            if(rawJSONData.purchaseId)
            {
               this.§5"W§ = rawJSONData.purchaseId;
            }
         }
         catch(error:Error)
         {
            throw new Error("Error parsing JSON: " + §="Y§.data,§1!j§.§%e§);
         }
         if(rawJSONData.errorMessage && rawJSONData.errorMessage is String)
         {
            this.§]8§ = rawJSONData.errorCode;
            this.§&G§ = rawJSONData.errorMessage;
         }
         else
         {
            changedItems = §#!,§.§&"5§.§6"M§(rawJSONData.items);
            dispatchEvent(new §1!l§(§1!l§.§9E§,false,false,changedItems));
         }
      }
      
      private function §>O§(param1:Event) : void
      {
         this.§="Y§.removeEventListener(Event.COMPLETE,this.§^!P§);
         this.§="Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>O§);
         this.§="Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>O§);
         this.§="Y§.removeEventListener(§9G§.§33§,this.§>O§);
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§#!o§();
         }
         this.§="Y§ = null;
      }
      
      public function get §;"R§() : §="C§
      {
         return this.§>"#§;
      }
      
      public function get §5j§() : §#l§
      {
         return this.§9!5§;
      }
      
      public function get orderId() : String
      {
         return this.§5"W§;
      }
      
      public function get errorCode() : int
      {
         return this.§]8§;
      }
      
      public function get errorMessage() : String
      {
         return this.§&G§;
      }
   }
}
