package §]!A§
{
   import §`!W§.§2v§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §?!U§ extends §0!D§
   {
       
      
      private var §#!S§:Vector.<URLLoader>;
      
      public function §?!U§(param1:String, param2:Number)
      {
         this.§#!S§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§1!f§.§32§ == "Google")
         {
            _loc3_ = new URLRequest(§[!W§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§0N§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§ 5§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§4!O§);
            _loc4_.load(_loc3_);
            this.§#!S§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§[!W§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§0N§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§ 5§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§4!O§);
            _loc4_.load(_loc3_);
            this.§#!S§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §?!V§();
         this.§#!F§();
      }
      
      private function §#!F§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§#!S§)
         {
            this.§&!l§(_loc1_);
            this.§8!d§(_loc1_);
         }
         this.§#!S§ = new Vector.<URLLoader>();
      }
      
      private function §0N§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function § 5§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§&!l§(param1.target as URLLoader);
         this.§8!d§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §2v§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §5!f§(§0!Z§.§%!k§((param1.target as URLLoader).data));
      }
      
      private function §4!O§(param1:IOErrorEvent) : void
      {
         this.§&!l§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§8!d§(param1.target as URLLoader);
         §2v§.log((param1.target as URLLoader).data);
         §2v§.log("[HTTPConnection] ioError: " + param1.text);
         §#b§(§0!Z§.§%!k§(_loc2_));
      }
      
      private function §&!l§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§ 5§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!O§);
      }
      
      private function §8!d§(param1:URLLoader) : void
      {
         if(this.§#!S§.indexOf(param1) > -1)
         {
            this.§#!S§.splice(this.§#!S§.indexOf(param1),1);
         }
      }
   }
}
