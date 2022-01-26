package §_-nd§
{
   import §_-ZG§.§_-Ne§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-w9§ extends §_-N2§
   {
       
      
      private var §_-3e§:Vector.<URLLoader>;
      
      public function §_-w9§(param1:String, param2:Number)
      {
         this.§_-3e§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-wz§.§_-VT§ == "Google")
         {
            _loc3_ = new URLRequest(§_-E9§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-FC§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-NG§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
            _loc4_.load(_loc3_);
            this.§_-3e§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-E9§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-FC§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-NG§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
            _loc4_.load(_loc3_);
            this.§_-3e§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-bm§();
         this.§_-mI§();
      }
      
      private function §_-mI§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-3e§)
         {
            this.§_-dE§(_loc1_);
            this.§_-T4§(_loc1_);
         }
         this.§_-3e§ = new Vector.<URLLoader>();
      }
      
      private function §_-FC§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-NG§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-dE§(param1.target as URLLoader);
         this.§_-T4§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-Ne§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-GG§(§_-b6§.§_-7Q§((param1.target as URLLoader).data));
      }
      
      private function §_-uV§(param1:IOErrorEvent) : void
      {
         this.§_-dE§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-T4§(param1.target as URLLoader);
         §_-Ne§.log((param1.target as URLLoader).data);
         §_-Ne§.log("[HTTPConnection] ioError: " + param1.text);
         §_-se§(§_-b6§.§_-7Q§(_loc2_));
      }
      
      private function §_-dE§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-NG§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
      }
      
      private function §_-T4§(param1:URLLoader) : void
      {
         if(this.§_-3e§.indexOf(param1) > -1)
         {
            this.§_-3e§.splice(this.§_-3e§.indexOf(param1),1);
         }
      }
   }
}
