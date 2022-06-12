package §%!k§
{
   import §4u§.§<!L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §@;§ extends §9?§
   {
       
      
      private var § c§:Vector.<URLLoader>;
      
      public function §@;§(param1:String, param2:Number)
      {
         this.§ c§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§=M§.§'"1§ == "Google")
         {
            _loc3_ = new URLRequest(§5f§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§?!L§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§3!e§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§@-§);
            _loc4_.load(_loc3_);
            this.§ c§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§5f§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§?!L§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§3!e§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§@-§);
            _loc4_.load(_loc3_);
            this.§ c§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §&!J§();
         this.§,1§();
      }
      
      private function §,1§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§ c§)
         {
            this.§'!H§(_loc1_);
            this.§#!p§(_loc1_);
         }
         this.§ c§ = new Vector.<URLLoader>();
      }
      
      private function §?!L§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §3!e§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§'!H§(param1.target as URLLoader);
         this.§#!p§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §<!L§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §@!2§(§ u§.§7!l§((param1.target as URLLoader).data));
      }
      
      private function §@-§(param1:IOErrorEvent) : void
      {
         this.§'!H§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§#!p§(param1.target as URLLoader);
         §<!L§.log((param1.target as URLLoader).data);
         §<!L§.log("[HTTPConnection] ioError: " + param1.text);
         §1!i§(§ u§.§7!l§(_loc2_));
      }
      
      private function §'!H§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§3!e§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§@-§);
      }
      
      private function §#!p§(param1:URLLoader) : void
      {
         if(this.§ c§.indexOf(param1) > -1)
         {
            this.§ c§.splice(this.§ c§.indexOf(param1),1);
         }
      }
   }
}
