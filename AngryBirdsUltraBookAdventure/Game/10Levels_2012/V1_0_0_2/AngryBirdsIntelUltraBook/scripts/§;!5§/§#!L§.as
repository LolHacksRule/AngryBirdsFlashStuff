package §;!5§
{
   import §^_§.§!>§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#!L§ extends §9!H§
   {
       
      
      private var §^A§:Vector.<URLLoader>;
      
      public function §#!L§(param1:String, param2:Number)
      {
         this.§^A§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§5>§.§^!L§ == "Google")
         {
            _loc3_ = new URLRequest(§#!;§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§?N§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§=!^§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
            _loc4_.load(_loc3_);
            this.§^A§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§#!;§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§?N§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§=!^§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
            _loc4_.load(_loc3_);
            this.§^A§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §97§();
         this.§&!!§();
      }
      
      private function §&!!§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§^A§)
         {
            this.§&S§(_loc1_);
            this.§-!%§(_loc1_);
         }
         this.§^A§ = new Vector.<URLLoader>();
      }
      
      private function §?N§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §=!^§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§&S§(param1.target as URLLoader);
         this.§-!%§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §!>§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §6Y§(§^q§.§!$§((param1.target as URLLoader).data));
      }
      
      private function §"[§(param1:IOErrorEvent) : void
      {
         this.§&S§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§-!%§(param1.target as URLLoader);
         §!>§.log((param1.target as URLLoader).data);
         §!>§.log("[HTTPConnection] ioError: " + param1.text);
         §"!6§(§^q§.§!$§(_loc2_));
      }
      
      private function §&S§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§=!^§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
      }
      
      private function §-!%§(param1:URLLoader) : void
      {
         if(this.§^A§.indexOf(param1) > -1)
         {
            this.§^A§.splice(this.§^A§.indexOf(param1),1);
         }
      }
   }
}
