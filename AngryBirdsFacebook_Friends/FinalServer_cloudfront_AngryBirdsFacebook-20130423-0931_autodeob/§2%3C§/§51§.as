package §2<§
{
   import §+!c§.§;!=§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §51§ extends §@d§
   {
       
      
      private var §#?§:Vector.<URLLoader>;
      
      public function §51§(param1:String, param2:Number)
      {
         this.§#?§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§8M§.§+s§ == "Google")
         {
            _loc3_ = new URLRequest(§="J§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§>M§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+G§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
            _loc4_.load(_loc3_);
            this.§#?§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§="J§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§>M§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+G§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
            _loc4_.load(_loc3_);
            this.§#?§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §1!k§();
         this.§4!R§();
      }
      
      private function §4!R§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§#?§)
         {
            this.§<! §(_loc1_);
            this.§>"D§(_loc1_);
         }
         this.§#?§ = new Vector.<URLLoader>();
      }
      
      private function §>M§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §+G§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§<! §(param1.target as URLLoader);
         this.§>"D§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §;!=§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §#"N§(§0$§.§`B§((param1.target as URLLoader).data));
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         this.§<! §(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§>"D§(param1.target as URLLoader);
         §;!=§.log((param1.target as URLLoader).data);
         §;!=§.log("[HTTPConnection] ioError: " + param1.text);
         §6"<§(§0$§.§`B§(_loc2_));
      }
      
      private function §<! §(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§+G§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
      }
      
      private function §>"D§(param1:URLLoader) : void
      {
         if(this.§#?§.indexOf(param1) > -1)
         {
            this.§#?§.splice(this.§#?§.indexOf(param1),1);
         }
      }
   }
}
