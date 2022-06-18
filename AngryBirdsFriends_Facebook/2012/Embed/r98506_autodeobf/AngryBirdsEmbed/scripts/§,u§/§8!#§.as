package §,u§
{
   import §-p§.§&2§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §8!#§ extends §+=§
   {
       
      
      private var §4S§:Vector.<URLLoader>;
      
      public function §8!#§(param1:String, param2:Number)
      {
         this.§4S§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§8A§.§`!!§ == "Google")
         {
            _loc3_ = new URLRequest(§#6§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+!B§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§`>§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§4S§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§#6§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+!B§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§`>§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§4S§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §6R§();
         this.§%!§();
      }
      
      private function §%!§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§4S§)
         {
            this.§,!"§(_loc1_);
            this.§<!0§(_loc1_);
         }
         this.§4S§ = new Vector.<URLLoader>();
      }
      
      private function §+!B§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §`>§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§,!"§(param1.target as URLLoader);
         this.§<!0§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §&2§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §4i§(§?!B§.§3!=§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§,!"§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§<!0§(param1.target as URLLoader);
         §&2§.log((param1.target as URLLoader).data);
         §&2§.log("[HTTPConnection] ioError: " + param1.text);
         §^^§(§?!B§.§3!=§(_loc2_));
      }
      
      private function §,!"§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§`>§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §<!0§(param1:URLLoader) : void
      {
         if(this.§4S§.indexOf(param1) > -1)
         {
            this.§4S§.splice(this.§4S§.indexOf(param1),1);
         }
      }
   }
}
