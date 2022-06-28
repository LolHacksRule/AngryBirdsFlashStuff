package
{
   import §&A§.§,6§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §0X§.§'W§;
   import §<&§.§^b§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   import §true§.§ _§;
   
   public class AngryBirdsUltraBookCanvas extends §,6§
   {
      
      public static const §<!a§:String = "1.0.0.5 r97394)";
       
      
      private var §7R§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§'6§);
         }
      }
      
      private function init() : void
      {
         §'W§.set(stage,"UA-23082676-25");
         §'N§.§!!V§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§9!w§);
         }
         else
         {
            this.§6!v§();
         }
      }
      
      private function §'6§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§'6§);
         this.init();
      }
      
      private function §9!w§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§9!w§);
         this.§6!v§();
      }
      
      private function §6!v§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§53§);
         new §@!9§(this);
      }
      
      private function §53§(param1:UncaughtErrorEvent) : void
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
         if(!this.§7R§)
         {
            this.§7R§ = true;
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
            §'N§.§7!=§(_loc2_,_loc6_);
            if(§ _§.§1s§ != null)
            {
               _loc4_ = § _§.§1s§.§6!3§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§4Y§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§^b§.§9E§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§^b§.§7h§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §<!a§;
            §'N§.§var §(§'W§.§"<§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §'N§.§var §(§'W§.§><§,_loc12_,_loc6_);
            }
         }
      }
   }
}
