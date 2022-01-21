package §09§
{
   import §=<§.§1+§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §>!K§ extends §<?§
   {
       
      
      private var §]!F§:Vector.<URLLoader>;
      
      public function §>!K§(param1:String, param2:Number)
      {
         this.§]!F§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§4!c§.§?!k§ == "Google")
         {
            _loc3_ = new URLRequest(§@!"§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!I§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§=!j§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§2!Z§);
            _loc4_.load(_loc3_);
            this.§]!F§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§@!"§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!I§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§=!j§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§2!Z§);
            _loc4_.load(_loc3_);
            this.§]!F§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §<!<§();
         this.§<3§();
      }
      
      private function §<3§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§]!F§)
         {
            this.§>#§(_loc1_);
            this.§9,§(_loc1_);
         }
         this.§]!F§ = new Vector.<URLLoader>();
      }
      
      private function §!I§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §=!j§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§>#§(param1.target as URLLoader);
         this.§9,§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §1+§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §^8§(§8!L§.§"I§((param1.target as URLLoader).data));
      }
      
      private function §2!Z§(param1:IOErrorEvent) : void
      {
         this.§>#§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§9,§(param1.target as URLLoader);
         §1+§.log((param1.target as URLLoader).data);
         §1+§.log("[HTTPConnection] ioError: " + param1.text);
         §<c§(§8!L§.§"I§(_loc2_));
      }
      
      private function §>#§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§=!j§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!Z§);
      }
      
      private function §9,§(param1:URLLoader) : void
      {
         if(this.§]!F§.indexOf(param1) > -1)
         {
            this.§]!F§.splice(this.§]!F§.indexOf(param1),1);
         }
      }
   }
}
