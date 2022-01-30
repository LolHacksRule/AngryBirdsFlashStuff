package §[8§
{
   import §"p§.§@8§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §[!=§ extends §#u§
   {
       
      
      private var §6!v§:Vector.<URLLoader>;
      
      public function §[!=§(param1:String, param2:Number)
      {
         this.§6!v§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§[!`§.§2!L§ == "Google")
         {
            _loc3_ = new URLRequest(§+!T§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§39§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§;"<§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§@z§);
            _loc4_.load(_loc3_);
            this.§6!v§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§+!T§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§39§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§;"<§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§@z§);
            _loc4_.load(_loc3_);
            this.§6!v§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §7A§();
         this.§6!o§();
      }
      
      private function §6!o§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§6!v§)
         {
            this.§^Z§(_loc1_);
            this.§`4§(_loc1_);
         }
         this.§6!v§ = new Vector.<URLLoader>();
      }
      
      private function §39§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §;"<§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§^Z§(param1.target as URLLoader);
         this.§`4§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §@8§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §&"&§(§3t§.§#!d§((param1.target as URLLoader).data));
      }
      
      private function §@z§(param1:IOErrorEvent) : void
      {
         this.§^Z§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§`4§(param1.target as URLLoader);
         §@8§.log((param1.target as URLLoader).data);
         §@8§.log("[HTTPConnection] ioError: " + param1.text);
         §1"<§(§3t§.§#!d§(_loc2_));
      }
      
      private function §^Z§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§;"<§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§@z§);
      }
      
      private function §`4§(param1:URLLoader) : void
      {
         if(this.§6!v§.indexOf(param1) > -1)
         {
            this.§6!v§.splice(this.§6!v§.indexOf(param1),1);
         }
      }
   }
}
