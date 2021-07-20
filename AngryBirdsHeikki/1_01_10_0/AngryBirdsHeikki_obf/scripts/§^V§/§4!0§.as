package §^V§
{
   import §@R§.§4,§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §4!0§ extends §"e§
   {
       
      
      private var §9!§:Vector.<URLLoader>;
      
      public function §4!0§(param1:String, param2:Number)
      {
         this.§9!§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§4!H§.§=!M§ == "Google")
         {
            _loc3_ = new URLRequest(§%!'§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§9o§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§&Z§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
            _loc4_.load(_loc3_);
            this.§9!§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§%!'§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§9o§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§&Z§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
            _loc4_.load(_loc3_);
            this.§9!§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §&,§();
         this.§%_§();
      }
      
      private function §%_§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§9!§)
         {
            this.§8!4§(_loc1_);
            this.§'!d§(_loc1_);
         }
         this.§9!§ = new Vector.<URLLoader>();
      }
      
      private function §9o§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §&Z§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§8!4§(param1.target as URLLoader);
         this.§'!d§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §4,§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §7'§(§@!T§.§,!§((param1.target as URLLoader).data));
      }
      
      private function §'z§(param1:IOErrorEvent) : void
      {
         this.§8!4§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§'!d§(param1.target as URLLoader);
         §4,§.log((param1.target as URLLoader).data);
         §4,§.log("[HTTPConnection] ioError: " + param1.text);
         §[!P§(§@!T§.§,!§(_loc2_));
      }
      
      private function §8!4§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§&Z§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
      }
      
      private function §'!d§(param1:URLLoader) : void
      {
         if(this.§9!§.indexOf(param1) > -1)
         {
            this.§9!§.splice(this.§9!§.indexOf(param1),1);
         }
      }
   }
}
