package §%!G§
{
   import §9"`§.§-"H§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §-h§ extends §2"Z§
   {
       
      
      private var §4! §:Vector.<URLLoader>;
      
      public function §-h§(param1:String, param2:Number)
      {
         this.§4! § = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§8##§.§ h§ == "Google")
         {
            _loc3_ = new URLRequest(§8"F§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^"j§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§^!h§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
            _loc4_.load(_loc3_);
            this.§4! §.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§8"F§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^"j§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§^!h§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
            _loc4_.load(_loc3_);
            this.§4! §.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §,!K§();
         this.§-#!§();
      }
      
      private function §-#!§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§4! §)
         {
            this.§^"H§(_loc1_);
            this.§+"%§(_loc1_);
         }
         this.§4! § = new Vector.<URLLoader>();
      }
      
      private function §^"j§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §^!h§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§^"H§(param1.target as URLLoader);
         this.§+"%§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §-"H§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §-"W§(§^!r§.§3!h§((param1.target as URLLoader).data));
      }
      
      private function §[!r§(param1:IOErrorEvent) : void
      {
         this.§^"H§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§+"%§(param1.target as URLLoader);
         §-"H§.log((param1.target as URLLoader).data);
         §-"H§.log("[HTTPConnection] ioError: " + param1.text);
         § !]§(§^!r§.§3!h§(_loc2_));
      }
      
      private function §^"H§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§^!h§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
      }
      
      private function §+"%§(param1:URLLoader) : void
      {
         if(this.§4! §.indexOf(param1) > -1)
         {
            this.§4! §.splice(this.§4! §.indexOf(param1),1);
         }
      }
   }
}
