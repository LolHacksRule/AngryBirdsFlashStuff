package §&!0§
{
   import § !r§.§`![§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&!u§ extends §2a§
   {
       
      
      private var §[!h§:Vector.<URLLoader>;
      
      public function §&!u§(param1:String, param2:Number)
      {
         this.§[!h§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§%!`§.§87§ == "Google")
         {
            _loc3_ = new URLRequest(§'!k§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^d§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§2!a§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§[!h§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§'!k§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^d§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§2!a§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§[!h§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         § for§();
         this.§8§();
      }
      
      private function §8§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§[!h§)
         {
            this.§6!^§(_loc1_);
            this.§4!>§(_loc1_);
         }
         this.§[!h§ = new Vector.<URLLoader>();
      }
      
      private function §^d§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §2!a§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§6!^§(param1.target as URLLoader);
         this.§4!>§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §`![§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §,;§(§6B§.§+2§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§6!^§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§4!>§(param1.target as URLLoader);
         §`![§.log((param1.target as URLLoader).data);
         §`![§.log("[HTTPConnection] ioError: " + param1.text);
         §#!A§(§6B§.§+2§(_loc2_));
      }
      
      private function §6!^§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§2!a§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §4!>§(param1:URLLoader) : void
      {
         if(this.§[!h§.indexOf(param1) > -1)
         {
            this.§[!h§.splice(this.§[!h§.indexOf(param1),1);
         }
      }
   }
}
