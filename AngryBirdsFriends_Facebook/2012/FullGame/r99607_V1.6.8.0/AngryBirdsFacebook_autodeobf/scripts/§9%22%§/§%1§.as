package §9"%§
{
   import §0!?§.§'!$§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §%1§ extends §!p§
   {
       
      
      private var §0?§:Vector.<URLLoader>;
      
      public function §%1§(param1:String, param2:Number)
      {
         this.§0?§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§?V§.§=w§ == "Google")
         {
            _loc3_ = new URLRequest(§9!I§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§]?§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§&!n§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
            _loc4_.load(_loc3_);
            this.§0?§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§9!I§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§]?§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§&!n§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
            _loc4_.load(_loc3_);
            this.§0?§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §4X§();
         this.§%k§();
      }
      
      private function §%k§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§0?§)
         {
            this.§8"#§(_loc1_);
            this.§7U§(_loc1_);
         }
         this.§0?§ = new Vector.<URLLoader>();
      }
      
      private function §]?§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §&!n§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§8"#§(param1.target as URLLoader);
         this.§7U§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §'!$§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §'!<§(§8!Y§.§?!w§((param1.target as URLLoader).data));
      }
      
      private function §9"<§(param1:IOErrorEvent) : void
      {
         this.§8"#§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§7U§(param1.target as URLLoader);
         §'!$§.log((param1.target as URLLoader).data);
         §'!$§.log("[HTTPConnection] ioError: " + param1.text);
         §^!H§(§8!Y§.§?!w§(_loc2_));
      }
      
      private function §8"#§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§&!n§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
      }
      
      private function §7U§(param1:URLLoader) : void
      {
         if(this.§0?§.indexOf(param1) > -1)
         {
            this.§0?§.splice(this.§0?§.indexOf(param1),1);
         }
      }
   }
}
