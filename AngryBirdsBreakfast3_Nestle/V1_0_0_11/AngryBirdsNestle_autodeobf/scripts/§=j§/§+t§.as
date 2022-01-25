package §=j§
{
   import §8!$§.§?p§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §+t§ extends §9!Y§
   {
       
      
      private var §`!K§:Vector.<URLLoader>;
      
      public function §+t§(param1:String, param2:Number)
      {
         this.§`!K§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§^!J§.§2R§ == "Google")
         {
            _loc3_ = new URLRequest(§6$§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§8!M§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§5$§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5" §);
            _loc4_.load(_loc3_);
            this.§`!K§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§6$§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§8!M§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§5$§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5" §);
            _loc4_.load(_loc3_);
            this.§`!K§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §7!u§();
         this.§0!;§();
      }
      
      private function §0!;§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§`!K§)
         {
            this.§8!5§(_loc1_);
            this.§?D§(_loc1_);
         }
         this.§`!K§ = new Vector.<URLLoader>();
      }
      
      private function §8!M§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §5$§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§8!5§(param1.target as URLLoader);
         this.§?D§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §?p§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §^!V§(§=n§.§-v§((param1.target as URLLoader).data));
      }
      
      private function §5" §(param1:IOErrorEvent) : void
      {
         this.§8!5§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§?D§(param1.target as URLLoader);
         §?p§.log((param1.target as URLLoader).data);
         §?p§.log("[HTTPConnection] ioError: " + param1.text);
         §!+§(§=n§.§-v§(_loc2_));
      }
      
      private function §8!5§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§5$§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§5" §);
      }
      
      private function §?D§(param1:URLLoader) : void
      {
         if(this.§`!K§.indexOf(param1) > -1)
         {
            this.§`!K§.splice(this.§`!K§.indexOf(param1),1);
         }
      }
   }
}
