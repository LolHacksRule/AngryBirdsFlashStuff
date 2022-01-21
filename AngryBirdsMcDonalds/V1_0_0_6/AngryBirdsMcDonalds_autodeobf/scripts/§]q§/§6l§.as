package §]q§
{
   import §0;§.§3=§;
   import §5!5§.§1!b§;
   import §6Y§.§>!F§;
   import §[l§.§,Q§;
   import flash.display.Stage;
   
   public class §6l§
   {
      
      protected static var §%_§:StatePopupManager;
      
      protected static var §&V§:§3=§;
      
      protected static var §3!c§:§3=§;
      
      private static var §^l§:Array = [];
      
      private static var §9!H§:Array = [];
       
      
      public function §6l§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§%_§)
         {
            return;
         }
         §%_§ = new StatePopupManager();
      }
      
      private static function § Y§(param1:§3=§) : void
      {
         §&V§ = param1;
         §9!H§.push(§&V§.§@!b§);
         §&V§.changeState(§%_§);
      }
      
      public static function §0!P§(param1:§3=§, param2:Boolean = true) : void
      {
         § Y§(param1);
         var _loc3_:§1!b§ = §9!H§[0];
         var _loc4_:§2!a§ = new §2!a§(§&V§,§%_§,_loc3_);
         §!S§(_loc4_,param2);
      }
      
      public static function §[!7§(param1:§3=§, param2:Boolean = true, param3:String = "") : void
      {
         § Y§(param1);
         var _loc4_:§1!b§ = §9!H§[0];
         var _loc5_:§+!g§ = new §+!g§(§&V§,§%_§,_loc4_,param3);
         §!S§(_loc5_,param2);
      }
      
      public static function §;0§(param1:§3=§, param2:Boolean = true) : void
      {
         § Y§(param1);
         var _loc3_:§1!b§ = §9!H§[0];
         var _loc4_:§>!F§ = new §>!F§(§&V§,§%_§,_loc3_);
         §!S§(_loc4_,param2);
      }
      
      public static function §^?§(param1:§3=§, param2:Boolean = true) : void
      {
         § Y§(param1);
         var _loc3_:§1!b§ = §9!H§[0];
         var _loc4_:§!V§ = new §!V§(§&V§,§%_§,_loc3_);
         §!S§(_loc4_,param2);
      }
      
      public static function §",§(param1:§3=§, param2:Boolean = true) : void
      {
         § Y§(param1);
         var _loc3_:§1!b§ = §9!H§[0];
         var _loc4_:§8]§ = new §8]§(§&V§,§%_§,_loc3_);
         §!S§(_loc4_,param2);
      }
      
      public static function §2?§(param1:§3=§, param2:Boolean = true) : void
      {
         § Y§(param1);
         var _loc3_:§1!b§ = §9!H§[0];
         var _loc4_:§^0§ = new §^0§(§&V§,§%_§,_loc3_);
         §!S§(_loc4_,param2);
      }
      
      public static function § !%§(param1:§3=§, param2:Boolean = true) : void
      {
         § Y§(param1);
         var _loc3_:§1!b§ = §9!H§[0];
         var _loc4_:§<!,§ = new §<!,§(§&V§,§%_§,_loc3_);
         §!S§(_loc4_,param2);
      }
      
      public static function §3i§(param1:§3=§, param2:Boolean = true) : void
      {
         § Y§(param1);
         var _loc3_:§1!b§ = §9!H§[0];
         var _loc4_:§>u§ = new §>u§(§&V§,§%_§,_loc3_);
         §!S§(_loc4_,param2,true);
      }
      
      private static function §!S§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§?n§.§[1§,§9!?§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§ 4§.§#!<§ + § 4§.§ q§) / 2;
         }
         else
         {
            param1.x = § 4§.§#!<§ / 2;
         }
         param1.y = § 4§.§@+§ / 2;
         §^l§.push(param1);
      }
      
      public static function updateTextFields() : void
      {
         var _loc1_:Popup = null;
         for each(_loc1_ in §^l§)
         {
            _loc1_.updateTextFields();
         }
      }
      
      private static function §9!?§(param1:§?n§) : void
      {
         if(§9!H§.length > 0)
         {
            §&V§.changeState(§9!H§.pop());
         }
         var _loc2_:Popup = param1.popup;
         _loc2_.mClip.removeEventListener(§?n§.§[1§,§9!?§);
         §,Q§.sHighscoreSidebar.enableLoginButton(!§ 4§.§?H§.§4!A§);
         §,Q§.sHighscoreSidebar.enableLogOutButton(§ 4§.§?H§.§4!A§);
         var _loc3_:int = 0;
         while(_loc3_ < §^l§.length)
         {
            if(§^l§[_loc3_] == _loc2_)
            {
               §^l§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §'^§() : Boolean
      {
         return §^l§.length > 0;
      }
      
      public static function get §#!Y§() : Array
      {
         return §^l§;
      }
   }
}
