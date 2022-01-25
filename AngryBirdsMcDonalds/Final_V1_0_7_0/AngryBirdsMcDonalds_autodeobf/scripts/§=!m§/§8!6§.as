package §=!m§
{
   import §0i§.§4!%§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §8!6§ extends §8G§
   {
       
      
      private var §%!c§:Vector.<URLLoader>;
      
      public function §8!6§(param1:String, param2:Number)
      {
         this.§%!c§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§4T§.§^C§ == "Google")
         {
            _loc3_ = new URLRequest(§2a§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§4e§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§0F§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§-;§);
            _loc4_.load(_loc3_);
            this.§%!c§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§2a§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§4e§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§0F§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§-;§);
            _loc4_.load(_loc3_);
            this.§%!c§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §2;§();
         this.§5!Q§();
      }
      
      private function §5!Q§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§%!c§)
         {
            this.§[!i§(_loc1_);
            this.§2!c§(_loc1_);
         }
         this.§%!c§ = new Vector.<URLLoader>();
      }
      
      private function §4e§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §0F§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§[!i§(param1.target as URLLoader);
         this.§2!c§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §4!%§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §+"§(§0&§.§<h§((param1.target as URLLoader).data));
      }
      
      private function §-;§(param1:IOErrorEvent) : void
      {
         this.§[!i§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§2!c§(param1.target as URLLoader);
         §4!%§.log((param1.target as URLLoader).data);
         §4!%§.log("[HTTPConnection] ioError: " + param1.text);
         §4!q§(§0&§.§<h§(_loc2_));
      }
      
      private function §[!i§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§0F§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§-;§);
      }
      
      private function §2!c§(param1:URLLoader) : void
      {
         if(this.§%!c§.indexOf(param1) > -1)
         {
            this.§%!c§.splice(this.§%!c§.indexOf(param1),1);
         }
      }
   }
}
