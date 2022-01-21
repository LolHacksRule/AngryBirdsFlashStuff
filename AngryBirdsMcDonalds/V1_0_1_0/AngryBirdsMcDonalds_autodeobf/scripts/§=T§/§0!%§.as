package §=T§
{
   import §"!§.§`!A§;
   import §%<§.§+V§;
   import §9!8§.§0!7§;
   import §^5§.§]!,§;
   import flash.display.Stage;
   
   public class §0!%§
   {
      
      protected static var §9g§:StatePopupManager;
      
      protected static var §;!X§:§0!7§;
      
      protected static var §%s§:§0!7§;
      
      private static var §<!B§:Array = [];
      
      private static var §-K§:Array = [];
       
      
      public function §0!%§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§9g§)
         {
            return;
         }
         §9g§ = new StatePopupManager();
      }
      
      private static function §"7§(param1:§0!7§) : void
      {
         §;!X§ = param1;
         §-K§.push(§;!X§.§<;§);
         §;!X§.changeState(§9g§);
      }
      
      public static function §7!^§(param1:§0!7§, param2:Boolean = true) : void
      {
         §"7§(param1);
         var _loc3_:§]!,§ = §-K§[0];
         var _loc4_:§[Z§ = new §[Z§(§;!X§,§9g§,_loc3_);
         §1R§(_loc4_,param2);
      }
      
      public static function §&!=§(param1:§0!7§, param2:Boolean = true, param3:String = "") : void
      {
         §"7§(param1);
         var _loc4_:§]!,§ = §-K§[0];
         var _loc5_:§&j§ = new §&j§(§;!X§,§9g§,_loc4_,param3);
         §1R§(_loc5_,param2);
      }
      
      public static function §0!k§(param1:§0!7§, param2:Boolean = true) : void
      {
         §"7§(param1);
         var _loc3_:§]!,§ = §-K§[0];
         var _loc4_:§`!A§ = new §`!A§(§;!X§,§9g§,_loc3_);
         §1R§(_loc4_,param2);
      }
      
      public static function §%!D§(param1:§0!7§, param2:Boolean = true) : void
      {
         §"7§(param1);
         var _loc3_:§]!,§ = §-K§[0];
         var _loc4_:§9x§ = new §9x§(§;!X§,§9g§,_loc3_);
         §1R§(_loc4_,param2);
      }
      
      public static function §!Q§(param1:§0!7§, param2:Boolean = true) : void
      {
         §"7§(param1);
         var _loc3_:§]!,§ = §-K§[0];
         var _loc4_:§@N§ = new §@N§(§;!X§,§9g§,_loc3_);
         §1R§(_loc4_,param2);
      }
      
      public static function §1!c§(param1:§0!7§, param2:Boolean = true) : void
      {
         §"7§(param1);
         var _loc3_:§]!,§ = §-K§[0];
         var _loc4_:§!!_§ = new §!!_§(§;!X§,§9g§,_loc3_);
         §1R§(_loc4_,param2);
      }
      
      public static function §]$§(param1:§0!7§, param2:Boolean = true) : void
      {
         §"7§(param1);
         var _loc3_:§]!,§ = §-K§[0];
         var _loc4_:§;!E§ = new §;!E§(§;!X§,§9g§,_loc3_);
         §1R§(_loc4_,param2);
      }
      
      public static function §@9§(param1:§0!7§, param2:Boolean = true) : void
      {
         §"7§(param1);
         var _loc3_:§]!,§ = §-K§[0];
         var _loc4_:§1d§ = new §1d§(§;!X§,§9g§,_loc3_);
         §1R§(_loc4_,param2,true);
      }
      
      private static function §1R§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§^E§.§ !m§,§ !W§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§;!4§.§9!L§ + §;!4§.§4!4§) / 2;
         }
         else
         {
            param1.x = §;!4§.§9!L§ / 2;
         }
         param1.y = §;!4§.§<!T§ / 2;
         §<!B§.push(param1);
      }
      
      public static function updateTextFields() : void
      {
         var _loc1_:Popup = null;
         for each(_loc1_ in §<!B§)
         {
            _loc1_.updateTextFields();
         }
      }
      
      private static function § !W§(param1:§^E§) : void
      {
         if(§-K§.length > 0)
         {
            §;!X§.changeState(§-K§.pop());
         }
         var _loc2_:Popup = param1.popup;
         _loc2_.mClip.removeEventListener(§^E§.§ !m§,§ !W§);
         §+V§.sHighscoreSidebar.enableLoginButton(!§;!4§.§8'§.§2!^§);
         §+V§.sHighscoreSidebar.enableLogOutButton(§;!4§.§8'§.§2!^§);
         var _loc3_:int = 0;
         while(_loc3_ < §<!B§.length)
         {
            if(§<!B§[_loc3_] == _loc2_)
            {
               §<!B§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §6=§() : Boolean
      {
         return §<!B§.length > 0;
      }
      
      public static function get §]V§() : Array
      {
         return §<!B§;
      }
   }
}
