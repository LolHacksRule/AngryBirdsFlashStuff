package §=Y§
{
   import §@!;§.§!!=§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §@>§ extends §<!+§
   {
       
      
      private var §;4§:Vector.<URLLoader>;
      
      public function §@>§(param1:String, param2:Number)
      {
         this.§;4§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§-=§.§0,§ == "Google")
         {
            _loc3_ = new URLRequest(§ ;§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§8B§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§[,§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§;4§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§ ;§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§8B§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§[,§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§;4§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §]!4§();
         this.§=!'§();
      }
      
      private function §=!'§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§;4§)
         {
            this.§4o§(_loc1_);
            this.§;M§(_loc1_);
         }
         this.§;4§ = new Vector.<URLLoader>();
      }
      
      private function §8B§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §[,§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§4o§(param1.target as URLLoader);
         this.§;M§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §!!=§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §6L§(§>g§.§^!A§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§4o§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§;M§(param1.target as URLLoader);
         §!!=§.log((param1.target as URLLoader).data);
         §!!=§.log("[HTTPConnection] ioError: " + param1.text);
         §,j§(§>g§.§^!A§(_loc2_));
      }
      
      private function §4o§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§[,§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §;M§(param1:URLLoader) : void
      {
         if(this.§;4§.indexOf(param1) > -1)
         {
            this.§;4§.splice(this.§;4§.indexOf(param1),1);
         }
      }
   }
}
