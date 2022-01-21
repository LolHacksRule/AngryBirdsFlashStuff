package
{
   import § e§.§0y§;
   import § e§.§?`§;
   import §#M§.§+!Z§;
   import §5%§.§%!,§;
   import §7_§.§^d§;
   import §=!K§.§do§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class AngryBirdsCanvasCustom extends §%!,§
   {
      
      public static const VERSION:String = "0.0.0.1";
       
      
      private var §7j§:Boolean = false;
      
      public function AngryBirdsCanvasCustom()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§1V§);
         }
      }
      
      private function init() : void
      {
         if(!this.§6=§())
         {
            return;
         }
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§8J§);
         }
         else
         {
            this.§9V§();
         }
      }
      
      private function §6=§() : Boolean
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
            navigateToURL(new URLRequest("http://mcd.angrybirds.com"));
            return false;
         }
         return true;
      }
      
      private function §1V§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§1V§);
         this.init();
      }
      
      private function §8J§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§8J§);
         this.§9V§();
      }
      
      private function §9V§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§;5§);
         new § 4§(this);
      }
      
      private function §;5§(param1:UncaughtErrorEvent) : void
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
         if(!this.§7j§)
         {
            this.§7j§ = true;
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
            §?`§.§%p§(§0y§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§+!Z§.§6"§ != null)
            {
               _loc4_ = §+!Z§.§6"§.§<!i§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §^d§.§@P§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§do§.§@$§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §?`§.§%p§(§0y§.§0!B§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §?`§.§%p§(§0y§.§88§,_loc12_,_loc6_,_loc2_);
            }
         }
      }
   }
}
