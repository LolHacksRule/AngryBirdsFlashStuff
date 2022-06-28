package §_-Hb§
{
   import §_-0BH§.§_-FK§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-U1§ extends §_-9V§
   {
       
      
      private var §_-gr§:Vector.<URLLoader>;
      
      public function §_-U1§(param1:String, param2:Number)
      {
         this.§_-gr§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§_-ok§.§_-FF§ == "Google")
         {
            _loc3_ = new URLRequest(§_-Os§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-34§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-ua§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
            _loc4_.load(_loc3_);
            this.§_-gr§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§_-Os§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§_-34§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§_-ua§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
            _loc4_.load(_loc3_);
            this.§_-gr§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §_-03a§();
         this.§_-rt§();
      }
      
      private function §_-rt§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§_-gr§)
         {
            this.§_-uT§(_loc1_);
            this.§_-GS§(_loc1_);
         }
         this.§_-gr§ = new Vector.<URLLoader>();
      }
      
      private function §_-34§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §_-ua§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§_-uT§(param1.target as URLLoader);
         this.§_-GS§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §_-FK§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §_-DD§(§_-0DQ§.§_-Rw§((param1.target as URLLoader).data));
      }
      
      private function §_-ba§(param1:IOErrorEvent) : void
      {
         this.§_-uT§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§_-GS§(param1.target as URLLoader);
         §_-FK§.log((param1.target as URLLoader).data);
         §_-FK§.log("[HTTPConnection] ioError: " + param1.text);
         §_-K3§(§_-0DQ§.§_-Rw§(_loc2_));
      }
      
      private function §_-uT§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§_-ua§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
      }
      
      private function §_-GS§(param1:URLLoader) : void
      {
         if(this.§_-gr§.indexOf(param1) > -1)
         {
            this.§_-gr§.splice(this.§_-gr§.indexOf(param1),1);
         }
      }
   }
}
