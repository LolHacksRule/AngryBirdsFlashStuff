package §3@§
{
   import §>^§.§!6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §5$§ extends §+!W§
   {
       
      
      private var §^z§:Vector.<URLLoader>;
      
      public function §5$§(param1:String, param2:Number)
      {
         this.§^z§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§>#§.§<!'§ == "Google")
         {
            _loc3_ = new URLRequest(§@5§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§""§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§8o§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§^z§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§@5§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§""§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§8o§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§^z§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §2!I§();
         this.§[!8§();
      }
      
      private function §[!8§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§^z§)
         {
            this.§!!h§(_loc1_);
            this.§]!I§(_loc1_);
         }
         this.§^z§ = new Vector.<URLLoader>();
      }
      
      private function §""§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §8o§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§!!h§(param1.target as URLLoader);
         this.§]!I§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §!6§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §4E§(§^W§.§`7§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§!!h§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§]!I§(param1.target as URLLoader);
         §!6§.log((param1.target as URLLoader).data);
         §!6§.log("[HTTPConnection] ioError: " + param1.text);
         §`3§(§^W§.§`7§(_loc2_));
      }
      
      private function §!!h§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§8o§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §]!I§(param1:URLLoader) : void
      {
         if(this.§^z§.indexOf(param1) > -1)
         {
            this.§^z§.splice(this.§^z§.indexOf(param1),1);
         }
      }
   }
}
