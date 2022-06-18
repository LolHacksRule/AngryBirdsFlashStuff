package §2E§
{
   import §#"3§.Base64;
   import §7"1§.§!"`§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §%";§ extends EventDispatcher
   {
      
      public static const §5G§:int = 54321;
       
      
      protected var §>!x§:Boolean = false;
      
      protected var §1$$§:String;
      
      protected var §?#X§:Number;
      
      protected var §6-§:String;
      
      public function §%";§(param1:String, param2:UncaughtErrorEvents, param3:String)
      {
         super();
         this.§?#X§ = new Date().time;
         this.§6-§ = param3;
         this.§1$$§ = param1;
         param2.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§&"h§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      protected function reportError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = this.§5p§(param1.error);
         var _loc3_:String = this.getStackTrace(param1.error);
         var _loc4_:int = this.§4A§();
         this.reportErrorToOwnServers(_loc2_,_loc3_);
         this.trackErrorID(_loc2_,_loc4_,_loc3_);
      }
      
      protected function §4A§() : int
      {
         return Math.round((new Date().time - this.§?#X§) / 1000);
      }
      
      protected function getStackTrace(param1:*) : String
      {
         var _loc2_:String = null;
         if(param1 is Error)
         {
            _loc2_ = (param1 as Error).getStackTrace();
         }
         return _loc2_;
      }
      
      protected function §5p§(param1:*) : int
      {
         var _loc2_:int = 0;
         if(param1 is Error)
         {
            _loc2_ = (param1 as Error).errorID;
         }
         else if(param1 is ErrorEvent)
         {
            _loc2_ = (param1 as ErrorEvent).errorID;
         }
         return _loc2_;
      }
      
      protected function trackErrorID(param1:int, param2:int, param3:String = null) : void
      {
      }
      
      public function §&"9§() : void
      {
         this.reportErrorToOwnServers(§5G§,null);
      }
      
      protected function reportErrorToOwnServers(param1:int, param2:String) : void
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §!"`§.§@!A§(this.getErrorReportPath(param1))).method = URLRequestMethod.POST;
         if(!param2)
         {
            param2 = "";
         }
         _loc4_.contentType = "text/plain";
         _loc4_.data = Base64.encode(param2);
         _loc3_.load(_loc4_);
      }
      
      protected function getErrorReportPath(param1:int) : String
      {
         return this.§1$$§ + "/clienterror/" + param1;
      }
      
      private function §&"h§(param1:UncaughtErrorEvent) : void
      {
         if(this.§>!x§)
         {
            return;
         }
         this.§>!x§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
