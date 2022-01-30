package § i§
{
   import §9!G§.§]!e§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §`S§
   {
       
      
      private var §"F§:Function = null;
      
      private var §=!C§:Function = null;
      
      public function §`S§()
      {
         super();
      }
      
      protected static function §+f§(param1:Object) : URLVariables
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
         new §`S§().§3!u§(param1,§+f§(param2),param3,param4);
      }
      
      protected function §3!u§(param1:String, param2:Object, param3:String, param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         this.§"F§ = param4;
         this.§=!C§ = param5;
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(param1)).method = param3 == "GET" ? URLRequestMethod.GET : URLRequestMethod.POST;
         _loc7_.data = param2;
         if(param6 != null)
         {
            _loc7_.contentType = param6;
         }
         var _loc8_:URLLoader;
         (_loc8_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         _loc8_.addEventListener(Event.COMPLETE,this.§'!3§);
         _loc8_.addEventListener(IOErrorEvent.IO_ERROR,this.§>!y§);
         _loc8_.load(_loc7_);
      }
      
      private function §'!3§(param1:Event) : void
      {
         var _loc2_:Object = this.readResponse((param1.target as URLLoader).data);
         if(this.§"F§ != null)
         {
            this.§"F§(_loc2_);
         }
      }
      
      protected function readResponse(param1:Object) : Object
      {
         return §=Y§.§=o§(param1);
      }
      
      private function §>!y§(param1:IOErrorEvent) : void
      {
         §]!e§.log("IO Error on HTTP Connection!!" + param1.toString());
         §]!e§.log("Received data:" + param1.target.data.toString());
         if(this.§=!C§ != null)
         {
            this.§=!C§();
         }
      }
   }
}
