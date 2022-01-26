package §_-3f§
{
   import §_-U0§.§_-tF§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-qm§ extends §_-dX§
   {
       
      
      private var §_-I9§:Vector.<URLLoader>;
      
      public function §_-qm§(param1:String, param2:Number)
      {
         this.§_-I9§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-mc§.§_-7N§ == "Google")
         {
            _loc3_ = new URLRequest(§_-T6§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-D-§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-JQ§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§_-I9§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-T6§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-D-§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-JQ§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§_-I9§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-Ja§();
         this.§_-HZ§();
      }
      
      private function §_-HZ§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-I9§)
         {
            this.§_-dS§(_loc1_);
            this.§_-sU§(_loc1_);
         }
         this.§_-I9§ = new Vector.<URLLoader>();
      }
      
      private function §_-D-§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-JQ§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-dS§(param1.target as URLLoader);
         this.§_-sU§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-tF§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-qp§(§_-Sd§.§_-2O§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§_-dS§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-sU§(param1.target as URLLoader);
         §_-tF§.log((param1.target as URLLoader).data);
         §_-tF§.log("[HTTPConnection] ioError: " + param1.text);
         §_-cz§(§_-Sd§.§_-2O§(_loc2_));
      }
      
      private function §_-dS§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-JQ§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §_-sU§(param1:URLLoader) : void
      {
         if(this.§_-I9§.indexOf(param1) > -1)
         {
            this.§_-I9§.splice(this.§_-I9§.indexOf(param1),1);
         }
      }
   }
}
