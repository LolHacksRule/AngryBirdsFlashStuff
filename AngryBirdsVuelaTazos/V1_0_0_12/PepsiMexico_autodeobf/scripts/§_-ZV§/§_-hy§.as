package §_-ZV§
{
   import §_-RG§.§_-HT§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-hy§ extends §_-K6§
   {
       
      
      private var §_-90§:Vector.<URLLoader>;
      
      public function §_-hy§(param1:String, param2:Number)
      {
         this.§_-90§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-6k§.§_-9K§ == "Google")
         {
            _loc3_ = new URLRequest(§_-af§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-Bx§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-H0§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
            _loc4_.load(_loc3_);
            this.§_-90§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-af§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-Bx§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-H0§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
            _loc4_.load(_loc3_);
            this.§_-90§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-cO§();
         this.§_-RJ§();
      }
      
      private function §_-RJ§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-90§)
         {
            this.§_-tK§(_loc1_);
            this.§_-sM§(_loc1_);
         }
         this.§_-90§ = new Vector.<URLLoader>();
      }
      
      private function §_-Bx§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-H0§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-tK§(param1.target as URLLoader);
         this.§_-sM§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-HT§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-u-§(§_-GU§.§_-BS§((param1.target as URLLoader).data));
      }
      
      private function §_-On§(param1:IOErrorEvent) : void
      {
         this.§_-tK§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-sM§(param1.target as URLLoader);
         §_-HT§.log((param1.target as URLLoader).data);
         §_-HT§.log("[HTTPConnection] ioError: " + param1.text);
         §_-1k§(§_-GU§.§_-BS§(_loc2_));
      }
      
      private function §_-tK§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-H0§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
      }
      
      private function §_-sM§(param1:URLLoader) : void
      {
         if(this.§_-90§.indexOf(param1) > -1)
         {
            this.§_-90§.splice(this.§_-90§.indexOf(param1),1);
         }
      }
   }
}
