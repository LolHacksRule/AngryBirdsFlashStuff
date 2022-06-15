package §1L§
{
   import §1#v§.§;!Y§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §@"+§ extends §!#I§
   {
       
      
      private var §2d§:Vector.<URLLoader>;
      
      public function §@"+§(param1:String, param2:Number)
      {
         this.§2d§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§;u§.§^"=§ == "Google")
         {
            _loc3_ = new URLRequest(§-"k§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§1$C§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+$9§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
            _loc4_.load(_loc3_);
            this.§2d§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§-"k§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§1$C§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+$9§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
            _loc4_.load(_loc3_);
            this.§2d§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §?#F§();
         this.§6!x§();
      }
      
      private function §6!x§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§2d§)
         {
            this.§^[§(_loc1_);
            this.§0#v§(_loc1_);
         }
         this.§2d§ = new Vector.<URLLoader>();
      }
      
      private function §1$C§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §+$9§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§^[§(param1.target as URLLoader);
         this.§0#v§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §;!Y§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §#"g§(§!"D§.§@;§((param1.target as URLLoader).data));
      }
      
      private function §3Q§(param1:IOErrorEvent) : void
      {
         this.§^[§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§0#v§(param1.target as URLLoader);
         §;!Y§.log((param1.target as URLLoader).data);
         §;!Y§.log("[HTTPConnection] ioError: " + param1.text);
         §&#x§(§!"D§.§@;§(_loc2_));
      }
      
      private function §^[§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§+$9§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
      }
      
      private function §0#v§(param1:URLLoader) : void
      {
         if(this.§2d§.indexOf(param1) > -1)
         {
            this.§2d§.splice(this.§2d§.indexOf(param1),1);
         }
      }
   }
}
