package §2,§
{
   import § !Q§.§"D§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §%q§ extends §@!k§
   {
       
      
      private var §^!a§:Vector.<URLLoader>;
      
      public function §%q§(param1:String, param2:Number)
      {
         this.§^!a§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§"G§.§ !X§ == "Google")
         {
            _loc3_ = new URLRequest(§7U§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§5H§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§1"2§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§@!2§);
            _loc4_.load(_loc3_);
            this.§^!a§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§7U§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§5H§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§1"2§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§@!2§);
            _loc4_.load(_loc3_);
            this.§^!a§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §5C§();
         this.§;!f§();
      }
      
      private function §;!f§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§^!a§)
         {
            this.§1!"§(_loc1_);
            this.§87§(_loc1_);
         }
         this.§^!a§ = new Vector.<URLLoader>();
      }
      
      private function §5H§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §1"2§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§1!"§(param1.target as URLLoader);
         this.§87§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §"D§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §]m§(§0!f§.§@Z§((param1.target as URLLoader).data));
      }
      
      private function §@!2§(param1:IOErrorEvent) : void
      {
         this.§1!"§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§87§(param1.target as URLLoader);
         §"D§.log((param1.target as URLLoader).data);
         §"D§.log("[HTTPConnection] ioError: " + param1.text);
         § !k§(§0!f§.§@Z§(_loc2_));
      }
      
      private function §1!"§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§1"2§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!2§);
      }
      
      private function §87§(param1:URLLoader) : void
      {
         if(this.§^!a§.indexOf(param1) > -1)
         {
            this.§^!a§.splice(this.§^!a§.indexOf(param1),1);
         }
      }
   }
}
