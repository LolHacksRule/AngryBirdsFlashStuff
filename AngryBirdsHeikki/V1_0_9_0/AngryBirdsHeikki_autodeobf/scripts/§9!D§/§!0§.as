package §9!D§
{
   import §0i§.§]_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §!0§ extends §9H§
   {
       
      
      private var §<y§:Vector.<URLLoader>;
      
      public function §!0§(param1:String, param2:Number)
      {
         this.§<y§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§&!d§.§`;§ == "Google")
         {
            _loc3_ = new URLRequest(§7T§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§?!U§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§'1§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§6R§);
            _loc4_.load(_loc3_);
            this.§<y§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§7T§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§?!U§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§'1§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§6R§);
            _loc4_.load(_loc3_);
            this.§<y§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §[e§();
         this.§4-§();
      }
      
      private function §4-§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§<y§)
         {
            this.§#L§(_loc1_);
            this.§,o§(_loc1_);
         }
         this.§<y§ = new Vector.<URLLoader>();
      }
      
      private function §?!U§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §'1§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§#L§(param1.target as URLLoader);
         this.§,o§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §]_§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §[!9§(§+[§.§`!3§((param1.target as URLLoader).data));
      }
      
      private function §6R§(param1:IOErrorEvent) : void
      {
         this.§#L§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§,o§(param1.target as URLLoader);
         §]_§.log((param1.target as URLLoader).data);
         §]_§.log("[HTTPConnection] ioError: " + param1.text);
         §,6§(§+[§.§`!3§(_loc2_));
      }
      
      private function §#L§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§'1§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§6R§);
      }
      
      private function §,o§(param1:URLLoader) : void
      {
         if(this.§<y§.indexOf(param1) > -1)
         {
            this.§<y§.splice(this.§<y§.indexOf(param1),1);
         }
      }
   }
}
