package
{
   import §"!C§.§9>§;
   import §"v§.§5!T§;
   import §1!D§.§"!6§;
   import §1!D§.§]!§;
   import §2o§.§<H§;
   import §`!d§.§7!§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class AngryBirdsCanvasCustom extends §9>§
   {
      
      public static const VERSION:String = "0.0.0.1";
       
      
      private var §4! §:Boolean = false;
      
      public function AngryBirdsCanvasCustom()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§=9§);
         }
      }
      
      private function init() : void
      {
         if(!this.§1!;§())
         {
            return;
         }
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§2!K§);
         }
         else
         {
            this.§"!&§();
         }
      }
      
      private function §1!;§() : Boolean
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
      
      private function §=9§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§=9§);
         this.init();
      }
      
      private function §2!K§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§2!K§);
         this.§"!&§();
      }
      
      private function §"!&§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§0m§);
         new §;!4§(this);
      }
      
      private function §0m§(param1:UncaughtErrorEvent) : void
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
         if(!this.§4! §)
         {
            this.§4! § = true;
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
            §]!§.§>G§(§"!6§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§<H§.§-!V§ != null)
            {
               _loc4_ = §<H§.§-!V§.§>;§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §7!§.§+e§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§5!T§.§3h§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §]!§.§>G§(§"!6§.§3g§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §]!§.§>G§(§"!6§.§7#§,_loc12_,_loc6_,_loc2_);
            }
         }
      }
   }
}
