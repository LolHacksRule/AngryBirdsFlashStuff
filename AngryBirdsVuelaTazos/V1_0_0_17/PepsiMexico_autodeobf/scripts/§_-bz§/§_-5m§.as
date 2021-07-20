package §_-bz§
{
   import §_-e3§.§_-54§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-5m§ extends §_-fh§
   {
       
      
      private var §_-HC§:Vector.<URLLoader>;
      
      public function §_-5m§(param1:String, param2:Number)
      {
         this.§_-HC§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-uC§.§_-fg§ == "Google")
         {
            _loc3_ = new URLRequest(§_-05§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-0V§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-mK§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
            _loc4_.load(_loc3_);
            this.§_-HC§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-05§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-0V§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-mK§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
            _loc4_.load(_loc3_);
            this.§_-HC§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-u0§();
         this.§_-ZX§();
      }
      
      private function §_-ZX§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-HC§)
         {
            this.§_-bi§(_loc1_);
            this.§_-0g§(_loc1_);
         }
         this.§_-HC§ = new Vector.<URLLoader>();
      }
      
      private function §_-0V§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-mK§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-bi§(param1.target as URLLoader);
         this.§_-0g§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-54§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-wD§(§_-Iq§.§_-th§((param1.target as URLLoader).data));
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         this.§_-bi§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-0g§(param1.target as URLLoader);
         §_-54§.log((param1.target as URLLoader).data);
         §_-54§.log("[HTTPConnection] ioError: " + param1.text);
         §_-7d§(§_-Iq§.§_-th§(_loc2_));
      }
      
      private function §_-bi§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-mK§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
      }
      
      private function §_-0g§(param1:URLLoader) : void
      {
         if(this.§_-HC§.indexOf(param1) > -1)
         {
            this.§_-HC§.splice(this.§_-HC§.indexOf(param1),1);
         }
      }
   }
}
