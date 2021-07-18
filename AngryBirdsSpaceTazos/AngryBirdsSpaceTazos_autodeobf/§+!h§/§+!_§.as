package §+!h§
{
   import §0N§.§2!@§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §+!_§ extends §4"2§
   {
       
      
      private var §;y§:Vector.<URLLoader>;
      
      public function §+!_§(param1:String, param2:Number)
      {
         this.§;y§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§#V§.§?B§ == "Google")
         {
            _loc3_ = new URLRequest(§!!,§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!!d§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>!K§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
            _loc4_.load(_loc3_);
            this.§;y§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§!!,§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!!d§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>!K§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
            _loc4_.load(_loc3_);
            this.§;y§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §6"5§();
         this.§9!W§();
      }
      
      private function §9!W§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§;y§)
         {
            this.§0!u§(_loc1_);
            this.§?"!§(_loc1_);
         }
         this.§;y§ = new Vector.<URLLoader>();
      }
      
      private function §!!d§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §>!K§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§0!u§(param1.target as URLLoader);
         this.§?"!§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §2!@§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §=!N§(§&"H§.§6<§((param1.target as URLLoader).data));
      }
      
      private function §[G§(param1:IOErrorEvent) : void
      {
         this.§0!u§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§?"!§(param1.target as URLLoader);
         §2!@§.log((param1.target as URLLoader).data);
         §2!@§.log("[HTTPConnection] ioError: " + param1.text);
         §?g§(§&"H§.§6<§(_loc2_));
      }
      
      private function §0!u§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§>!K§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
      }
      
      private function §?"!§(param1:URLLoader) : void
      {
         if(this.§;y§.indexOf(param1) > -1)
         {
            this.§;y§.splice(this.§;y§.indexOf(param1),1);
         }
      }
   }
}
