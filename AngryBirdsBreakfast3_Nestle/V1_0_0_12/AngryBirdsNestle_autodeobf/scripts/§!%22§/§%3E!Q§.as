package §!"§
{
   import §#!]§.§^!m§;
   import §6!!§.§4G§;
   import §="5§.HighscoreSidebar;
   import §?u§.§48§;
   import §^>§.§2"&§;
   import §`!s§.§5P§;
   import §`!s§.§^2§;
   import com.angrybirds.utils.§?!-§;
   import com.angrybirds.utils.§?z§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §>!Q§ implements §?z§
   {
       
      
      private var §&I§:§@]§;
      
      public function §>!Q§(param1:§@]§)
      {
         super();
         this.§&I§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc2_:Object = §?!-§.§4!-§((param1.currentTarget as URLLoader).data);
         this.§&I§.§?Q§.close();
         if(_loc2_.security)
         {
            §^!7§.§>!8§ = new §0"6§();
            §^!7§.§>!8§.name = _loc2_.nickName;
            §^!7§.§>!8§.id = _loc2_.id;
            §^!7§.§>!8§.§#!m§ = _loc2_.security;
            §^!7§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §^!7§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §48§.§"f§(§^!7§.levelProfile);
            if(_loc3_ != §^!7§.levelProfileSecurity)
            {
               §^!7§.§>!8§ = new §0"6§();
               (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@I§ = "SECURITY_ERROR";
               this.§&I§.dispatchEvent(_loc6_);
               return;
            }
            §^!7§.§0!3§();
            (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§'R§ = true;
            §5P§.§ !F§(§5P§.§[s§);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§["6§);
            this.§&I§.dispatchEvent(_loc6_);
            (_loc4_ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§).reset();
            _loc4_.§!!"§();
            _loc4_.§5N§(HighscoreSidebar.§4N§);
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§-!w§();
            (§-!2§.§7O§ as AngryBirdsCustom).§]a§(§^!m§.§]!y§);
            _loc5_ = §^2§.§&!;§.§1!a§().toLowerCase() + "_" + §^2§.§&!;§.§]T§().toUpperCase();
            §4G§.§&!7§("onFlashLanguageChange",_loc5_);
         }
         else if(_loc2_.error)
         {
            _loc7_ = _loc2_.error;
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@I§ = _loc7_;
            _loc6_.field = _loc2_.field;
            this.§&I§.dispatchEvent(_loc6_);
            §5P§.§ !F§(§5P§.§9=§);
         }
      }
      
      public function §%+§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5" §(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§@I§ = §2"&§.CONNECTION_ERROR_RETRY;
         this.§&I§.dispatchEvent(_loc2_);
      }
   }
}
