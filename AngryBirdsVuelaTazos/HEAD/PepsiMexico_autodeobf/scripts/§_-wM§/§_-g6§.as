package §_-wM§
{
   import §_-gM§.§_-yj§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-g6§ extends §_-dZ§
   {
       
      
      private var §_-fn§:Vector.<URLLoader>;
      
      public function §_-g6§(param1:String, param2:Number)
      {
         this.§_-fn§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-9a§.§_-6O§ == "Google")
         {
            _loc3_ = new URLRequest(§_-jy§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-BE§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-IO§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.get);
            _loc4_.load(_loc3_);
            this.§_-fn§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-jy§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-BE§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-IO§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.get);
            _loc4_.load(_loc3_);
            this.§_-fn§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-8a§();
         this.§_-UJ§();
      }
      
      private function §_-UJ§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-fn§)
         {
            this.§_-Oe§(_loc1_);
            this.§_-lz§(_loc1_);
         }
         this.§_-fn§ = new Vector.<URLLoader>();
      }
      
      private function §_-BE§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-IO§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-Oe§(param1.target as URLLoader);
         this.§_-lz§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-yj§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-EB§(§_-CW§.§_-Hk§((param1.target as URLLoader).data));
      }
      
      private function get(param1:IOErrorEvent) : void
      {
         this.§_-Oe§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-lz§(param1.target as URLLoader);
         §_-yj§.log((param1.target as URLLoader).data);
         §_-yj§.log("[HTTPConnection] ioError: " + param1.text);
         §_-To§(§_-CW§.§_-Hk§(_loc2_));
      }
      
      private function §_-Oe§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-IO§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.get);
      }
      
      private function §_-lz§(param1:URLLoader) : void
      {
         if(this.§_-fn§.indexOf(param1) > -1)
         {
            this.§_-fn§.splice(this.§_-fn§.indexOf(param1),1);
         }
      }
   }
}
