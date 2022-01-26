package §_-ox§
{
   import §_-Eo§.§_-R4§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-LR§ extends §_-AE§
   {
       
      
      private var §_-Ba§:Vector.<URLLoader>;
      
      public function §_-LR§(param1:String, param2:Number)
      {
         this.§_-Ba§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-1l§.§_-q7§ == "Google")
         {
            _loc3_ = new URLRequest(§_-Vf§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-oJ§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-Fg§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
            _loc4_.load(_loc3_);
            this.§_-Ba§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-Vf§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-oJ§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-Fg§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
            _loc4_.load(_loc3_);
            this.§_-Ba§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-Jc§();
         this.§_-YX§();
      }
      
      private function §_-YX§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-Ba§)
         {
            this.§_-XB§(_loc1_);
            this.§_-bZ§(_loc1_);
         }
         this.§_-Ba§ = new Vector.<URLLoader>();
      }
      
      private function §_-oJ§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-Fg§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-XB§(param1.target as URLLoader);
         this.§_-bZ§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-R4§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-Yo§(§_-bs§.§_-U9§((param1.target as URLLoader).data));
      }
      
      private function §_-U7§(param1:IOErrorEvent) : void
      {
         this.§_-XB§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-bZ§(param1.target as URLLoader);
         §_-R4§.log((param1.target as URLLoader).data);
         §_-R4§.log("[HTTPConnection] ioError: " + param1.text);
         §_-6s§(§_-bs§.§_-U9§(_loc2_));
      }
      
      private function §_-XB§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-Fg§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
      }
      
      private function §_-bZ§(param1:URLLoader) : void
      {
         if(this.§_-Ba§.indexOf(param1) > -1)
         {
            this.§_-Ba§.splice(this.§_-Ba§.indexOf(param1),1);
         }
      }
   }
}
