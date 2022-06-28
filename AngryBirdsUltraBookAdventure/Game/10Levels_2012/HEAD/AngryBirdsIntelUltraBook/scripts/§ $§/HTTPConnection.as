package § $§
{
   import §'N§.Log;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class HTTPConnection extends §]E§
   {
       
      
      private var §?!@§:Vector.<URLLoader>;
      
      public function HTTPConnection(param1:String, param2:Number)
      {
         this.§?!@§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(Server.§!!B§ == "Google")
         {
            _loc3_ = new URLRequest(§&!e§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§@!^§(param2);
            _loc4_ = new URLLoader();
            _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§8!C§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
            _loc4_.load(_loc3_);
            this.§?!@§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§&!e§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§@!^§(param2);
            _loc3_.data.C = param1;
            _loc4_ = new URLLoader();
            _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§8!C§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
            _loc4_.load(_loc3_);
            this.§?!@§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §65§();
         this.§-F§();
      }
      
      private function §-F§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§?!@§)
         {
            this.§^5§(_loc1_);
            this.§%!&§(_loc1_);
         }
         this.§?!@§ = new Vector.<URLLoader>();
      }
      
      private function §@!^§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §8!C§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§^5§(param1.target as URLLoader);
         this.§%!&§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            Log.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §!!>§(MessageFactory.§7!#§((param1.target as URLLoader).data));
      }
      
      private function §`!W§(param1:IOErrorEvent) : void
      {
         this.§^5§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§%!&§(param1.target as URLLoader);
         Log.log((param1.target as URLLoader).data);
         Log.log("[HTTPConnection] ioError: " + param1.text);
         §5!d§(MessageFactory.§7!#§(_loc2_));
      }
      
      private function §^5§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§8!C§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
      }
      
      private function §%!&§(param1:URLLoader) : void
      {
         if(this.§?!@§.indexOf(param1) > -1)
         {
            this.§?!@§.splice(this.§?!@§.indexOf(param1),1);
         }
      }
   }
}
