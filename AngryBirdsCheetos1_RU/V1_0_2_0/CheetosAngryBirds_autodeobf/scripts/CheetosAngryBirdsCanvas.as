package
{
   import §#J§.;
   import §#[§.§#!Q§;
   import §#[§.§9;§;
   import §+!8§.StateConnecting;
   import §,'§.§[2§;
   import §1_§.§[V§;
   import §8O§.§'S§;
   import §@!W§.§8!W§;
   import §^C§.§'!?§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §[V§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §"K§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§%$§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§#-§);
         }
         else
         {
            this.§3!?§();
         }
      }
      
      private function §,7§() : Boolean
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
            navigateToURL(new URLRequest("http://cheetos.angrybirds.com"));
            return false;
         }
         return true;
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         §[2§.addCallback("loginPlayer",this.loginPlayer);
         §[2§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§'S§.§^!+§ == null)
            {
               this.§<!S§(param1);
            }
            else if(§'S§.§^!+§.name != param1)
            {
               this.logout();
               this.§<!S§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §<!S§(param1:String) : void
      {
         §'S§.§^!+§ = new §'!?§();
         §'S§.§ !C§ = §#5§.§#c§();
         §'S§.§^!+§.§!X§ = param1;
         §'S§.§^!+§.name = param1;
         §@!!§.§%F§.§-N§();
      }
      
      public function logout() : Boolean
      {
         §'S§.§^!+§ = null;
         §'S§.§ !C§ = null;
         §@!!§.§%F§.§3S§(StateConnecting.§,!+§);
         return true;
      }
      
      private function §%$§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§%$§);
         this.init();
      }
      
      private function §#-§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§#-§);
         this.§3!?§();
      }
      
      private function §2!&§(param1:Event) : void
      {
      }
      
      private function §-t§(param1:Event) : void
      {
      }
      
      private function §3!?§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§0c§);
         new §@!!§(this);
      }
      
      private function §0c§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:Error = null;
         var _loc9_:ErrorEvent = null;
         var _loc10_:String = null;
         if(!this.§"K§)
         {
            this.§"K§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
            if(param1.error is Error)
            {
               _loc2_ = (_loc8_ = param1.error as Error).errorID;
               _loc5_ = _loc8_.message;
               _loc3_ = _loc8_.getStackTrace();
            }
            else if(param1.error is ErrorEvent)
            {
               _loc2_ = (_loc9_ = param1.error as ErrorEvent).errorID;
            }
            §#!Q§.§ 3§(§9;§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§8!W§.§#!8§ != null)
            {
               _loc4_ = §8!W§.§#!8§.§@!?§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §#!Q§.§ 3§(§9;§.§9!1§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §#!Q§.§ 3§(§9;§.§-!Y§,_loc10_,_loc6_);
            }
         }
      }
   }
}
