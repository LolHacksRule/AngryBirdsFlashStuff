package §_-Bi§
{
   import §_-aA§.§_-I0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-CF§ extends §_-Cp§
   {
       
      
      private var §_-RF§:Vector.<URLLoader>;
      
      public function §_-CF§(param1:String, param2:Number)
      {
         this.§_-RF§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-p0§.§_-tQ§ == "Google")
         {
            _loc3_ = new URLRequest(§_-Xl§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-J7§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-4G§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§_-RF§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-Xl§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-J7§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-4G§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§_-RF§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-oh§();
         this.§_-oB§();
      }
      
      private function §_-oB§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-RF§)
         {
            this.§_-4§(_loc1_);
            this.§_-mg§(_loc1_);
         }
         this.§_-RF§ = new Vector.<URLLoader>();
      }
      
      private function §_-J7§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-4G§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-4§(param1.target as URLLoader);
         this.§_-mg§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-I0§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-ct§(§_-Aa§.§_-Lh§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§_-4§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-mg§(param1.target as URLLoader);
         §_-I0§.log((param1.target as URLLoader).data);
         §_-I0§.log("[HTTPConnection] ioError: " + param1.text);
         §_-VK§(§_-Aa§.§_-Lh§(_loc2_));
      }
      
      private function §_-4§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-4G§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §_-mg§(param1:URLLoader) : void
      {
         if(this.§_-RF§.indexOf(param1) > -1)
         {
            this.§_-RF§.splice(this.§_-RF§.indexOf(param1),1);
         }
      }
   }
}
