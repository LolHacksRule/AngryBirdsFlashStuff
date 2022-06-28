package §^!7§
{
   import §<u§.Log;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class HTTPConnection extends §=]§
   {
       
      
      private var §;_§:Vector.<URLLoader>;
      
      public function HTTPConnection(param1:String, param2:Number)
      {
         this.§;_§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(Server.§^!G§ == "Google")
         {
            _loc3_ = new URLRequest(§>?§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§8d§(param2);
            _loc4_ = new URLLoader();
            _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§3!P§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
            _loc4_.load(_loc3_);
            this.§;_§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§>?§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§8d§(param2);
            _loc3_.data.C = param1;
            _loc4_ = new URLLoader();
            _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§3!P§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
            _loc4_.load(_loc3_);
            this.§;_§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §=!&§();
         this.§<!h§();
      }
      
      private function §<!h§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§;_§)
         {
            this.§ r§(_loc1_);
            this.§4-§(_loc1_);
         }
         this.§;_§ = new Vector.<URLLoader>();
      }
      
      private function §8d§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §3!P§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§ r§(param1.target as URLLoader);
         this.§4-§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            Log.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §<!F§(MessageFactory.§2Q§((param1.target as URLLoader).data));
      }
      
      private function §8!3§(param1:IOErrorEvent) : void
      {
         this.§ r§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§4-§(param1.target as URLLoader);
         Log.log((param1.target as URLLoader).data);
         Log.log("[HTTPConnection] ioError: " + param1.text);
         §=b§(MessageFactory.§2Q§(_loc2_));
      }
      
      private function § r§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§3!P§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
      }
      
      private function §4-§(param1:URLLoader) : void
      {
         if(this.§;_§.indexOf(param1) > -1)
         {
            this.§;_§.splice(this.§;_§.indexOf(param1),1);
         }
      }
   }
}
