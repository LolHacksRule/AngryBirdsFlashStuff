package §-Y§
{
   import § !3§.§!X§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#!d§ extends §4!^§
   {
       
      
      private var §?!4§:Vector.<URLLoader>;
      
      public function §#!d§(param1:String, param2:Number)
      {
         this.§?!4§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§>!'§.§9>§ == "Google")
         {
            _loc3_ = new URLRequest(§<!N§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!!!§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§1!a§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§"W§);
            _loc4_.load(_loc3_);
            this.§?!4§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§<!N§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!!!§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§1!a§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§"W§);
            _loc4_.load(_loc3_);
            this.§?!4§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §<h§();
         this.§4!@§();
      }
      
      private function §4!@§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§?!4§)
         {
            this.§&!+§(_loc1_);
            this.§#!_§(_loc1_);
         }
         this.§?!4§ = new Vector.<URLLoader>();
      }
      
      private function §!!!§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §1!a§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§&!+§(param1.target as URLLoader);
         this.§#!_§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §!X§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §3L§(§ H§.§"!W§((param1.target as URLLoader).data));
      }
      
      private function §"W§(param1:IOErrorEvent) : void
      {
         this.§&!+§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§#!_§(param1.target as URLLoader);
         §!X§.log((param1.target as URLLoader).data);
         §!X§.log("[HTTPConnection] ioError: " + param1.text);
         §2M§(§ H§.§"!W§(_loc2_));
      }
      
      private function §&!+§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§1!a§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§"W§);
      }
      
      private function §#!_§(param1:URLLoader) : void
      {
         if(this.§?!4§.indexOf(param1) > -1)
         {
            this.§?!4§.splice(this.§?!4§.indexOf(param1),1);
         }
      }
   }
}
