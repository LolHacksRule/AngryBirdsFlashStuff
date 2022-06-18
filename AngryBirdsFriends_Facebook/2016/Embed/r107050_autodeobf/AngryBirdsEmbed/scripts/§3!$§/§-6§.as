package §3!$§
{
   import §'6§.§?!L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §-6§ extends §^!8§
   {
       
      
      private var §^2§:Vector.<URLLoader>;
      
      public function §-6§(param1:String, param2:Number)
      {
         this.§^2§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§^[§.§@R§ == "Google")
         {
            _loc3_ = new URLRequest(§04§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§0@§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§!!6§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§^2§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§04§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§0@§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§!!6§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§^2§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §'Y§();
         this.§#f§();
      }
      
      private function §#f§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§^2§)
         {
            this.§9!A§(_loc1_);
            this.§";§(_loc1_);
         }
         this.§^2§ = new Vector.<URLLoader>();
      }
      
      private function §0@§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §!!6§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§9!A§(param1.target as URLLoader);
         this.§";§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §?!L§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §;#§(§+I§.§>!I§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§9!A§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§";§(param1.target as URLLoader);
         §?!L§.log((param1.target as URLLoader).data);
         §?!L§.log("[HTTPConnection] ioError: " + param1.text);
         § for§(§+I§.§>!I§(_loc2_));
      }
      
      private function §9!A§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§!!6§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §";§(param1:URLLoader) : void
      {
         if(this.§^2§.indexOf(param1) > -1)
         {
            this.§^2§.splice(this.§^2§.indexOf(param1),1);
         }
      }
   }
}
