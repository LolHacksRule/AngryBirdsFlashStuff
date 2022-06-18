package §@!Y§
{
   import §=g§.§@!L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §2A§ extends §>u§
   {
       
      
      private var §@!R§:Vector.<URLLoader>;
      
      public function §2A§(param1:String, param2:Number)
      {
         this.§@!R§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§<U§.§=u§ == "Google")
         {
            _loc3_ = new URLRequest(§4!J§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§[%§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§,W§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§@!R§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§4!J§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§[%§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§,W§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§@!R§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §4!'§();
         this.§1!_§();
      }
      
      private function §1!_§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§@!R§)
         {
            this.§#s§(_loc1_);
            this.§`N§(_loc1_);
         }
         this.§@!R§ = new Vector.<URLLoader>();
      }
      
      private function §[%§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §,W§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§#s§(param1.target as URLLoader);
         this.§`N§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §@!L§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §]t§(§<@§.§+6§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§#s§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§`N§(param1.target as URLLoader);
         §@!L§.log((param1.target as URLLoader).data);
         §@!L§.log("[HTTPConnection] ioError: " + param1.text);
         §5V§(§<@§.§+6§(_loc2_));
      }
      
      private function §#s§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§,W§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §`N§(param1:URLLoader) : void
      {
         if(this.§@!R§.indexOf(param1) > -1)
         {
            this.§@!R§.splice(this.§@!R§.indexOf(param1),1);
         }
      }
   }
}
