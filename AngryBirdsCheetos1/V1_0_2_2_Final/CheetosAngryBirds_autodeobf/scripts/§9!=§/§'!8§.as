package §9!=§
{
   import § !G§.§ #§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §'!8§ extends §%t§
   {
       
      
      private var §7D§:Vector.<URLLoader>;
      
      public function §'!8§(param1:String, param2:Number)
      {
         this.§7D§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§[!6§.§3![§ == "Google")
         {
            _loc3_ = new URLRequest(§var §() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§5M§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§5!Y§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§7D§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§var §());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§5M§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§5!Y§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§7D§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §]V§();
         this.§8!&§();
      }
      
      private function §8!&§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§7D§)
         {
            this.§-!I§(_loc1_);
            this.§-!;§(_loc1_);
         }
         this.§7D§ = new Vector.<URLLoader>();
      }
      
      private function §5M§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §5!Y§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§-!I§(param1.target as URLLoader);
         this.§-!;§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            § #§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §-1§(§#!#§.§`!]§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§-!I§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§-!;§(param1.target as URLLoader);
         § #§.log((param1.target as URLLoader).data);
         § #§.log("[HTTPConnection] ioError: " + param1.text);
         §?9§(§#!#§.§`!]§(_loc2_));
      }
      
      private function §-!I§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§5!Y§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §-!;§(param1:URLLoader) : void
      {
         if(this.§7D§.indexOf(param1) > -1)
         {
            this.§7D§.splice(this.§7D§.indexOf(param1),1);
         }
      }
   }
}
