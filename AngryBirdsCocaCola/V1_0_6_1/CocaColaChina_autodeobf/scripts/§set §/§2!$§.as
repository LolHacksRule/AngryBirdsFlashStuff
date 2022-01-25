package §set §
{
   import §<!!§.§-"§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §2!$§ extends §6+§
   {
       
      
      private var § true§:Vector.<URLLoader>;
      
      public function §2!$§(param1:String, param2:Number)
      {
         this.§ true§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§[!;§.§8;§ == "Google")
         {
            _loc3_ = new URLRequest(§`0§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§#@§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§#!!§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=p§);
            _loc4_.load(_loc3_);
            this.§ true§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§`0§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§#@§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§#!!§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=p§);
            _loc4_.load(_loc3_);
            this.§ true§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §3=§();
         this.§1§();
      }
      
      private function §1§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§ true§)
         {
            this.§ !§(_loc1_);
            this.§>!0§(_loc1_);
         }
         this.§ true§ = new Vector.<URLLoader>();
      }
      
      private function §#@§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §#!!§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§ !§(param1.target as URLLoader);
         this.§>!0§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §-"§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §18§(§!A§.§#^§((param1.target as URLLoader).data));
      }
      
      private function §=p§(param1:IOErrorEvent) : void
      {
         this.§ !§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§>!0§(param1.target as URLLoader);
         §-"§.log((param1.target as URLLoader).data);
         §-"§.log("[HTTPConnection] ioError: " + param1.text);
         §-8§(§!A§.§#^§(_loc2_));
      }
      
      private function § !§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§#!!§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§=p§);
      }
      
      private function §>!0§(param1:URLLoader) : void
      {
         if(this.§ true§.indexOf(param1) > -1)
         {
            this.§ true§.splice(this.§ true§.indexOf(param1),1);
         }
      }
   }
}
