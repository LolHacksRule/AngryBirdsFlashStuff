package
{
   import §!!K§.§else§;
   import §3!G§.LevelManager;
   import §>! §.§^!c§;
   import §]+§.§%!M§;
   import §]+§.§@!J§;
   import §]2§.§-9§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsUltraBookCanvas extends §-9§
   {
      
      public static const §@W§:String = "1.0.0.6 r97703)";
       
      
      private var §[!l§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§+T§);
         }
      }
      
      private function init() : void
      {
         §%!M§.§7o§(stage,"UA-23082676-25");
         §@!J§.§]![§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§@!8§);
         }
         else
         {
            this.§2m§();
         }
      }
      
      private function §+T§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§+T§);
         this.init();
      }
      
      private function §@!8§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§@!8§);
         this.§2m§();
      }
      
      private function §2m§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§""§);
         new §[!P§(this);
      }
      
      private function §""§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(!this.§[!l§)
         {
            this.§[!l§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
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
            §@!J§.§'0§(_loc2_,_loc6_);
            if(§^!c§.§2!w§ != null)
            {
               _loc4_ = §^!c§.§2!w§.§6!O§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§%n§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§else§.§^!A§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§else§.§@g§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §@W§;
            §@!J§.§[!G§(§%!M§.§-c§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §@!J§.§[!G§(§%!M§.§<!J§,_loc12_,_loc6_);
            }
         }
      }
   }
}
