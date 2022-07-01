package §45§
{
   import §;X§.§ do§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §<P§ extends §6!^§
   {
       
      
      private var §7!Y§:Vector.<URLLoader>;
      
      public function §<P§(param1:String, param2:Number)
      {
         this.§7!Y§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§@"'§.§'!j§ == "Google")
         {
            _loc3_ = new URLRequest(§`!k§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§9d§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§,! §);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§&c§);
            _loc4_.load(_loc3_);
            this.§7!Y§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§`!k§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§9d§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§,! §);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§&c§);
            _loc4_.load(_loc3_);
            this.§7!Y§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §4!§();
         this.§@n§();
      }
      
      private function §@n§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§7!Y§)
         {
            this.§0L§(_loc1_);
            this.§+2§(_loc1_);
         }
         this.§7!Y§ = new Vector.<URLLoader>();
      }
      
      private function §9d§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §,! §(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§0L§(param1.target as URLLoader);
         this.§+2§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            § do§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §'1§(§;!4§.§8I§((param1.target as URLLoader).data));
      }
      
      private function §&c§(param1:IOErrorEvent) : void
      {
         this.§0L§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§+2§(param1.target as URLLoader);
         § do§.log((param1.target as URLLoader).data);
         § do§.log("[HTTPConnection] ioError: " + param1.text);
         §^X§(§;!4§.§8I§(_loc2_));
      }
      
      private function §0L§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§,! §);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§&c§);
      }
      
      private function §+2§(param1:URLLoader) : void
      {
         if(this.§7!Y§.indexOf(param1) > -1)
         {
            this.§7!Y§.splice(this.§7!Y§.indexOf(param1),1);
         }
      }
   }
}
