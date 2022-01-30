package §5!8§
{
   import §&W§.§7L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §^I§
   {
       
      
      private var §?!J§:Function = null;
      
      private var §0K§:Function = null;
      
      public function §^I§()
      {
         super();
      }
      
      protected static function §^!z§(param1:Object) : URLVariables
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
         new §^I§().§>"!§(param1,§^!z§(param2),param3,param4);
      }
      
      protected function §>"!§(param1:String, param2:Object, param3:String, param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         this.§?!J§ = param4;
         this.§0K§ = param5;
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(param1)).method = param3 == "GET" ? URLRequestMethod.GET : URLRequestMethod.POST;
         _loc7_.data = param2;
         if(param6 != null)
         {
            _loc7_.contentType = param6;
         }
         var _loc8_:URLLoader;
         (_loc8_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         _loc8_.addEventListener(Event.COMPLETE,this.§case §);
         _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.§>z§);
         _loc8_.load(_loc7_);
      }
      
      private function §case §(param1:Event) : void
      {
         var _loc2_:Object = this.readResponse((param1.target as URLLoader).data);
         if(this.§?!J§ != null)
         {
            this.§?!J§(_loc2_);
         }
      }
      
      protected function readResponse(param1:Object) : Object
      {
         return §2"0§.§5"!§(param1);
      }
      
      private function §>z§(param1:IOErrorEvent) : void
      {
         §7L§.log("IO Error on HTTP Connection!!" + param1.toString());
         §7L§.log("Received data:" + param1.target.data.toString());
         if(this.§0K§ != null)
         {
            this.§0K§();
         }
      }
   }
}
