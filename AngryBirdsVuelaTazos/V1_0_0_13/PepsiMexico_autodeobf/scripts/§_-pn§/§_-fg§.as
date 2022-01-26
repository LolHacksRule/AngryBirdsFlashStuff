package §_-pn§
{
   import §_-ex§.§_-mR§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-fg§ extends §_-iK§
   {
       
      
      private var §_-fa§:Vector.<URLLoader>;
      
      public function §_-fg§(param1:String, param2:Number)
      {
         this.§_-fa§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-Kb§.§_-dg§ == "Google")
         {
            _loc3_ = new URLRequest(§_-M4§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-Xg§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-oQ§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
            _loc4_.load(_loc3_);
            this.§_-fa§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-M4§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-Xg§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-oQ§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
            _loc4_.load(_loc3_);
            this.§_-fa§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-dB§();
         this.§_-QO§();
      }
      
      private function §_-QO§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-fa§)
         {
            this.§_-l5§(_loc1_);
            this.§_-kQ§(_loc1_);
         }
         this.§_-fa§ = new Vector.<URLLoader>();
      }
      
      private function §_-Xg§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-oQ§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-l5§(param1.target as URLLoader);
         this.§_-kQ§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-mR§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-FI§(§_-sf§.§_-MY§((param1.target as URLLoader).data));
      }
      
      private function §_-mT§(param1:IOErrorEvent) : void
      {
         this.§_-l5§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-kQ§(param1.target as URLLoader);
         §_-mR§.log((param1.target as URLLoader).data);
         §_-mR§.log("[HTTPConnection] ioError: " + param1.text);
         §_-E5§(§_-sf§.§_-MY§(_loc2_));
      }
      
      private function §_-l5§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-oQ§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
      }
      
      private function §_-kQ§(param1:URLLoader) : void
      {
         if(this.§_-fa§.indexOf(param1) > -1)
         {
            this.§_-fa§.splice(this.§_-fa§.indexOf(param1),1);
         }
      }
   }
}
