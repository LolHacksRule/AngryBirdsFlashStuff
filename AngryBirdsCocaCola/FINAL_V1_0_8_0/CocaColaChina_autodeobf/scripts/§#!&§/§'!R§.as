package §#!&§
{
   import §^=§.§8!6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §'!R§ extends §`!Q§
   {
       
      
      private var §3f§:Vector.<URLLoader>;
      
      public function §'!R§(param1:String, param2:Number)
      {
         this.§3f§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§?u§.§`!V§ == "Google")
         {
            _loc3_ = new URLRequest(§^!Z§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3;§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§2O§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§0!B§);
            _loc4_.load(_loc3_);
            this.§3f§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§^!Z§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3;§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§2O§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§0!B§);
            _loc4_.load(_loc3_);
            this.§3f§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §^!7§();
         this.§]h§();
      }
      
      private function §]h§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§3f§)
         {
            this.§5! §(_loc1_);
            this.§@s§(_loc1_);
         }
         this.§3f§ = new Vector.<URLLoader>();
      }
      
      private function §3;§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §2O§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§5! §(param1.target as URLLoader);
         this.§@s§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §8!6§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §'F§(§[g§.§!X§((param1.target as URLLoader).data));
      }
      
      private function §0!B§(param1:IOErrorEvent) : void
      {
         this.§5! §(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§@s§(param1.target as URLLoader);
         §8!6§.log((param1.target as URLLoader).data);
         §8!6§.log("[HTTPConnection] ioError: " + param1.text);
         §+!U§(§[g§.§!X§(_loc2_));
      }
      
      private function §5! §(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§2O§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!B§);
      }
      
      private function §@s§(param1:URLLoader) : void
      {
         if(this.§3f§.indexOf(param1) > -1)
         {
            this.§3f§.splice(this.§3f§.indexOf(param1),1);
         }
      }
   }
}
