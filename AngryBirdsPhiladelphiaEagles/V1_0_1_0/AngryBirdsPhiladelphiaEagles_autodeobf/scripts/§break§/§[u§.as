package §break§
{
   import §-!5§.§5s§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §[u§ extends §]7§
   {
       
      
      private var §@!2§:Vector.<URLLoader>;
      
      public function §[u§(param1:String, param2:Number)
      {
         this.§@!2§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§8!B§.§@B§ == "Google")
         {
            _loc3_ = new URLRequest(§ !F§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§4x§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+2§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§!r§);
            _loc4_.load(_loc3_);
            this.§@!2§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§ !F§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§4x§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+2§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§!r§);
            _loc4_.load(_loc3_);
            this.§@!2§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §2r§();
         this.§[Q§();
      }
      
      private function §[Q§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§@!2§)
         {
            this.§'Y§(_loc1_);
            this.§&%§(_loc1_);
         }
         this.§@!2§ = new Vector.<URLLoader>();
      }
      
      private function §4x§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §+2§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§'Y§(param1.target as URLLoader);
         this.§&%§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §5s§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §9z§(§94§.§4#§((param1.target as URLLoader).data));
      }
      
      private function §!r§(param1:IOErrorEvent) : void
      {
         this.§'Y§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§&%§(param1.target as URLLoader);
         §5s§.log((param1.target as URLLoader).data);
         §5s§.log("[HTTPConnection] ioError: " + param1.text);
         §8R§(§94§.§4#§(_loc2_));
      }
      
      private function §'Y§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§+2§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§!r§);
      }
      
      private function §&%§(param1:URLLoader) : void
      {
         if(this.§@!2§.indexOf(param1) > -1)
         {
            this.§@!2§.splice(this.§@!2§.indexOf(param1),1);
         }
      }
   }
}
