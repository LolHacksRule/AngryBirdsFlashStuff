package §'8§
{
   import §"1§.§3'§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §##§ extends §0,§
   {
       
      
      private var §import§:Vector.<URLLoader>;
      
      public function §##§(param1:String, param2:Number)
      {
         this.§import§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§5!H§.§0a§ == "Google")
         {
            _loc3_ = new URLRequest(§8W§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§ !P§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§7§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§6!H§);
            _loc4_.load(_loc3_);
            this.§import§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§8W§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§ !P§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§7§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§6!H§);
            _loc4_.load(_loc3_);
            this.§import§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §&Y§();
         this.§'Y§();
      }
      
      private function §'Y§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§import§)
         {
            this.§implements§(_loc1_);
            this.§>w§(_loc1_);
         }
         this.§import§ = new Vector.<URLLoader>();
      }
      
      private function § !P§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §7§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§implements§(param1.target as URLLoader);
         this.§>w§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §3'§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §@!2§(§3!E§.§4!'§((param1.target as URLLoader).data));
      }
      
      private function §6!H§(param1:IOErrorEvent) : void
      {
         this.§implements§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§>w§(param1.target as URLLoader);
         §3'§.log((param1.target as URLLoader).data);
         §3'§.log("[HTTPConnection] ioError: " + param1.text);
         §?!E§(§3!E§.§4!'§(_loc2_));
      }
      
      private function §implements§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§7§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§6!H§);
      }
      
      private function §>w§(param1:URLLoader) : void
      {
         if(this.§import§.indexOf(param1) > -1)
         {
            this.§import§.splice(this.§import§.indexOf(param1),1);
         }
      }
   }
}
