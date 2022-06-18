package
{
   import §!!M§.§,!+§;
   import §#h§.§;!@§;
   import §+!^§.§'Y§;
   import §+d§.§3!9§;
   import §+d§.dynamic;
   import §0A§.§90§;
   import §0L§.§&Y§;
   import §3n§.StateConnecting;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   import §import§.§&^§;
   
   public class CheetosAngryBirdsCanvas extends §90§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §<!L§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§'!a§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§;!C§);
         }
         else
         {
            this.§=g§();
         }
      }
      
      private function §2^§() : Boolean
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
         §&^§.addCallback("loginPlayer",this.loginPlayer);
         §&^§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§&Y§.§>!_§ == null)
            {
               this.§`!J§(param1);
            }
            else if(§&Y§.§>!_§.name != param1)
            {
               this.logout();
               this.§`!J§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §`!J§(param1:String) : void
      {
         §&Y§.§>!_§ = new §,!+§();
         §&Y§.§7!J§ = §;!@§.§5!;§();
         §&Y§.§>!_§.§;S§ = param1;
         §&Y§.§>!_§.name = param1;
         §7!^§.§-!@§.§;!0§();
      }
      
      public function logout() : Boolean
      {
         §&Y§.§>!_§ = null;
         §&Y§.§7!J§ = null;
         §7!^§.§-!@§.§-!I§(StateConnecting.§,F§);
         return true;
      }
      
      private function §'!a§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§'!a§);
         this.init();
      }
      
      private function §;!C§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§;!C§);
         this.§=g§();
      }
      
      private function §]F§(param1:Event) : void
      {
      }
      
      private function §-! §(param1:Event) : void
      {
      }
      
      private function §=g§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§,'§);
         new §7!^§(this);
      }
      
      private function §,'§(param1:UncaughtErrorEvent) : void
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
         if(!this.§<!L§)
         {
            this.§<!L§ = true;
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
            dynamic.§&!V§(§3!9§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§'Y§.§1!&§ != null)
            {
               _loc4_ = §'Y§.§1!&§.§%!P§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            dynamic.§&!V§(§3!9§.§!u§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               dynamic.§&!V§(§3!9§.§ Z§,_loc10_,_loc6_);
            }
         }
      }
   }
}
