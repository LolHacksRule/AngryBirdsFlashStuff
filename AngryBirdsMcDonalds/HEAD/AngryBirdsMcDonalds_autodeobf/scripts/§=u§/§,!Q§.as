package §=u§
{
   import §'+§.§1u§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §,!Q§ extends §"V§
   {
       
      
      private var §73§:Vector.<URLLoader>;
      
      public function §,!Q§(param1:String, param2:Number)
      {
         this.§73§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§-!F§.§2!A§ == "Google")
         {
            _loc3_ = new URLRequest(§"!R§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!T§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§?!K§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'!d§);
            _loc4_.load(_loc3_);
            this.§73§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§"!R§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!T§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§?!K§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'!d§);
            _loc4_.load(_loc3_);
            this.§73§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §`g§();
         this.§%!2§();
      }
      
      private function §%!2§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§73§)
         {
            this.§!i§(_loc1_);
            this.§@4§(_loc1_);
         }
         this.§73§ = new Vector.<URLLoader>();
      }
      
      private function §!T§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §?!K§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§!i§(param1.target as URLLoader);
         this.§@4§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §1u§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §`?§(§ ,§.§?X§((param1.target as URLLoader).data));
      }
      
      private function §'!d§(param1:IOErrorEvent) : void
      {
         this.§!i§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§@4§(param1.target as URLLoader);
         §1u§.log((param1.target as URLLoader).data);
         §1u§.log("[HTTPConnection] ioError: " + param1.text);
         §-!g§(§ ,§.§?X§(_loc2_));
      }
      
      private function §!i§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§?!K§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!d§);
      }
      
      private function §@4§(param1:URLLoader) : void
      {
         if(this.§73§.indexOf(param1) > -1)
         {
            this.§73§.splice(this.§73§.indexOf(param1),1);
         }
      }
   }
}
