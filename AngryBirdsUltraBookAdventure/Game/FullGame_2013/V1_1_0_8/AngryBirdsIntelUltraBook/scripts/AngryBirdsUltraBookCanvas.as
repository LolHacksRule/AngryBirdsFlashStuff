package
{
   import §"!i§.LevelManager;
   import §-!$§.§,w§;
   import §2m§.§<!?§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §<-§.§5Z§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsUltraBookCanvas extends §,w§
   {
      
      public static const §`!q§:String = "1.1.0.7 r106377)";
       
      
      private var §8e§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
         }
      }
      
      private function init() : void
      {
         §5Z§.§ !j§(stage,"UA-23082676-25");
         §!!K§.§`!m§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§>!l§);
         }
         else
         {
            this.§?!7§();
         }
      }
      
      private function §#Z§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
         this.init();
      }
      
      private function §>!l§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§>!l§);
         this.§?!7§();
      }
      
      private function §?!7§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§;b§);
         new §<t§(this);
      }
      
      private function §;b§(param1:UncaughtErrorEvent) : void
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
         if(!this.§8e§)
         {
            this.§8e§ = true;
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
            §!!K§.§]!M§(_loc2_,_loc6_);
            if(§,!s§.§]!J§ != null)
            {
               _loc4_ = §,!s§.§]!J§.§,^§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§"L§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§<!?§.§,=§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§<!?§.§@!_§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §`!q§;
            §!!K§.§&!v§(§5Z§.§^,§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §!!K§.§&!v§(§5Z§.§<!q§,_loc12_,_loc6_);
            }
         }
      }
   }
}
