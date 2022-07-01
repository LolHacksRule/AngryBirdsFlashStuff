package §-!G§
{
   import §&5§.HighscoreSidebar;
   import §,!9§.§>"$§;
   import §?!E§.§]l§;
   import §?-§.§do §;
   import §[j§.§%p§;
   import §`6§.§!!]§;
   import §`6§.§6,§;
   import com.angrybirds.utils.§!!^§;
   import com.angrybirds.utils.§?§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3!L§ implements §!!^§
   {
       
      
      private var §2!b§:§]!V§;
      
      public function §3!L§(param1:§]!V§)
      {
         super();
         this.§2!b§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc2_:Object = §?§.§8!B§((param1.currentTarget as URLLoader).data);
         this.§2!b§.§9L§.close();
         if(_loc2_.security)
         {
            §!!Y§.§9!L§ = new §"$§();
            §!!Y§.§9!L§.name = _loc2_.nickName;
            §!!Y§.§9!L§.id = _loc2_.id;
            §!!Y§.§9!L§.§4!z§ = _loc2_.security;
            §!!Y§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §!!Y§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §%p§.§3m§(§!!Y§.levelProfile);
            if(_loc3_ != §!!Y§.levelProfileSecurity)
            {
               §!!Y§.§9!L§ = new §"$§();
               (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@!;§ = "SECURITY_ERROR";
               this.§2!b§.dispatchEvent(_loc6_);
               return;
            }
            §!!Y§.§>!k§();
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§&!P§ = true;
            §6,§.§8"0§(§6,§.§^!C§);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§9!>§);
            this.§2!b§.dispatchEvent(_loc6_);
            (_loc4_ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§).reset();
            _loc4_.§1!4§();
            _loc4_.§0!"§(HighscoreSidebar.§%!3§);
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§6c§();
            (§-!l§.§"x§ as AngryBirdsCustom).§0!w§(§]l§.§+B§);
            _loc5_ = §!!]§.§?!+§.§[!;§().toLowerCase() + "_" + §!!]§.§?!+§.§<N§().toUpperCase();
            §do §.§>"-§("onFlashLanguageChange",_loc5_);
         }
         else if(_loc2_.error)
         {
            _loc7_ = _loc2_.error;
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@!;§ = _loc7_;
            _loc6_.field = _loc2_.field;
            this.§2!b§.dispatchEvent(_loc6_);
            §6,§.§8"0§(§6,§.§@"§);
         }
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&!`§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§@!;§ = §>"$§.CONNECTION_ERROR_RETRY;
         this.§2!b§.dispatchEvent(_loc2_);
      }
   }
}
