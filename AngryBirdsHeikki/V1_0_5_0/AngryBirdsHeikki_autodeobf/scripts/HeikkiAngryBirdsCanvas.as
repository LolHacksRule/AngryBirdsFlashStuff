package
{
   import § !"§.§,g§;
   import §3-§.§1L§;
   import §=!S§.§!!Z§;
   import §=!S§.§+!G§;
   import §=X§.§7!4§;
   import §>Q§.§5!5§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class HeikkiAngryBirdsCanvas extends §,g§
   {
      
      public static const VERSION:String = "0.0.0.1";
       
      
      private var §%O§:Boolean = false;
      
      public function HeikkiAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§'!W§);
         }
      }
      
      private function init() : void
      {
         if(!this.§>v§())
         {
            return;
         }
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§-'§);
         }
         else
         {
            this.§[Y§();
         }
      }
      
      private function §>v§() : Boolean
      {
         var pageURL:String = null;
         try
         {
            pageURL = ExternalInterface.call("window.location.href.toString");
         }
         catch(e:Error)
         {
            pageURL == null;
         }
         catch(e:SecurityError)
         {
            pageURL == null;
         }
         if(pageURL == null || pageURL.indexOf(".swf") != -1)
         {
            navigateToURL(new URLRequest("http://heikki.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
      
      private function §'!W§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§'!W§);
         this.init();
      }
      
      private function §-'§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§-'§);
         this.§[Y§();
      }
      
      private function §[Y§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§>s§);
         new §,-§(this);
      }
      
      private function §>s§(param1:UncaughtErrorEvent) : void
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
         if(!this.§%O§)
         {
            this.§%O§ = true;
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
            §!!Z§.§1!?§(§+!G§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§1L§.§<!,§ != null)
            {
               _loc4_ = §1L§.§<!,§.§>!-§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §7!4§.§"P§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§5!5§.§-!+§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §!!Z§.§1!?§(§+!G§.§7K§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §!!Z§.§1!?§(§+!G§.§^!§,_loc12_,_loc6_);
            }
         }
      }
   }
}
