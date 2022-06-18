package §7"1§
{
   import §#"3§.§4!h§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §]3§ extends §4#Y§
   {
       
      
      private var §0y§:Vector.<URLLoader>;
      
      public function §]3§(param1:String, param2:Number)
      {
         this.§0y§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§[#U§.§0"v§ == "Google")
         {
            _loc3_ = new URLRequest(§?$'§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§""_§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§-"H§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
            _loc4_.load(_loc3_);
            this.§0y§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§?$'§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§""_§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§-"H§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
            _loc4_.load(_loc3_);
            this.§0y§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §>Y§();
         this.§1#J§();
      }
      
      private function §1#J§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§0y§)
         {
            this.§8"y§(_loc1_);
            this.§3p§(_loc1_);
         }
         this.§0y§ = new Vector.<URLLoader>();
      }
      
      private function §""_§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §-"H§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§8"y§(param1.target as URLLoader);
         this.§3p§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §4!h§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §0"A§(§0!y§.§'a§((param1.target as URLLoader).data));
      }
      
      private function §%! §(param1:IOErrorEvent) : void
      {
         this.§8"y§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§3p§(param1.target as URLLoader);
         §4!h§.log((param1.target as URLLoader).data);
         §4!h§.log("[HTTPConnection] ioError: " + param1.text);
         §<$=§(§0!y§.§'a§(_loc2_));
      }
      
      private function §8"y§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§-"H§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
      }
      
      private function §3p§(param1:URLLoader) : void
      {
         if(this.§0y§.indexOf(param1) > -1)
         {
            this.§0y§.splice(this.§0y§.indexOf(param1),1);
         }
      }
   }
}
