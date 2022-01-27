package §#!'§
{
   import §&#H§.§3#J§;
   import §1!i§.§>!%§;
   import §5t§.Base64;
   import §?m§.§+"2§;
   import §`!o§.§<9§;
   import com.angrybirds.§,!q§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §7!>§ extends EventDispatcher
   {
      
      public static const §'"S§:int = 54321;
       
      
      private var §<y§:Boolean = false;
      
      private var §1!5§:Number;
      
      protected var §+!b§:§+"2§;
      
      protected var §5#,§:String;
      
      public function §7!>§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§1!5§ = new Date().time;
         this.§5#,§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§5'§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §;y§(param1:§+"2§) : void
      {
         this.§+!b§ = param1;
      }
      
      protected function §%"p§(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§1!5§) / 1000);
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
         this.§>"T§(_loc2_,_loc3_);
         §6"]§.§-!&§(_loc2_,_loc6_);
         if(§,!q§.§>#D§ != null)
         {
            _loc4_ = §,!q§.§>#D§.§]?§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§+!b§ && this.§+!b§.currentLevel != null)
         {
            _loc7_ = this.§+!b§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§3#J§.§2!C§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§3#J§.§3!s§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§5#,§;
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §6"]§.§2!L§(§>!%§.§?#T§,_loc12_,_loc6_);
         }
         else
         {
            §6"]§.§2!L§(§>!%§.§!!W§,_loc9_,_loc6_);
         }
      }
      
      public function §@#Z§() : void
      {
         this.§>"T§(§'"S§,null);
      }
      
      protected function §>"T§(param1:int, param2:String) : void
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §<9§.§""I§(§4#;§.SERVER_ROOT + "/clienterror/" + param1)).method = URLRequestMethod.POST;
         if(!param2)
         {
            param2 = "";
         }
         _loc4_.contentType = "text/plain";
         _loc4_.data = Base64.encode(param2);
         _loc3_.load(_loc4_);
      }
      
      private function §5'§(param1:UncaughtErrorEvent) : void
      {
         if(this.§<y§)
         {
            return;
         }
         this.§<y§ = true;
         this.§%"p§(param1);
         this.onError(param1);
      }
   }
}
