package §+F§
{
   import § #§.§[!B§;
   import §&!V§.§=O§;
   import §3g§.§"!n§;
   import §7-§.§[!$§;
   import flash.display.Stage;
   
   public class § !J§
   {
      
      protected static var §4!m§:StatePopupManager;
      
      protected static var §+e§:§"!n§;
      
      protected static var §#!V§:§"!n§;
      
      private static var §"!J§:Array = [];
      
      private static var §;Q§:Array = [];
       
      
      public function § !J§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§4!m§)
         {
            return;
         }
         §4!m§ = new StatePopupManager();
      }
      
      private static function §0&§(param1:§"!n§) : void
      {
         §+e§ = param1;
         §;Q§.push(§+e§.§?<§);
         §+e§.changeState(§4!m§);
      }
      
      public static function §3!>§(param1:§"!n§, param2:Boolean = true) : void
      {
         §0&§(param1);
         var _loc3_:§=O§ = §;Q§[0];
         var _loc4_:§+u§ = new §+u§(§+e§,§4!m§,_loc3_);
         §=F§(_loc4_,param2);
      }
      
      public static function § 9§(param1:§"!n§, param2:Boolean = true, param3:String = "") : void
      {
         §0&§(param1);
         var _loc4_:§=O§ = §;Q§[0];
         var _loc5_:§#,§ = new §#,§(§+e§,§4!m§,_loc4_,param3);
         §=F§(_loc5_,param2);
      }
      
      public static function §62§(param1:§"!n§, param2:Boolean = true) : void
      {
         §0&§(param1);
         var _loc3_:§=O§ = §;Q§[0];
         var _loc4_:§[!B§ = new §[!B§(§+e§,§4!m§,_loc3_);
         §=F§(_loc4_,param2);
      }
      
      public static function §-!E§(param1:§"!n§, param2:Boolean = true) : void
      {
         §0&§(param1);
         var _loc3_:§=O§ = §;Q§[0];
         var _loc4_:§^-§ = new §^-§(§+e§,§4!m§,_loc3_);
         §=F§(_loc4_,param2);
      }
      
      public static function §^7§(param1:§"!n§, param2:Boolean = true) : void
      {
         §0&§(param1);
         var _loc3_:§=O§ = §;Q§[0];
         var _loc4_:§""§ = new §""§(§+e§,§4!m§,_loc3_);
         §=F§(_loc4_,param2);
      }
      
      public static function §'!?§(param1:§"!n§, param2:Boolean = true) : void
      {
         §0&§(param1);
         var _loc3_:§=O§ = §;Q§[0];
         var _loc4_:§<]§ = new §<]§(§+e§,§4!m§,_loc3_);
         §=F§(_loc4_,param2);
      }
      
      public static function §%!i§(param1:§"!n§, param2:Boolean = true) : void
      {
         §0&§(param1);
         var _loc3_:§=O§ = §;Q§[0];
         var _loc4_:§2!e§ = new §2!e§(§+e§,§4!m§,_loc3_);
         §=F§(_loc4_,param2);
      }
      
      public static function §<!&§(param1:§"!n§, param2:Boolean = true) : void
      {
         §0&§(param1);
         var _loc3_:§=O§ = §;Q§[0];
         var _loc4_:§--§ = new §--§(§+e§,§4!m§,_loc3_);
         §=F§(_loc4_,param2,true);
      }
      
      private static function §=F§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§5S§.§'!Z§,§]!P§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§2!M§.§[!V§ + §2!M§.§&-§) / 2;
         }
         else
         {
            param1.x = §2!M§.§[!V§ / 2;
         }
         param1.y = §2!M§.§#k§ / 2;
         §"!J§.push(param1);
      }
      
      public static function updateTextFields() : void
      {
         var _loc1_:Popup = null;
         for each(_loc1_ in §"!J§)
         {
            _loc1_.updateTextFields();
         }
      }
      
      private static function §]!P§(param1:§5S§) : void
      {
         if(§;Q§.length > 0)
         {
            §+e§.changeState(§;Q§.pop());
         }
         var _loc2_:Popup = param1.popup;
         _loc2_.mClip.removeEventListener(§5S§.§'!Z§,§]!P§);
         §[!$§.sHighscoreSidebar.enableLoginButton(!§2!M§.§&!#§.§-!Z§);
         §[!$§.sHighscoreSidebar.enableLogOutButton(§2!M§.§&!#§.§-!Z§);
         var _loc3_:int = 0;
         while(_loc3_ < §"!J§.length)
         {
            if(§"!J§[_loc3_] == _loc2_)
            {
               §"!J§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §#!D§() : Boolean
      {
         return §"!J§.length > 0;
      }
      
      public static function get §4!'§() : Array
      {
         return §"!J§;
      }
   }
}
