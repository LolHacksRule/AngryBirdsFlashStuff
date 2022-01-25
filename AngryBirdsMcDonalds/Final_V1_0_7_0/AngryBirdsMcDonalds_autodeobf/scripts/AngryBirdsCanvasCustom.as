package
{
   import §#!q§.§6!1§;
   import §#!q§.§6!?§;
   import §%!5§.§7;§;
   import §,o§.§ j§;
   import §-!F§.§2[§;
   import §each §.§'!3§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class AngryBirdsCanvasCustom extends § j§
   {
      
      public static const VERSION:String = "0.0.0.1";
       
      
      private const § v§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-mcdonalds-cn.appspot\.com))|(angrybirds\-mcdonalds-cn.appspot\.com)|(mcd\.angrybirds\.com))(.*)/;
      
      private var §+%§:Boolean = false;
      
      public function AngryBirdsCanvasCustom()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§;!D§);
         }
      }
      
      private function init() : void
      {
         if(!this.§`L§())
         {
            return;
         }
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§6C§);
         }
         else
         {
            this.§]!&§();
         }
      }
      
      private function §`L§() : Boolean
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
            navigateToURL(new URLRequest("http://mcd.angrybirds.com"),"_self");
            return false;
         }
         if(!this.§ v§.test(pageURL))
         {
            navigateToURL(new URLRequest("http://mcd.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
      
      private function §;!D§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§;!D§);
         this.init();
      }
      
      private function §6C§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§6C§);
         this.§]!&§();
      }
      
      private function §]!&§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§&g§);
         new §9!_§(this);
      }
      
      private function §&g§(param1:UncaughtErrorEvent) : void
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
         if(!this.§+%§)
         {
            this.§+%§ = true;
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
            §6!?§.§>!I§(§6!1§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§7;§.§8!D§ != null)
            {
               _loc4_ = §7;§.§8!D§.§2!"§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §2[§.§^N§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§'!3§.§#T§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §6!?§.§>!I§(§6!1§.§-6§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §6!?§.§>!I§(§6!1§.§ !c§,_loc12_,_loc6_,_loc2_);
            }
         }
      }
   }
}
