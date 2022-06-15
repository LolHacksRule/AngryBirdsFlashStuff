package §4S§
{
   import §6"p§.§^"t§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §4!2§ extends §-#c§
   {
       
      
      private var §`"C§:Vector.<URLLoader>;
      
      public function §4!2§(param1:String, param2:Number)
      {
         this.§`"C§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§<#j§.§""L§ == "Google")
         {
            _loc3_ = new URLRequest(§-#N§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§`$;§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§##=§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
            _loc4_.load(_loc3_);
            this.§`"C§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§-#N§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§`$;§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§##=§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
            _loc4_.load(_loc3_);
            this.§`"C§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §2!A§();
         this.§03§();
      }
      
      private function §03§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§`"C§)
         {
            this.§;U§(_loc1_);
            this.§#"§(_loc1_);
         }
         this.§`"C§ = new Vector.<URLLoader>();
      }
      
      private function §`$;§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §##=§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§;U§(param1.target as URLLoader);
         this.§#"§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §^"t§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §8$1§(§>$5§.§=e§((param1.target as URLLoader).data));
      }
      
      private function §4"v§(param1:IOErrorEvent) : void
      {
         this.§;U§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§#"§(param1.target as URLLoader);
         §^"t§.log((param1.target as URLLoader).data);
         §^"t§.log("[HTTPConnection] ioError: " + param1.text);
         §9$C§(§>$5§.§=e§(_loc2_));
      }
      
      private function §;U§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§##=§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
      }
      
      private function §#"§(param1:URLLoader) : void
      {
         if(this.§`"C§.indexOf(param1) > -1)
         {
            this.§`"C§.splice(this.§`"C§.indexOf(param1),1);
         }
      }
   }
}
