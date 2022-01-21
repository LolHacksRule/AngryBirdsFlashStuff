package §^!V§
{
   import §4%§.§%0§;
   import §5<§.§-!a§;
   import §6!Q§.§ !"§;
   import §@`§.§>!S§;
   import flash.display.Stage;
   
   public class §^!j§
   {
      
      protected static var §@Y§:StatePopupManager;
      
      protected static var §'Y§:§>!S§;
      
      protected static var §`M§:§>!S§;
      
      private static var §-l§:Array = [];
      
      private static var §+L§:Array = [];
       
      
      public function §^!j§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§@Y§)
         {
            return;
         }
         §@Y§ = new StatePopupManager();
      }
      
      private static function §6X§(param1:§>!S§) : void
      {
         §'Y§ = param1;
         §+L§.push(§'Y§.§%J§);
         §'Y§.changeState(§@Y§);
      }
      
      public static function §-&§(param1:§>!S§, param2:Boolean = true) : void
      {
         §6X§(param1);
         var _loc3_:§ !"§ = §+L§[0];
         var _loc4_:§@!g§ = new §@!g§(§'Y§,§@Y§,_loc3_);
         §^!N§(_loc4_,param2);
      }
      
      public static function §!f§(param1:§>!S§, param2:Boolean = true, param3:String = "") : void
      {
         §6X§(param1);
         var _loc4_:§ !"§ = §+L§[0];
         var _loc5_:§1Z§ = new §1Z§(§'Y§,§@Y§,_loc4_,param3);
         §^!N§(_loc5_,param2);
      }
      
      public static function §0>§(param1:§>!S§, param2:Boolean = true) : void
      {
         §6X§(param1);
         var _loc3_:§ !"§ = §+L§[0];
         var _loc4_:§-!a§ = new §-!a§(§'Y§,§@Y§,_loc3_);
         §^!N§(_loc4_,param2);
      }
      
      public static function §0t§(param1:§>!S§, param2:Boolean = true) : void
      {
         §6X§(param1);
         var _loc3_:§ !"§ = §+L§[0];
         var _loc4_:§&!F§ = new §&!F§(§'Y§,§@Y§,_loc3_);
         §^!N§(_loc4_,param2);
      }
      
      public static function §;!R§(param1:§>!S§, param2:Boolean = true) : void
      {
         §6X§(param1);
         var _loc3_:§ !"§ = §+L§[0];
         var _loc4_:§!t§ = new §!t§(§'Y§,§@Y§,_loc3_);
         §^!N§(_loc4_,param2);
      }
      
      public static function §0?§(param1:§>!S§, param2:Boolean = true) : void
      {
         §6X§(param1);
         var _loc3_:§ !"§ = §+L§[0];
         var _loc4_:§5!#§ = new §5!#§(§'Y§,§@Y§,_loc3_);
         §^!N§(_loc4_,param2);
      }
      
      public static function §9S§(param1:§>!S§, param2:Boolean = true) : void
      {
         §6X§(param1);
         var _loc3_:§ !"§ = §+L§[0];
         var _loc4_:§3G§ = new §3G§(§'Y§,§@Y§,_loc3_);
         §^!N§(_loc4_,param2);
      }
      
      public static function §>7§(param1:§>!S§, param2:Boolean = true) : void
      {
         §6X§(param1);
         var _loc3_:§ !"§ = §+L§[0];
         var _loc4_:§=W§ = new §=W§(§'Y§,§@Y§,_loc3_);
         §^!N§(_loc4_,param2,true);
      }
      
      private static function §^!N§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§9!O§.§<1§,§`J§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§'j§.§7&§ + §'j§.§6,§) / 2;
         }
         else
         {
            param1.x = §'j§.§7&§ / 2;
         }
         param1.y = §'j§.§+! § / 2;
         §-l§.push(param1);
      }
      
      public static function updateTextFields() : void
      {
         var _loc1_:Popup = null;
         for each(_loc1_ in §-l§)
         {
            _loc1_.updateTextFields();
         }
      }
      
      private static function §`J§(param1:§9!O§) : void
      {
         if(§+L§.length > 0)
         {
            §'Y§.changeState(§+L§.pop());
         }
         var _loc2_:Popup = param1.popup;
         _loc2_.mClip.removeEventListener(§9!O§.§<1§,§`J§);
         §%0§.sHighscoreSidebar.enableLoginButton(!§'j§.§%g§.§"!W§);
         §%0§.sHighscoreSidebar.enableLogOutButton(§'j§.§%g§.§"!W§);
         var _loc3_:int = 0;
         while(_loc3_ < §-l§.length)
         {
            if(§-l§[_loc3_] == _loc2_)
            {
               §-l§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function § &§() : Boolean
      {
         return §-l§.length > 0;
      }
      
      public static function get §2M§() : Array
      {
         return §-l§;
      }
   }
}
