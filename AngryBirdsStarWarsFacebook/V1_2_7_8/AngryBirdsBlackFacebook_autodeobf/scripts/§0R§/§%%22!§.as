package §0R§
{
   import §,!_§.§>!_§;
   import §,#+§.§7!m§;
   import §0"I§.Base64;
   import §7A§.§>!]§;
   import §9!!§.§=!S§;
   import com.angrybirds.§;!e§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §%"!§ extends EventDispatcher
   {
      
      public static const §3<§:int = 54321;
       
      
      private var §]!4§:Boolean = false;
      
      private var §4!0§:Number;
      
      protected var § !p§:§7!m§;
      
      protected var §7!K§:String;
      
      public function §%"!§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§4!0§ = new Date().time;
         this.§7!K§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§8?§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §31§(param1:§7!m§) : void
      {
         this.§ !p§ = param1;
      }
      
      protected function §`!e§(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§4!0§) / 1000);
         if(param1.error is Error)
         {
            _loc2_ = (_loc10_ = param1.error as Error).errorID;
            _loc5_ = _loc10_.message;
            _loc3_ = _loc10_.getStackTrace();
         }
         else if(param1.error is ErrorEvent)
         {
            _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
         }
         this.§<"y§(_loc2_,_loc3_);
         §0!8§.§[!+§(_loc2_,_loc6_);
         if(§;!e§.§6!v§ != null)
         {
            _loc4_ = §;!e§.§6!v§.§=#$§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§ !p§ && this.§ !p§.currentLevel != null)
         {
            _loc7_ = this.§ !p§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§=!S§.§8y§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§=!S§.§&!n§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§7!K§;
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §0!8§.§-!7§(§>!]§.§&"P§,_loc12_,_loc6_);
         }
         else
         {
            §0!8§.§-!7§(§>!]§.§4"%§,_loc9_,_loc6_);
         }
      }
      
      public function §-"Q§() : void
      {
         this.§<"y§(§3<§,null);
      }
      
      protected function §<"y§(param1:int, param2:String) : void
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §>!_§.§^O§(§;"@§.SERVER_ROOT + "/clienterror/" + param1)).method = URLRequestMethod.POST;
         if(!param2)
         {
            param2 = "";
         }
         _loc4_.contentType = "text/plain";
         _loc4_.data = Base64.encode(param2);
         _loc3_.load(_loc4_);
      }
      
      private function §8?§(param1:UncaughtErrorEvent) : void
      {
         if(this.§]!4§)
         {
            return;
         }
         this.§]!4§ = true;
         this.§`!e§(param1);
         this.onError(param1);
      }
   }
}
