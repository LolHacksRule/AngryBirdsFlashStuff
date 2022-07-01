package §45§
{
   import §;X§.§ do§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §]&§
   {
       
      
      private var §0=§:Function = null;
      
      private var §6"!§:Function = null;
      
      public function §]&§()
      {
         super();
      }
      
      protected static function §9d§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      public static function sendRequest(param1:String, param2:Object, param3:String = "POST", param4:Function = null) : void
      {
         new §]&§().§<!8§(param1,§9d§(param2),param3,param4);
      }
      
      protected function §<!8§(param1:String, param2:Object, param3:String, param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         this.§0=§ = param4;
         this.§6"!§ = param5;
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(param1)).method = param3 == "GET" ? URLRequestMethod.GET : URLRequestMethod.POST;
         _loc7_.data = param2;
         if(param6 != null)
         {
            _loc7_.contentType = param6;
         }
         var _loc8_:URLLoader;
         (_loc8_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         _loc8_.addEventListener(Event.COMPLETE,this.§,! §);
         _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.§&c§);
         _loc8_.load(_loc7_);
      }
      
      private function §,! §(param1:Event) : void
      {
         var _loc2_:Object = this.readResponse((param1.target as URLLoader).data);
         if(this.§0=§ != null)
         {
            this.§0=§(_loc2_);
         }
      }
      
      protected function readResponse(param1:Object) : Object
      {
         return §;!4§.§8I§(param1);
      }
      
      private function §&c§(param1:IOErrorEvent) : void
      {
         § do§.log("IO Error on HTTP Connection!!" + param1.toString());
         § do§.log("Received data:" + param1.target.data.toString());
         if(this.§6"!§ != null)
         {
            this.§6"!§();
         }
      }
   }
}
