package §]!5§
{
   import §;4§.§]!%§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §=S§ extends §1!i§
   {
       
      
      private var §[!6§:Vector.<URLLoader>;
      
      public function §=S§(param1:String, param2:Number)
      {
         this.§[!6§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§^""§.§0!F§ == "Google")
         {
            _loc3_ = new URLRequest(§>!$§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§,!<§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§<O§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§4J§);
            _loc4_.load(_loc3_);
            this.§[!6§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§>!$§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§,!<§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§<O§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§4J§);
            _loc4_.load(_loc3_);
            this.§[!6§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §1§();
         this.§&m§();
      }
      
      private function §&m§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§[!6§)
         {
            this.§%!F§(_loc1_);
            this.§9C§(_loc1_);
         }
         this.§[!6§ = new Vector.<URLLoader>();
      }
      
      private function §,!<§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §<O§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§%!F§(param1.target as URLLoader);
         this.§9C§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §]!%§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §,4§(§ !$§.§1'§((param1.target as URLLoader).data));
      }
      
      private function §4J§(param1:IOErrorEvent) : void
      {
         this.§%!F§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§9C§(param1.target as URLLoader);
         §]!%§.log((param1.target as URLLoader).data);
         §]!%§.log("[HTTPConnection] ioError: " + param1.text);
         § 6§(§ !$§.§1'§(_loc2_));
      }
      
      private function §%!F§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§<O§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§4J§);
      }
      
      private function §9C§(param1:URLLoader) : void
      {
         if(this.§[!6§.indexOf(param1) > -1)
         {
            this.§[!6§.splice(this.§[!6§.indexOf(param1),1);
         }
      }
   }
}
