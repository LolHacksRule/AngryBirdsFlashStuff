package §,!0§
{
   import §?@§.§"]§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §;!F§ extends §#G§
   {
       
      
      private var §7P§:Vector.<URLLoader>;
      
      public function §;!F§(param1:String, param2:Number)
      {
         this.§7P§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§-4§.§-<§ == "Google")
         {
            _loc3_ = new URLRequest(§'!F§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^i§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§#f§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
            _loc4_.load(_loc3_);
            this.§7P§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§'!F§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^i§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§#f§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
            _loc4_.load(_loc3_);
            this.§7P§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §?W§();
         this.§04§();
      }
      
      private function §04§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§7P§)
         {
            this.§8!<§(_loc1_);
            this.§44§(_loc1_);
         }
         this.§7P§ = new Vector.<URLLoader>();
      }
      
      private function §^i§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §#f§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§8!<§(param1.target as URLLoader);
         this.§44§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §"]§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §1!U§(§@-§.§2Z§((param1.target as URLLoader).data));
      }
      
      private function §;n§(param1:IOErrorEvent) : void
      {
         this.§8!<§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§44§(param1.target as URLLoader);
         §"]§.log((param1.target as URLLoader).data);
         §"]§.log("[HTTPConnection] ioError: " + param1.text);
         §>!2§(§@-§.§2Z§(_loc2_));
      }
      
      private function §8!<§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§#f§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
      }
      
      private function §44§(param1:URLLoader) : void
      {
         if(this.§7P§.indexOf(param1) > -1)
         {
            this.§7P§.splice(this.§7P§.indexOf(param1),1);
         }
      }
   }
}
