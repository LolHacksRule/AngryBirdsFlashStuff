package §@V§
{
   import §]!6§.§6Y§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §<#2§ extends §%#M§
   {
       
      
      private var §?f§:Vector.<URLLoader>;
      
      public function §<#2§(param1:String, param2:Number)
      {
         this.§?f§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§0X§.§,!,§ == "Google")
         {
            _loc3_ = new URLRequest(§9@§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§]"@§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@Z§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
            _loc4_.load(_loc3_);
            this.§?f§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§9@§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§]"@§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@Z§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
            _loc4_.load(_loc3_);
            this.§?f§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §"$6§();
         this.§;1§();
      }
      
      private function §;1§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§?f§)
         {
            this.§[#8§(_loc1_);
            this.§,!M§(_loc1_);
         }
         this.§?f§ = new Vector.<URLLoader>();
      }
      
      private function §]"@§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §@Z§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§[#8§(param1.target as URLLoader);
         this.§,!M§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §6Y§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §%#,§(§+"e§.§7!;§((param1.target as URLLoader).data));
      }
      
      private function §5L§(param1:IOErrorEvent) : void
      {
         this.§[#8§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§,!M§(param1.target as URLLoader);
         §6Y§.log((param1.target as URLLoader).data);
         §6Y§.log("[HTTPConnection] ioError: " + param1.text);
         §[U§(§+"e§.§7!;§(_loc2_));
      }
      
      private function §[#8§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§@Z§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
      }
      
      private function §,!M§(param1:URLLoader) : void
      {
         if(this.§?f§.indexOf(param1) > -1)
         {
            this.§?f§.splice(this.§?f§.indexOf(param1),1);
         }
      }
   }
}
