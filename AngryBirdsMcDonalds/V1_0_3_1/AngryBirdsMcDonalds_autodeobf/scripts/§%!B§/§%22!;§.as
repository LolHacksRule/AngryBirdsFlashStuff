package §%!B§
{
   import §5K§.§[C§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §"!;§ extends §9+§
   {
       
      
      private var § -§:Vector.<URLLoader>;
      
      public function §"!;§(param1:String, param2:Number)
      {
         this.§ -§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§`+§.§-![§ == "Google")
         {
            _loc3_ = new URLRequest(§2!N§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§->§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+M§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§8!%§);
            _loc4_.load(_loc3_);
            this.§ -§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§2!N§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§->§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+M§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§8!%§);
            _loc4_.load(_loc3_);
            this.§ -§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §;K§();
         this.§>!p§();
      }
      
      private function §>!p§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§ -§)
         {
            this.§<-§(_loc1_);
            this.§-!L§(_loc1_);
         }
         this.§ -§ = new Vector.<URLLoader>();
      }
      
      private function §->§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §+M§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§<-§(param1.target as URLLoader);
         this.§-!L§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §[C§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §;7§(§"!D§.§3!F§((param1.target as URLLoader).data));
      }
      
      private function §8!%§(param1:IOErrorEvent) : void
      {
         this.§<-§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§-!L§(param1.target as URLLoader);
         §[C§.log((param1.target as URLLoader).data);
         §[C§.log("[HTTPConnection] ioError: " + param1.text);
         §2'§(§"!D§.§3!F§(_loc2_));
      }
      
      private function §<-§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§+M§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!%§);
      }
      
      private function §-!L§(param1:URLLoader) : void
      {
         if(this.§ -§.indexOf(param1) > -1)
         {
            this.§ -§.splice(this.§ -§.indexOf(param1),1);
         }
      }
   }
}
