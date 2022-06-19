package §[!#§
{
   import §@,§.§4h§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §<!X§ extends §]R§
   {
       
      
      private var §4!"§:Vector.<URLLoader>;
      
      public function §<!X§(param1:String, param2:Number)
      {
         this.§4!"§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§6v§.§%0§ == "Google")
         {
            _loc3_ = new URLRequest(§#F§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§#,§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@M§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§4!"§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§#F§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§#,§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@M§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§4!"§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §=!U§();
         this.§-!6§();
      }
      
      private function §-!6§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§4!"§)
         {
            this.§'!!§(_loc1_);
            this.§%!2§(_loc1_);
         }
         this.§4!"§ = new Vector.<URLLoader>();
      }
      
      private function §#,§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §@M§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§'!!§(param1.target as URLLoader);
         this.§%!2§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §4h§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §]L§(§2X§.§!!%§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§'!!§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§%!2§(param1.target as URLLoader);
         §4h§.log((param1.target as URLLoader).data);
         §4h§.log("[HTTPConnection] ioError: " + param1.text);
         §+2§(§2X§.§!!%§(_loc2_));
      }
      
      private function §'!!§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§@M§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §%!2§(param1:URLLoader) : void
      {
         if(this.§4!"§.indexOf(param1) > -1)
         {
            this.§4!"§.splice(this.§4!"§.indexOf(param1),1);
         }
      }
   }
}
