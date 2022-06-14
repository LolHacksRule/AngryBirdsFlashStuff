package § "C§
{
   import §6o§.§+!k§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §6!@§ extends §5!e§
   {
       
      
      private var §`a§:Vector.<URLLoader>;
      
      public function §6!@§(param1:String, param2:Number)
      {
         this.§`a§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§2"=§.§^;§ == "Google")
         {
            _loc3_ = new URLRequest(§""%§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§do§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§??§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
            _loc4_.load(_loc3_);
            this.§`a§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§""%§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§do§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§??§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
            _loc4_.load(_loc3_);
            this.§`a§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §=!6§();
         this.§+"A§();
      }
      
      private function §+"A§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§`a§)
         {
            this.§5"=§(_loc1_);
            this.§#!@§(_loc1_);
         }
         this.§`a§ = new Vector.<URLLoader>();
      }
      
      private function §do§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §??§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§5"=§(param1.target as URLLoader);
         this.§#!@§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §+!k§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §&"6§(§#!#§.§&!F§((param1.target as URLLoader).data));
      }
      
      private function §>0§(param1:IOErrorEvent) : void
      {
         this.§5"=§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§#!@§(param1.target as URLLoader);
         §+!k§.log((param1.target as URLLoader).data);
         §+!k§.log("[HTTPConnection] ioError: " + param1.text);
         §,!B§(§#!#§.§&!F§(_loc2_));
      }
      
      private function §5"=§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§??§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
      }
      
      private function §#!@§(param1:URLLoader) : void
      {
         if(this.§`a§.indexOf(param1) > -1)
         {
            this.§`a§.splice(this.§`a§.indexOf(param1),1);
         }
      }
   }
}
