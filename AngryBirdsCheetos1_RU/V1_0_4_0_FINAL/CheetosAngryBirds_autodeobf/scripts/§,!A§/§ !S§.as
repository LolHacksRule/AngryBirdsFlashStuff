package §,!A§
{
   import § N§.§]M§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class § !S§ extends §8"§
   {
       
      
      private var §4D§:Vector.<URLLoader>;
      
      public function § !S§(param1:String, param2:Number)
      {
         this.§4D§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§+!2§.§8!b§ == "Google")
         {
            _loc3_ = new URLRequest(§?!>§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§7!D§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§]w§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§4D§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§?!>§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§7!D§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§]w§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§4D§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §8]§();
         this.§+A§();
      }
      
      private function §+A§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§4D§)
         {
            this.§4!O§(_loc1_);
            this.§<b§(_loc1_);
         }
         this.§4D§ = new Vector.<URLLoader>();
      }
      
      private function §7!D§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §]w§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§4!O§(param1.target as URLLoader);
         this.§<b§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §]M§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §0!@§(§-z§.§92§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§4!O§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§<b§(param1.target as URLLoader);
         §]M§.log((param1.target as URLLoader).data);
         §]M§.log("[HTTPConnection] ioError: " + param1.text);
         §9!G§(§-z§.§92§(_loc2_));
      }
      
      private function §4!O§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§]w§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §<b§(param1:URLLoader) : void
      {
         if(this.§4D§.indexOf(param1) > -1)
         {
            this.§4D§.splice(this.§4D§.indexOf(param1),1);
         }
      }
   }
}
