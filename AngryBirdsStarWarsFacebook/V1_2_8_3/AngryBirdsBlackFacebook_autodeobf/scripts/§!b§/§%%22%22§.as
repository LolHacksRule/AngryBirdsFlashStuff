package §!b§
{
   import § "-§.§6!R§;
   import §%!G§.§0"V§;
   import §+d§.§`!<§;
   import §9"`§.Base64;
   import com.angrybirds.§<!J§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import §null §.§5#§;
   
   public class §%""§ extends EventDispatcher
   {
      
      public static const §["6§:int = 54321;
       
      
      private var §3"^§:Boolean = false;
      
      private var §6#1§:Number;
      
      protected var §'""§:§5#§;
      
      protected var §-"m§:String;
      
      public function §%""§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§6#1§ = new Date().time;
         this.§-"m§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§,!#§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §"h§(param1:§5#§) : void
      {
         this.§'""§ = param1;
      }
      
      protected function §5!v§(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§6#1§) / 1000);
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
         this.§@!§(_loc2_,_loc3_);
         §]!s§.§>"z§(_loc2_,_loc6_);
         if(§<!J§.§#!L§ != null)
         {
            _loc4_ = §<!J§.§#!L§.§?!D§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§'""§ && this.§'""§.currentLevel != null)
         {
            _loc7_ = this.§'""§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§6!R§.§+!d§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§6!R§.§%!f§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§-"m§;
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §]!s§.§+#$§(§`!<§.§!#$§,_loc12_,_loc6_);
         }
         else
         {
            §]!s§.§+#$§(§`!<§.§5>§,_loc9_,_loc6_);
         }
      }
      
      public function §^!n§() : void
      {
         this.§@!§(§["6§,null);
      }
      
      protected function §@!§(param1:int, param2:String) : void
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §0"V§.§2"r§(§4"#§.SERVER_ROOT + "/clienterror/" + param1)).method = URLRequestMethod.POST;
         if(!param2)
         {
            param2 = "";
         }
         _loc4_.contentType = "text/plain";
         _loc4_.data = Base64.encode(param2);
         _loc3_.load(_loc4_);
      }
      
      private function §,!#§(param1:UncaughtErrorEvent) : void
      {
         if(this.§3"^§)
         {
            return;
         }
         this.§3"^§ = true;
         this.§5!v§(param1);
         this.onError(param1);
      }
   }
}
