package §,!_§
{
   import §0"I§.§5!s§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §`!$§ extends §%"l§
   {
       
      
      private var §,!h§:Vector.<URLLoader>;
      
      public function §`!$§(param1:String, param2:Number)
      {
         this.§,!h§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§2"V§.§=!A§ == "Google")
         {
            _loc3_ = new URLRequest(§3#0§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§?!§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§<!R§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
            _loc4_.load(_loc3_);
            this.§,!h§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§3#0§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§?!§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§<!R§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
            _loc4_.load(_loc3_);
            this.§,!h§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §2"M§();
         this.§`!o§();
      }
      
      private function §`!o§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§,!h§)
         {
            this.§," §(_loc1_);
            this.§+"$§(_loc1_);
         }
         this.§,!h§ = new Vector.<URLLoader>();
      }
      
      private function §?!§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §<!R§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§," §(param1.target as URLLoader);
         this.§+"$§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §5!s§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §+!t§(§1",§.§;!1§((param1.target as URLLoader).data));
      }
      
      private function §<#1§(param1:IOErrorEvent) : void
      {
         this.§," §(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§+"$§(param1.target as URLLoader);
         §5!s§.log((param1.target as URLLoader).data);
         §5!s§.log("[HTTPConnection] ioError: " + param1.text);
         §<!5§(§1",§.§;!1§(_loc2_));
      }
      
      private function §," §(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§<!R§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
      }
      
      private function §+"$§(param1:URLLoader) : void
      {
         if(this.§,!h§.indexOf(param1) > -1)
         {
            this.§,!h§.splice(this.§,!h§.indexOf(param1),1);
         }
      }
   }
}
