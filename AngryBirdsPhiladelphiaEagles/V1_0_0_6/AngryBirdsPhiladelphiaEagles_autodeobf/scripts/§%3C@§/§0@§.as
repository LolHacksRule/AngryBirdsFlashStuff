package §<@§
{
   import §3!O§.§5q§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §0@§ extends §@w§
   {
       
      
      private var §=!F§:Vector.<URLLoader>;
      
      public function §0@§(param1:String, param2:Number)
      {
         this.§=!F§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§^m§.§0-§ == "Google")
         {
            _loc3_ = new URLRequest(§`"§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§[0§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§=!C§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§?!3§);
            _loc4_.load(_loc3_);
            this.§=!F§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§`"§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§[0§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§=!C§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§?!3§);
            _loc4_.load(_loc3_);
            this.§=!F§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §,!I§();
         this.§]`§();
      }
      
      private function §]`§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§=!F§)
         {
            this.§6L§(_loc1_);
            this.§;!F§(_loc1_);
         }
         this.§=!F§ = new Vector.<URLLoader>();
      }
      
      private function §[0§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §=!C§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§6L§(param1.target as URLLoader);
         this.§;!F§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §5q§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §[@§(§<$§.§+D§((param1.target as URLLoader).data));
      }
      
      private function §?!3§(param1:IOErrorEvent) : void
      {
         this.§6L§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§;!F§(param1.target as URLLoader);
         §5q§.log((param1.target as URLLoader).data);
         §5q§.log("[HTTPConnection] ioError: " + param1.text);
         §>?§(§<$§.§+D§(_loc2_));
      }
      
      private function §6L§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§=!C§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!3§);
      }
      
      private function §;!F§(param1:URLLoader) : void
      {
         if(this.§=!F§.indexOf(param1) > -1)
         {
            this.§=!F§.splice(this.§=!F§.indexOf(param1),1);
         }
      }
   }
}
