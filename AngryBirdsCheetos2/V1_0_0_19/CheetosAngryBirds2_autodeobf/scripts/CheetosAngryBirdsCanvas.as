package
{
   import §!V§.§<!g§;
   import §!V§.§>d§;
   import §1!E§.§>f§;
   import §1!E§.§class§;
   import §=!g§.§!!@§;
   import §[h§.§0G§;
   import §`h§.§@!Z§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   import §throw§.§=! §;
   
   public class CheetosAngryBirdsCanvas extends §=! §
   {
      
      public static const VERSION:String = "(r106540)";
       
      
      private var §`I§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§-!e§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§;x§);
         }
         else
         {
            this.§6!'§();
         }
      }
      
      private function §<t§() : Boolean
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
         §!!@§.addCallback("loginPlayer",this.§#>§);
         §!!@§.addCallback("logout",this.§&!a§);
         §!!@§.addCallback("creditsAdded",this.§%!D§);
         §!!@§.addCallback("reportSessionErrorToFlash",this.§6!g§);
      }
      
      private function §#>§(param1:Object) : Boolean
      {
         if(param1 && param1.id)
         {
            if(§>f§.§%!`§ == null)
            {
               this.§!I§(param1);
            }
            else if(§>f§.§%!`§.id != param1.id)
            {
               this.logout();
               this.§!I§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §!I§(param1:Object) : void
      {
         var _loc2_:String = null;
         §>f§.§%!`§ = new §class§();
         §>f§.§5!`§ = §0G§.§?e§();
         §>f§.§%!`§.name = param1.nickName;
         §>f§.§%!`§.id = param1.id;
         §>f§.§%!`§.verified = param1.verified;
         §>f§.§%!`§.§#]§ = param1.security;
         if(param1.tutorials is Array)
         {
            for each(_loc2_ in param1.tutorials)
            {
               §5!9§.§#%§.§2!;§(_loc2_);
            }
         }
         §>f§.levelProfile = param1.levelProfile;
         §>f§.§1!P§();
         §>f§.§%!`§.§06§.§%!L§();
         §5!9§.§-!O§.§51§();
      }
      
      private function §&!a§() : Boolean
      {
         this.logout();
         return true;
      }
      
      private function logout() : void
      {
         §>f§.logout();
      }
      
      private function §%!D§(param1:int) : Boolean
      {
         if(§>f§.§%!`§ && §>f§.§%!`§.§06§)
         {
            §>f§.§%!`§.§06§.§5<§(param1);
            return true;
         }
         return false;
      }
      
      private function §6!g§(param1:String) : void
      {
         §>f§.logout();
      }
      
      private function §-!e§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§-!e§);
         this.init();
      }
      
      private function §;x§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§;x§);
         this.§6!'§();
      }
      
      private function §"!%§(param1:Event) : void
      {
      }
      
      private function §+r§(param1:Event) : void
      {
      }
      
      private function §6!'§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§%!!§);
         new §5!9§(this);
      }
      
      private function §%!!§(param1:UncaughtErrorEvent) : void
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
         if(!this.§`I§)
         {
            this.§`I§ = true;
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
            §>d§.§@Y§(§<!g§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§@!Z§.§^Y§ != null)
            {
               _loc4_ = §@!Z§.§^Y§.§@n§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §>d§.§@Y§(§<!g§.§^!A§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §>d§.§@Y§(§<!g§.§#!b§,_loc10_,_loc6_);
            }
         }
      }
   }
}
