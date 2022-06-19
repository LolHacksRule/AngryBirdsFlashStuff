package §<[§
{
   import §&N§.§@,§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §<Q§ extends §=!@§
   {
       
      
      private var §<!X§:Vector.<URLLoader>;
      
      public function §<Q§(param1:String, param2:Number)
      {
         this.§<!X§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§[!#§.§6!8§ == "Google")
         {
            _loc3_ = new URLRequest(§%h§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§-!6§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§#,§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§<!X§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§%h§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§-!6§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§#,§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§<!X§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §7^§();
         this.§4!"§();
      }
      
      private function §4!"§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§<!X§)
         {
            this.§@M§(_loc1_);
            this.§'!!§(_loc1_);
         }
         this.§<!X§ = new Vector.<URLLoader>();
      }
      
      private function §-!6§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §#,§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§@M§(param1.target as URLLoader);
         this.§'!!§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §@,§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §&<§(§^!%§.§?b§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§@M§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§'!!§(param1.target as URLLoader);
         §@,§.log((param1.target as URLLoader).data);
         §@,§.log("[HTTPConnection] ioError: " + param1.text);
         §]L§(§^!%§.§?b§(_loc2_));
      }
      
      private function §@M§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§#,§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §'!!§(param1:URLLoader) : void
      {
         if(this.§<!X§.indexOf(param1) > -1)
         {
            this.§<!X§.splice(this.§<!X§.indexOf(param1),1);
         }
      }
   }
}
