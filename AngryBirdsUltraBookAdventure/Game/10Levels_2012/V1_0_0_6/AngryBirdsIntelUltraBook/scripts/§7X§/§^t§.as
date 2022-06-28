package §7X§
{
   import §"x§.§-8§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §^t§ extends §!!%§
   {
       
      
      private var §<N§:Vector.<URLLoader>;
      
      public function §^t§(param1:String, param2:Number)
      {
         this.§<N§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§^"§.§+^§ == "Google")
         {
            _loc3_ = new URLRequest(§&!j§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§>c§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>!?§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
            _loc4_.load(_loc3_);
            this.§<N§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§&!j§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§>c§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>!?§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
            _loc4_.load(_loc3_);
            this.§<N§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §;l§();
         this.§=!h§();
      }
      
      private function §=!h§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§<N§)
         {
            this.§4!Y§(_loc1_);
            this.§5!R§(_loc1_);
         }
         this.§<N§ = new Vector.<URLLoader>();
      }
      
      private function §>c§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §>!?§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§4!Y§(param1.target as URLLoader);
         this.§5!R§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §-8§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §%!1§(§2T§.§8!L§((param1.target as URLLoader).data));
      }
      
      private function §9s§(param1:IOErrorEvent) : void
      {
         this.§4!Y§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§5!R§(param1.target as URLLoader);
         §-8§.log((param1.target as URLLoader).data);
         §-8§.log("[HTTPConnection] ioError: " + param1.text);
         §`#§(§2T§.§8!L§(_loc2_));
      }
      
      private function §4!Y§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§>!?§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
      }
      
      private function §5!R§(param1:URLLoader) : void
      {
         if(this.§<N§.indexOf(param1) > -1)
         {
            this.§<N§.splice(this.§<N§.indexOf(param1),1);
         }
      }
   }
}
