package §@!v§
{
   import §=!M§.§9!P§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §?t§
   {
       
      
      private var §1!<§:Function = null;
      
      private var §`!P§:Function = null;
      
      public function §?t§()
      {
         super();
      }
      
      protected static function §'"=§(param1:Object) : URLVariables
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
         new §?t§().§<!S§(param1,§'"=§(param2),param3,param4);
      }
      
      protected function §<!S§(param1:String, param2:Object, param3:String, param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         this.§1!<§ = param4;
         this.§`!P§ = param5;
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(param1)).method = param3 == "GET" ? URLRequestMethod.GET : URLRequestMethod.POST;
         _loc7_.data = param2;
         if(param6 != null)
         {
            _loc7_.contentType = param6;
         }
         var _loc8_:URLLoader;
         (_loc8_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         _loc8_.addEventListener(Event.COMPLETE,this.§9"$§);
         _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.§]Z§);
         _loc8_.load(_loc7_);
      }
      
      private function §9"$§(param1:Event) : void
      {
         var _loc2_:Object = this.readResponse((param1.target as URLLoader).data);
         if(this.§1!<§ != null)
         {
            this.§1!<§(_loc2_);
         }
      }
      
      protected function readResponse(param1:Object) : Object
      {
         return §6!N§.§]n§(param1);
      }
      
      private function §]Z§(param1:IOErrorEvent) : void
      {
         §9!P§.log("IO Error on HTTP Connection!!" + param1.toString());
         §9!P§.log("Received data:" + param1.target.data.toString());
         if(this.§`!P§ != null)
         {
            this.§`!P§();
         }
      }
   }
}
