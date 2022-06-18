package
{
   import §#!5§.§>!0§;
   import §'Q§.StateConnecting;
   import §,h§.§^7§;
   import §4!R§.§@,§;
   import §9!Z§.§0!1§;
   import §;!X§.§7`§;
   import §[I§.§&^§;
   import §^3§.§=!Z§;
   import §^3§.§@!"§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §^7§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §0! §:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§&!K§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§'e§);
         }
         else
         {
            this.§0@§();
         }
      }
      
      private function §%x§() : Boolean
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
         §>!0§.addCallback("loginPlayer",this.loginPlayer);
         §>!0§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§@,§.§&!;§ == null)
            {
               this.§'9§(param1);
            }
            else if(§@,§.§&!;§.name != param1)
            {
               this.logout();
               this.§'9§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §'9§(param1:String) : void
      {
         §@,§.§&!;§ = new §0!1§();
         §@,§.§!l§ = §&^§.§2,§();
         §@,§.§&!;§.§-%§ = param1;
         §@,§.§&!;§.name = param1;
         §4+§.§;U§.§@!N§();
      }
      
      public function logout() : Boolean
      {
         §@,§.§&!;§ = null;
         §@,§.§!l§ = null;
         §4+§.§;U§.§8z§(StateConnecting.§1o§);
         return true;
      }
      
      private function §&!K§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§&!K§);
         this.init();
      }
      
      private function §'e§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§'e§);
         this.§0@§();
      }
      
      private function §!h§(param1:Event) : void
      {
      }
      
      private function §0"§(param1:Event) : void
      {
      }
      
      private function §0@§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§;@§);
         new §4+§(this);
      }
      
      private function §;@§(param1:UncaughtErrorEvent) : void
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
         if(!this.§0! §)
         {
            this.§0! § = true;
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
            §@!"§.§2^§(§=!Z§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§7`§.§7!A§ != null)
            {
               _loc4_ = §7`§.§7!A§.§]!1§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §@!"§.§2^§(§=!Z§.§>!7§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §@!"§.§2^§(§=!Z§.§;f§,_loc10_,_loc6_);
            }
         }
      }
   }
}
