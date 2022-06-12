package §%!k§
{
   import §4u§.§<!L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#"+§
   {
       
      
      private var §13§:Function = null;
      
      private var §1i§:Function = null;
      
      public function §#"+§()
      {
         super();
      }
      
      protected static function §?!L§(param1:Object) : URLVariables
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
         new §#"+§().§7g§(param1,§?!L§(param2),param3,param4);
      }
      
      protected function §7g§(param1:String, param2:Object, param3:String, param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         this.§13§ = param4;
         this.§1i§ = param5;
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(param1)).method = param3 == "GET" ? URLRequestMethod.GET : URLRequestMethod.POST;
         _loc7_.data = param2;
         if(param6 != null)
         {
            _loc7_.contentType = param6;
         }
         var _loc8_:URLLoader;
         (_loc8_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         _loc8_.addEventListener(Event.COMPLETE,this.§3!e§);
         _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.§@-§);
         _loc8_.load(_loc7_);
      }
      
      private function §3!e§(param1:Event) : void
      {
         var _loc2_:Object = this.readResponse((param1.target as URLLoader).data);
         if(this.§13§ != null)
         {
            this.§13§(_loc2_);
         }
      }
      
      protected function readResponse(param1:Object) : Object
      {
         return § u§.§7!l§(param1);
      }
      
      private function §@-§(param1:IOErrorEvent) : void
      {
         §<!L§.log("IO Error on HTTP Connection!!" + param1.toString());
         §<!L§.log("Received data:" + param1.target.data.toString());
         if(this.§1i§ != null)
         {
            this.§1i§();
         }
      }
   }
}
