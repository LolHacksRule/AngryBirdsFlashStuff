package §_-rh§
{
   import §_-ot§.§_-o6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-1s§ extends §_-wL§
   {
       
      
      private var §_-6m§:Vector.<URLLoader>;
      
      public function §_-1s§(param1:String, param2:Number)
      {
         this.§_-6m§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-EN§.§_-a4§ == "Google")
         {
            _loc3_ = new URLRequest(§_-15§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-e8§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-3h§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
            _loc4_.load(_loc3_);
            this.§_-6m§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-15§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-e8§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-3h§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
            _loc4_.load(_loc3_);
            this.§_-6m§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-GU§();
         this.§_-0G§();
      }
      
      private function §_-0G§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-6m§)
         {
            this.§_-pz§(_loc1_);
            this.§_-Nc§(_loc1_);
         }
         this.§_-6m§ = new Vector.<URLLoader>();
      }
      
      private function §_-e8§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-3h§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-pz§(param1.target as URLLoader);
         this.§_-Nc§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-o6§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-ZV§(§_-Yl§.§_-1j§((param1.target as URLLoader).data));
      }
      
      private function §_-k§(param1:IOErrorEvent) : void
      {
         this.§_-pz§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-Nc§(param1.target as URLLoader);
         §_-o6§.log((param1.target as URLLoader).data);
         §_-o6§.log("[HTTPConnection] ioError: " + param1.text);
         §_-dH§(§_-Yl§.§_-1j§(_loc2_));
      }
      
      private function §_-pz§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-3h§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
      }
      
      private function §_-Nc§(param1:URLLoader) : void
      {
         if(this.§_-6m§.indexOf(param1) > -1)
         {
            this.§_-6m§.splice(this.§_-6m§.indexOf(param1),1);
         }
      }
   }
}
