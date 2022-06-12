package §@!v§
{
   import §=!M§.§9!P§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §"!;§ extends §`y§
   {
       
      
      private var §&"3§:Vector.<URLLoader>;
      
      public function §"!;§(param1:String, param2:Number)
      {
         this.§&"3§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§6!Q§.§7G§ == "Google")
         {
            _loc3_ = new URLRequest(§-"8§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§'"=§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§9"$§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§]Z§);
            _loc4_.load(_loc3_);
            this.§&"3§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§-"8§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§'"=§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§9"$§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§]Z§);
            _loc4_.load(_loc3_);
            this.§&"3§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §0!P§();
         this.§!c§();
      }
      
      private function §!c§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§&"3§)
         {
            this.§8m§(_loc1_);
            this.§,!l§(_loc1_);
         }
         this.§&"3§ = new Vector.<URLLoader>();
      }
      
      private function §'"=§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §9"$§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§8m§(param1.target as URLLoader);
         this.§,!l§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §9!P§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §2!i§(§6!N§.§]n§((param1.target as URLLoader).data));
      }
      
      private function §]Z§(param1:IOErrorEvent) : void
      {
         this.§8m§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§,!l§(param1.target as URLLoader);
         §9!P§.log((param1.target as URLLoader).data);
         §9!P§.log("[HTTPConnection] ioError: " + param1.text);
         §+""§(§6!N§.§]n§(_loc2_));
      }
      
      private function §8m§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§9"$§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§]Z§);
      }
      
      private function §,!l§(param1:URLLoader) : void
      {
         if(this.§&"3§.indexOf(param1) > -1)
         {
            this.§&"3§.splice(this.§&"3§.indexOf(param1),1);
         }
      }
   }
}
