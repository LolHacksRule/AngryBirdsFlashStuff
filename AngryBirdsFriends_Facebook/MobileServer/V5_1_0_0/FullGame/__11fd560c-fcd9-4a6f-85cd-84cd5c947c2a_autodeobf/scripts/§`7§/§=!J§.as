package §`7§
{
   import §@V§.§["0§;
   import §]!6§.Base64;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §=!J§ extends EventDispatcher
   {
      
      public static const §+"r§:int = 54321;
       
      
      protected var §^$%§:Boolean = false;
      
      protected var §^"j§:String;
      
      protected var §@p§:Number;
      
      protected var §[E§:String;
      
      public function §=!J§(param1:String, param2:UncaughtErrorEvents, param3:String)
      {
         super();
         this.§@p§ = new Date().time;
         this.§[E§ = param3;
         this.§^"j§ = param1;
         param2.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§4#>§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      protected function reportError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = this.§<!$§(param1.error);
         var _loc3_:String = this.getStackTrace(param1.error);
         var _loc4_:int = this.§0!8§();
         this.reportErrorToOwnServers(_loc2_,_loc3_);
         this.trackErrorID(_loc2_,_loc4_,_loc3_);
      }
      
      protected function §0!8§() : int
      {
         return Math.round((new Date().time - this.§@p§) / 1000);
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
      
      protected function §<!$§(param1:*) : int
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
      
      public function §^$-§() : void
      {
         this.reportErrorToOwnServers(§+"r§,null);
      }
      
      protected function reportErrorToOwnServers(param1:int, param2:String) : void
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §["0§.§ G§(this.getErrorReportPath(param1))).method = URLRequestMethod.POST;
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
         return this.§^"j§ + "/clienterror/" + param1;
      }
      
      private function §4#>§(param1:UncaughtErrorEvent) : void
      {
         if(this.§^$%§)
         {
            return;
         }
         this.§^$%§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
