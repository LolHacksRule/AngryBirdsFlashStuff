package §]$9§
{
   import §!x§.§4"d§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §`!9§ extends §1#]§
   {
       
      
      private var §2b§:Vector.<URLLoader>;
      
      public function §`!9§(param1:String, param2:Number)
      {
         this.§2b§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§-!5§.§6#J§ == "Google")
         {
            _loc3_ = new URLRequest(§8" §() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§1"K§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§8"G§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
            _loc4_.load(_loc3_);
            this.§2b§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§8" §());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§1"K§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§8"G§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
            _loc4_.load(_loc3_);
            this.§2b§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §<#"§();
         this.§&#h§();
      }
      
      private function §&#h§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§2b§)
         {
            this.§%!G§(_loc1_);
            this.§;S§(_loc1_);
         }
         this.§2b§ = new Vector.<URLLoader>();
      }
      
      private function §1"K§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §8"G§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§%!G§(param1.target as URLLoader);
         this.§;S§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §4"d§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §2!5§(§8H§.§!!2§((param1.target as URLLoader).data));
      }
      
      private function §5"R§(param1:IOErrorEvent) : void
      {
         this.§%!G§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§;S§(param1.target as URLLoader);
         §4"d§.log((param1.target as URLLoader).data);
         §4"d§.log("[HTTPConnection] ioError: " + param1.text);
         §1#z§(§8H§.§!!2§(_loc2_));
      }
      
      private function §%!G§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§8"G§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
      }
      
      private function §;S§(param1:URLLoader) : void
      {
         if(this.§2b§.indexOf(param1) > -1)
         {
            this.§2b§.splice(this.§2b§.indexOf(param1),1);
         }
      }
   }
}
