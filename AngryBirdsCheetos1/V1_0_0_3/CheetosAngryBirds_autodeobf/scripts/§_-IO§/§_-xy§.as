package §_-IO§
{
   import §_-r6§.§_-Oy§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-xy§ extends §_-7h§
   {
       
      
      private var §_-Zc§:Vector.<URLLoader>;
      
      public function §_-xy§(param1:String, param2:Number)
      {
         this.§_-Zc§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-zS§.§_-GV§ == "Google")
         {
            _loc3_ = new URLRequest(§_-AA§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-kh§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-LG§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§_-Zc§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-AA§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-kh§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-LG§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§_-Zc§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-ab§();
         this.§implements§();
      }
      
      private function §implements§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-Zc§)
         {
            this.§_-Iz§(_loc1_);
            this.§_-BP§(_loc1_);
         }
         this.§_-Zc§ = new Vector.<URLLoader>();
      }
      
      private function §_-kh§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-LG§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-Iz§(param1.target as URLLoader);
         this.§_-BP§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-Oy§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-A3§(§_-Ak§.§_-Bn§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§_-Iz§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-BP§(param1.target as URLLoader);
         §_-Oy§.log((param1.target as URLLoader).data);
         §_-Oy§.log("[HTTPConnection] ioError: " + param1.text);
         §_-gl§(§_-Ak§.§_-Bn§(_loc2_));
      }
      
      private function §_-Iz§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-LG§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §_-BP§(param1:URLLoader) : void
      {
         if(this.§_-Zc§.indexOf(param1) > -1)
         {
            this.§_-Zc§.splice(this.§_-Zc§.indexOf(param1),1);
         }
      }
   }
}
