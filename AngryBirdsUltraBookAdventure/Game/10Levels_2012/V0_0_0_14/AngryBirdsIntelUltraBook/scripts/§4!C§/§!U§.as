package §4!C§
{
   import §6z§.§[g§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §!U§ extends §-!i§
   {
       
      
      private var §2Y§:Vector.<URLLoader>;
      
      public function §!U§(param1:String, param2:Number)
      {
         this.§2Y§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§,!l§.§%T§ == "Google")
         {
            _loc3_ = new URLRequest(§8! §() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^e§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§!M§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
            _loc4_.load(_loc3_);
            this.§2Y§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§8! §());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^e§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§!M§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
            _loc4_.load(_loc3_);
            this.§2Y§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §0s§();
         this.§#!#§();
      }
      
      private function §#!#§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§2Y§)
         {
            this.§`!]§(_loc1_);
            this.§!!#§(_loc1_);
         }
         this.§2Y§ = new Vector.<URLLoader>();
      }
      
      private function §^e§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §!M§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§`!]§(param1.target as URLLoader);
         this.§!!#§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §[g§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §7!7§(§8!]§.§9!W§((param1.target as URLLoader).data));
      }
      
      private function §<@§(param1:IOErrorEvent) : void
      {
         this.§`!]§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§!!#§(param1.target as URLLoader);
         §[g§.log((param1.target as URLLoader).data);
         §[g§.log("[HTTPConnection] ioError: " + param1.text);
         § G§(§8!]§.§9!W§(_loc2_));
      }
      
      private function §`!]§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§!M§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
      }
      
      private function §!!#§(param1:URLLoader) : void
      {
         if(this.§2Y§.indexOf(param1) > -1)
         {
            this.§2Y§.splice(this.§2Y§.indexOf(param1),1);
         }
      }
   }
}
