package
{
   import §#!<§.§8!3§;
   import §%!5§.§;D§;
   import §%Y§.StateConnecting;
   import §'O§.§!#§;
   import §'O§.§1E§;
   import §1!§.§@!Q§;
   import §=@§.§"!S§;
   import §=Z§.§4N§;
   import §]i§.§]E§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §4N§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §3e§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§'0§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§9!J§);
         }
         else
         {
            this.§8§();
         }
      }
      
      private function §"p§() : Boolean
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
         §;D§.addCallback("loginPlayer",this.loginPlayer);
         §;D§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§8!3§.§^!E§ == null)
            {
               this.§4"§(param1);
            }
            else if(§8!3§.§^!E§.name != param1)
            {
               this.logout();
               this.§4"§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §4"§(param1:String) : void
      {
         §8!3§.§^!E§ = new §]E§();
         §8!3§.§7%§ = §"!S§.§0!W§();
         §8!3§.§^!E§.§5@§ = param1;
         §8!3§.§^!E§.name = param1;
         §1R§.§]c§.§8b§();
      }
      
      public function logout() : Boolean
      {
         §8!3§.§^!E§ = null;
         §8!3§.§7%§ = null;
         §1R§.§]c§.§%!G§(StateConnecting.§7!Q§);
         return true;
      }
      
      private function §'0§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§'0§);
         this.init();
      }
      
      private function §9!J§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§9!J§);
         this.§8§();
      }
      
      private function §>!M§(param1:Event) : void
      {
      }
      
      private function §9!Y§(param1:Event) : void
      {
      }
      
      private function §8§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§8R§);
         new §1R§(this);
      }
      
      private function §8R§(param1:UncaughtErrorEvent) : void
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
         if(!this.§3e§)
         {
            this.§3e§ = true;
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
            §1E§.§6!S§(§!#§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§@!Q§.§'x§ != null)
            {
               _loc4_ = §@!Q§.§'x§.§%P§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §1E§.§6!S§(§!#§.§[8§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §1E§.§6!S§(§!#§.§3!6§,_loc10_,_loc6_);
            }
         }
      }
   }
}
