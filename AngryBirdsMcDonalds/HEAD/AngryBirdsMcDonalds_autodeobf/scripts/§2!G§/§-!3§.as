package §2!G§
{
   import §,!H§.§ for§;
   import §5!W§.§`X§;
   import §7p§.§%g§;
   import §@!7§.§+!O§;
   import flash.display.Stage;
   
   public class §-!3§
   {
      
      protected static var §-5§:StatePopupManager;
      
      protected static var §?N§:§%g§;
      
      protected static var §;Y§:§%g§;
      
      private static var §^!=§:Array = [];
      
      private static var §@!j§:Array = [];
       
      
      public function §-!3§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§-5§)
         {
            return;
         }
         §-5§ = new StatePopupManager();
      }
      
      private static function §-!B§(param1:§%g§) : void
      {
         §?N§ = param1;
         §@!j§.push(§?N§.§`!2§);
         §?N§.changeState(§-5§);
      }
      
      public static function §=!2§(param1:§%g§, param2:Boolean = true) : void
      {
         §-!B§(param1);
         var _loc3_:§ for§ = §@!j§[0];
         var _loc4_:§`!_§ = new §`!_§(§?N§,§-5§,_loc3_);
         §3!Q§(_loc4_,param2);
      }
      
      public static function §+F§(param1:§%g§, param2:Boolean = true, param3:String = "") : void
      {
         §-!B§(param1);
         var _loc4_:§ for§ = §@!j§[0];
         var _loc5_:§'!R§ = new §'!R§(§?N§,§-5§,_loc4_,param3);
         §3!Q§(_loc5_,param2);
      }
      
      public static function §[!J§(param1:§%g§, param2:Boolean = true) : void
      {
         §-!B§(param1);
         var _loc3_:§ for§ = §@!j§[0];
         var _loc4_:§+!O§ = new §+!O§(§?N§,§-5§,_loc3_);
         §3!Q§(_loc4_,param2);
      }
      
      public static function static(param1:§%g§, param2:Boolean = true) : void
      {
         §-!B§(param1);
         var _loc3_:§ for§ = §@!j§[0];
         var _loc4_:§@t§ = new §@t§(§?N§,§-5§,_loc3_);
         §3!Q§(_loc4_,param2);
      }
      
      public static function §]!S§(param1:§%g§, param2:Boolean = true) : void
      {
         §-!B§(param1);
         var _loc3_:§ for§ = §@!j§[0];
         var _loc4_:§8!I§ = new §8!I§(§?N§,§-5§,_loc3_);
         §3!Q§(_loc4_,param2);
      }
      
      public static function §6^§(param1:§%g§, param2:Boolean = true) : void
      {
         §-!B§(param1);
         var _loc3_:§ for§ = §@!j§[0];
         var _loc4_:§%!<§ = new §%!<§(§?N§,§-5§,_loc3_);
         §3!Q§(_loc4_,param2);
      }
      
      public static function §&!b§(param1:§%g§, param2:Boolean = true) : void
      {
         §-!B§(param1);
         var _loc3_:§ for§ = §@!j§[0];
         var _loc4_:§5!,§ = new §5!,§(§?N§,§-5§,_loc3_);
         §3!Q§(_loc4_,param2);
      }
      
      public static function §@!X§(param1:§%g§, param2:Boolean = true) : void
      {
         §-!B§(param1);
         var _loc3_:§ for§ = §@!j§[0];
         var _loc4_:§,!0§ = new §,!0§(§?N§,§-5§,_loc3_);
         §3!Q§(_loc4_,param2,true);
      }
      
      private static function §3!Q§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§09§.§-9§,§"!-§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§3![§.§^e§ + §3![§.§=!S§) / 2;
         }
         else
         {
            param1.x = §3![§.§^e§ / 2;
         }
         param1.y = §3![§.§0Z§ / 2;
         §^!=§.push(param1);
      }
      
      public static function updateTextFields() : void
      {
         var _loc1_:Popup = null;
         for each(_loc1_ in §^!=§)
         {
            _loc1_.updateTextFields();
         }
      }
      
      private static function §"!-§(param1:§09§) : void
      {
         if(§@!j§.length > 0)
         {
            §?N§.changeState(§@!j§.pop());
         }
         var _loc2_:Popup = param1.popup;
         _loc2_.mClip.removeEventListener(§09§.§-9§,§"!-§);
         §`X§.sHighscoreSidebar.enableLoginButton(!§3![§.§5!6§.§%!%§);
         §`X§.sHighscoreSidebar.enableLogOutButton(§3![§.§5!6§.§%!%§);
         var _loc3_:int = 0;
         while(_loc3_ < §^!=§.length)
         {
            if(§^!=§[_loc3_] == _loc2_)
            {
               §^!=§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §&!T§() : Boolean
      {
         return §^!=§.length > 0;
      }
      
      public static function get §^!%§() : Array
      {
         return §^!=§;
      }
   }
}
