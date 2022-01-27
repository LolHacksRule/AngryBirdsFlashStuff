package §`!o§
{
   import §5t§.Log;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §8"%§ extends §^!f§
   {
       
      
      private var §;"&§:Vector.<URLLoader>;
      
      public function §8"%§(param1:String, param2:Number)
      {
         this.§;"&§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§6",§.§#"7§ == "Google")
         {
            _loc3_ = new URLRequest(§@"X§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§@J§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§`#3§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
            _loc4_.load(_loc3_);
            this.§;"&§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§@"X§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§@J§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§`#3§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
            _loc4_.load(_loc3_);
            this.§;"&§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §,#U§();
         this.§0!&§();
      }
      
      private function §0!&§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§;"&§)
         {
            this.§?!H§(_loc1_);
            this.§>S§(_loc1_);
         }
         this.§;"&§ = new Vector.<URLLoader>();
      }
      
      private function §@J§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §`#3§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§?!H§(param1.target as URLLoader);
         this.§>S§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            Log.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §'i§(§"!^§.§-#Z§((param1.target as URLLoader).data));
      }
      
      private function §=!'§(param1:IOErrorEvent) : void
      {
         this.§?!H§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§>S§(param1.target as URLLoader);
         Log.log((param1.target as URLLoader).data);
         Log.log("[HTTPConnection] ioError: " + param1.text);
         §?y§(§"!^§.§-#Z§(_loc2_));
      }
      
      private function §?!H§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§`#3§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
      }
      
      private function §>S§(param1:URLLoader) : void
      {
         if(this.§;"&§.indexOf(param1) > -1)
         {
            this.§;"&§.splice(this.§;"&§.indexOf(param1),1);
         }
      }
   }
}
