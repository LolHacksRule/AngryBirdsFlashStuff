package §@!%§
{
   import §@V§.§`!5§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §[!N§ extends §`!!§
   {
       
      
      private var §9!§:Vector.<URLLoader>;
      
      public function §[!N§(param1:String, param2:Number)
      {
         this.§9!§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§-!;§.§]!5§ == "Google")
         {
            _loc3_ = new URLRequest(§1!!§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§;`§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§`"§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§ C§);
            _loc4_.load(_loc3_);
            this.§9!§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§1!!§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§;`§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§`"§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§ C§);
            _loc4_.load(_loc3_);
            this.§9!§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §%J§();
         this.§!!#§();
      }
      
      private function §!!#§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§9!§)
         {
            this.§5n§(_loc1_);
            this.§,!=§(_loc1_);
         }
         this.§9!§ = new Vector.<URLLoader>();
      }
      
      private function §;`§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §`"§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§5n§(param1.target as URLLoader);
         this.§,!=§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §`!5§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         § !G§(§=-§.§%Q§((param1.target as URLLoader).data));
      }
      
      private function § C§(param1:IOErrorEvent) : void
      {
         this.§5n§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§,!=§(param1.target as URLLoader);
         §`!5§.log((param1.target as URLLoader).data);
         §`!5§.log("[HTTPConnection] ioError: " + param1.text);
         §=P§(§=-§.§%Q§(_loc2_));
      }
      
      private function §5n§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§`"§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§ C§);
      }
      
      private function §,!=§(param1:URLLoader) : void
      {
         if(this.§9!§.indexOf(param1) > -1)
         {
            this.§9!§.splice(this.§9!§.indexOf(param1),1);
         }
      }
   }
}
