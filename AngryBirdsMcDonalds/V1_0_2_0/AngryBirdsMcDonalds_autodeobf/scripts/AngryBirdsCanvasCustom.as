package
{
   import §+-§.§3!5§;
   import §4!$§.§<!2§;
   import §8!M§.§'!]§;
   import §9!W§.§=!@§;
   import §;!j§.§'s§;
   import §;!j§.§25§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class AngryBirdsCanvasCustom extends §'!]§
   {
      
      public static const VERSION:String = "0.0.0.1";
       
      
      private var §return§:Boolean = false;
      
      public function AngryBirdsCanvasCustom()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§@L§);
         }
      }
      
      private function init() : void
      {
         if(!this.§^!a§())
         {
            return;
         }
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§;O§);
         }
         else
         {
            this.§;`§();
         }
      }
      
      private function §^!a§() : Boolean
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
      
      private function §@L§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§@L§);
         this.init();
      }
      
      private function §;O§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§;O§);
         this.§;`§();
      }
      
      private function §;`§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§2!$§);
         new §'j§(this);
      }
      
      private function §2!$§(param1:UncaughtErrorEvent) : void
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
         if(!this.§return§)
         {
            this.§return§ = true;
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
            §25§.§%!<§(§'s§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§=!@§.§4!X§ != null)
            {
               _loc4_ = §=!@§.§4!X§.§6T§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §3!5§.§-!2§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§<!2§.§ !p§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §25§.§%!<§(§'s§.§`@§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §25§.§%!<§(§'s§.§13§,_loc12_,_loc6_,_loc2_);
            }
         }
      }
   }
}
