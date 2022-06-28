package
{
   import §_-0Ea§.§_-AY§;
   import §_-Ga§.LevelManager;
   import §_-eS§.§_-OY§;
   import §_-eS§.§_-Za§;
   import §_-jn§.§_-hS§;
   import §_-qO§.§ in§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsUltraBookCanvas extends §_-hS§
   {
      
      public static const §_-0E-§:String = "0.0.0.15 r97255)";
       
      
      private var §_-ds§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
         }
      }
      
      private function init() : void
      {
         §_-Za§.§_-YL§(stage,"UA-23082676-25");
         §_-OY§.§_-Pc§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-w7§);
         }
         else
         {
            this.§_-3a§();
         }
      }
      
      private function §_-b-§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
         this.init();
      }
      
      private function §_-w7§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-w7§);
         this.§_-3a§();
      }
      
      private function §_-3a§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-Lk§);
         new §_-rG§(this);
      }
      
      private function §_-Lk§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-ds§)
         {
            this.§_-ds§ = true;
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
            §_-OY§.§_-05E§(_loc2_,_loc6_);
            if(§ in§.§_-HY§ != null)
            {
               _loc4_ = § in§.§_-HY§.§_-vR§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§_-HM§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§_-AY§.§_-un§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§_-AY§.§_-H3§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §_-0E-§;
            §_-OY§.§_-Ve§(§_-Za§.§_-5v§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §_-OY§.§_-Ve§(§_-Za§.§_-j2§,_loc12_,_loc6_);
            }
         }
      }
   }
}
