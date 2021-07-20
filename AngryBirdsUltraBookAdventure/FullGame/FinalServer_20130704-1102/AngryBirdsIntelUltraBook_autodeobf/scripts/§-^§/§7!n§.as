package §-^§
{
   import §1!B§.§<m§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §7!n§ extends §#J§
   {
       
      
      private var §%!m§:Vector.<URLLoader>;
      
      public function §7!n§(param1:String, param2:Number)
      {
         this.§%!m§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§?7§.§!!y§ == "Google")
         {
            _loc3_ = new URLRequest(§ !§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+!T§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§-<§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
            _loc4_.load(_loc3_);
            this.§%!m§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§ !§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+!T§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§-<§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
            _loc4_.load(_loc3_);
            this.§%!m§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §>"§();
         this.§%T§();
      }
      
      private function §%T§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§%!m§)
         {
            this.§1k§(_loc1_);
            this.§+!w§(_loc1_);
         }
         this.§%!m§ = new Vector.<URLLoader>();
      }
      
      private function §+!T§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §-<§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§1k§(param1.target as URLLoader);
         this.§+!w§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §<m§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §false§(§`l§.§5[§((param1.target as URLLoader).data));
      }
      
      private function §%""§(param1:IOErrorEvent) : void
      {
         this.§1k§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§+!w§(param1.target as URLLoader);
         §<m§.log((param1.target as URLLoader).data);
         §<m§.log("[HTTPConnection] ioError: " + param1.text);
         §[3§(§`l§.§5[§(_loc2_));
      }
      
      private function §1k§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§-<§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
      }
      
      private function §+!w§(param1:URLLoader) : void
      {
         if(this.§%!m§.indexOf(param1) > -1)
         {
            this.§%!m§.splice(this.§%!m§.indexOf(param1),1);
         }
      }
   }
}
