package
{
   import §,J§.§7!A§;
   import §3h§.§8q§;
   import §4!9§.§5d§;
   import §4!9§.§>6§;
   import §?!5§.§2d§;
   import §?!P§.§@@§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class HeikkiAngryBirdsCanvas extends §8q§
   {
      
      public static const VERSION:String = "0.0.0.1";
       
      
      private var §%!<§:Boolean = false;
      
      public function HeikkiAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§?q§);
         }
      }
      
      private function init() : void
      {
         if(!this.§[!E§())
         {
            return;
         }
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§6M§);
         }
         else
         {
            this.§,5§();
         }
      }
      
      private function §[!E§() : Boolean
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
            navigateToURL(new URLRequest("http://heikki.angrybirds.com"));
            return false;
         }
         return true;
      }
      
      private function §?q§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§?q§);
         this.init();
      }
      
      private function §6M§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§6M§);
         this.§,5§();
      }
      
      private function §,5§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§?b§);
         new §1F§(this);
      }
      
      private function §?b§(param1:UncaughtErrorEvent) : void
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
         if(!this.§%!<§)
         {
            this.§%!<§ = true;
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
            §>6§.§%;§(§5d§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§@@§.§&9§ != null)
            {
               _loc4_ = §@@§.§&9§.§;!Z§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §7!A§.§ !A§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§2d§.§#<§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §>6§.§%;§(§5d§.§8!A§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §>6§.§%;§(§5d§.§7!+§,_loc12_,_loc6_);
            }
         }
      }
   }
}
