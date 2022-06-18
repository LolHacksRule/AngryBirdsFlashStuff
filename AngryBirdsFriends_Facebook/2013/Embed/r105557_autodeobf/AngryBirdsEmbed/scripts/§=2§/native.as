package §=2§
{
   import §?!8§.§2>§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class native extends §]!2§
   {
       
      
      private var §%N§:Vector.<URLLoader>;
      
      public function native(param1:String, param2:Number)
      {
         this.§%N§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§6z§.§!v§ == "Google")
         {
            _loc3_ = new URLRequest(§4!J§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3'§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§set §);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§%N§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§4!J§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3'§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§set §);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§%N§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §"+§();
         this.§<+§();
      }
      
      private function §<+§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§%N§)
         {
            this.§>!5§(_loc1_);
            this.§!!I§(_loc1_);
         }
         this.§%N§ = new Vector.<URLLoader>();
      }
      
      private function §3'§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §set §(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§>!5§(param1.target as URLLoader);
         this.§!!I§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §2>§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §,y§(§<!;§.§+O§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§>!5§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§!!I§(param1.target as URLLoader);
         §2>§.log((param1.target as URLLoader).data);
         §2>§.log("[HTTPConnection] ioError: " + param1.text);
         §-c§(§<!;§.§+O§(_loc2_));
      }
      
      private function §>!5§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§set §);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §!!I§(param1:URLLoader) : void
      {
         if(this.§%N§.indexOf(param1) > -1)
         {
            this.§%N§.splice(this.§%N§.indexOf(param1),1);
         }
      }
   }
}
