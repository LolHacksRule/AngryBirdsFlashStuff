package §"q§
{
   import §!!&§.§!!q§;
   import §!!&§.§`!$§;
   import §'!'§.§0!p§;
   import §0!E§.HighscoreSidebar;
   import §3@§.§=W§;
   import §;!y§.§4![§;
   import §]!V§.§&g§;
   import com.angrybirds.utils.§#!z§;
   import com.angrybirds.utils.§@>§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §@" § implements §#!z§
   {
       
      
      private var §8l§:§8[§;
      
      public function §@" §(param1:§8[§)
      {
         super();
         this.§8l§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc2_:Object = §@>§.§&a§((param1.currentTarget as URLLoader).data);
         this.§8l§.§&!c§.close();
         if(_loc2_.security)
         {
            §6,§.§!!7§ = new §2!L§();
            §6,§.§!!7§.name = _loc2_.nickName;
            §6,§.§!!7§.id = _loc2_.id;
            §6,§.§!!7§.§>!"§ = _loc2_.security;
            §6,§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §6,§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §=W§.§76§(§6,§.levelProfile);
            if(_loc3_ != §6,§.levelProfileSecurity)
            {
               §6,§.§!!7§ = new §2!L§();
               (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§;P§ = "SECURITY_ERROR";
               this.§8l§.dispatchEvent(_loc6_);
               return;
            }
            §6,§.§," §();
            (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§2!?§ = true;
            §!!q§.§-!Y§(§!!q§.§"!r§);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§<9§);
            this.§8l§.dispatchEvent(_loc6_);
            (_loc4_ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§).reset();
            _loc4_.§#!3§();
            _loc4_.§9!s§(HighscoreSidebar.§4!T§);
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§#!r§();
            (§,!X§.§>!G§ as AngryBirdsCustom).§8!`§(§&g§.§+a§);
            _loc5_ = §`!$§.§>!P§.§?!2§().toLowerCase() + "_" + §`!$§.§>!P§.§?""§().toUpperCase();
            §0!p§.§`_§("onFlashLanguageChange",_loc5_);
         }
         else if(_loc2_.error)
         {
            _loc7_ = _loc2_.error;
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§;P§ = _loc7_;
            _loc6_.field = _loc2_.field;
            this.§8l§.dispatchEvent(_loc6_);
            §!!q§.§-!Y§(§!!q§.§=U§);
         }
      }
      
      public function §9!@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §@!2§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§;P§ = §4![§.CONNECTION_ERROR_RETRY;
         this.§8l§.dispatchEvent(_loc2_);
      }
   }
}
