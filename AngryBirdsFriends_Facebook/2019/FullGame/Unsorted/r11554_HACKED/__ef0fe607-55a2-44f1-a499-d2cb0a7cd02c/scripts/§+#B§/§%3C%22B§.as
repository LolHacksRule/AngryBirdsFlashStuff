package §+#B§
{
   import §9#K§.Base64;
   import §>"Q§.§2"6§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<"B§ extends EventDispatcher
   {
      
      public static const §!!G§:int = 54321;
       
      
      protected var §3!§:Boolean = false;
      
      protected var §@"3§:String;
      
      protected var §5z§:Number;
      
      protected var §9";§:String;
      
      public function §<"B§(param1:String, param2:UncaughtErrorEvents, param3:String)
      {
         super();
         this.§5z§ = new Date().time;
         this.§9";§ = param3;
         this.§@"3§ = param1;
         param2.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§=r§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      protected function reportError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = this.§[!S§(param1.error);
         var _loc3_:String = this.getStackTrace(param1.error);
         var _loc4_:int = this.§="K§();
         this.reportErrorToOwnServers(_loc2_,_loc3_);
         this.trackErrorID(_loc2_,_loc4_,_loc3_);
      }
      
      protected function §="K§() : int
      {
         return Math.round((new Date().time - this.§5z§) / 1000);
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
      
      protected function §[!S§(param1:*) : int
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
      
      public function §,!e§() : void
      {
         this.reportErrorToOwnServers(§!!G§,null);
      }
      
      protected function reportErrorToOwnServers(param1:int, param2:String) : void
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §2"6§.§;z§(this.getErrorReportPath(param1))).method = URLRequestMethod.POST;
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
         return this.§@"3§ + "/clienterror/" + param1;
      }
      
      private function §=r§(param1:UncaughtErrorEvent) : void
      {
         if(this.§3!§)
         {
            return;
         }
         this.§3!§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
