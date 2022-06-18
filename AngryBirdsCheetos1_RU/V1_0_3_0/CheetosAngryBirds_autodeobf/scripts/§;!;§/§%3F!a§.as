package §;!;§
{
   import §7!P§.§-3§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §?!a§ extends §@G§
   {
       
      
      private var §2!T§:Vector.<URLLoader>;
      
      public function §?!a§(param1:String, param2:Number)
      {
         this.§2!T§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§4>§.§ var§ == "Google")
         {
            _loc3_ = new URLRequest(§7!K§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§;!Y§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§;a§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§2!T§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§7!K§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§;!Y§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§;a§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§2!T§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §16§();
         this.§!!§();
      }
      
      private function §!!§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§2!T§)
         {
            this.§ P§(_loc1_);
            this.§!!]§(_loc1_);
         }
         this.§2!T§ = new Vector.<URLLoader>();
      }
      
      private function §;!Y§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §;a§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§ P§(param1.target as URLLoader);
         this.§!!]§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §-3§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §3!W§(§%E§.§1!E§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§ P§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§!!]§(param1.target as URLLoader);
         §-3§.log((param1.target as URLLoader).data);
         §-3§.log("[HTTPConnection] ioError: " + param1.text);
         §@&§(§%E§.§1!E§(_loc2_));
      }
      
      private function § P§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§;a§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §!!]§(param1:URLLoader) : void
      {
         if(this.§2!T§.indexOf(param1) > -1)
         {
            this.§2!T§.splice(this.§2!T§.indexOf(param1),1);
         }
      }
   }
}
