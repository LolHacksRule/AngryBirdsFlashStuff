package §37§
{
   import §'!B§.§1!R§;
   import §3<§.§-2§;
   import §7E§.§ =§;
   import flash.display.Stage;
   
   public class §&!;§
   {
      
      protected static var §?^§:StatePopupManager;
      
      protected static var §7_§:§-2§;
      
      protected static var § r§:§-2§;
      
      private static var §%@§:Array = [];
      
      private static var §'!4§:Array = [];
       
      
      public function §&!;§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§?^§)
         {
            return;
         }
         §?^§ = new StatePopupManager();
      }
      
      private static function §#!5§(param1:§-2§) : void
      {
         §7_§ = param1;
         §'!4§.push(§7_§.§else§);
         §7_§.changeState(§?^§);
      }
      
      public static function §+!Q§(param1:§-2§, param2:Boolean = true) : void
      {
         §#!5§(param1);
         var _loc3_:§ =§ = §'!4§[0];
         var _loc4_:§%!&§ = new §%!&§(§7_§,§?^§,_loc3_);
         §=!X§(_loc4_,param2);
      }
      
      public static function §&X§(param1:§-2§, param2:Boolean = true, param3:String = "") : void
      {
         §#!5§(param1);
         var _loc4_:§ =§ = §'!4§[0];
         var _loc5_:§4!d§ = new §4!d§(§7_§,§?^§,_loc4_,param3);
         §=!X§(_loc5_,param2);
      }
      
      public static function §+o§(param1:§-2§, param2:Boolean = true) : void
      {
         §#!5§(param1);
         var _loc3_:§ =§ = §'!4§[0];
         var _loc4_:§1!R§ = new §1!R§(§7_§,§?^§,_loc3_);
         §=!X§(_loc4_,param2);
      }
      
      public static function §;!0§(param1:§-2§, param2:Boolean = true) : void
      {
         §#!5§(param1);
         var _loc3_:§ =§ = §'!4§[0];
         var _loc4_:§7n§ = new §7n§(§7_§,§?^§,_loc3_);
         §=!X§(_loc4_,param2);
      }
      
      public static function §#!Y§(param1:§-2§, param2:Boolean = true) : void
      {
         §#!5§(param1);
         var _loc3_:§ =§ = §'!4§[0];
         var _loc4_:§3f§ = new §3f§(§7_§,§?^§,_loc3_);
         §=!X§(_loc4_,param2);
      }
      
      public static function §9!V§(param1:§-2§, param2:Boolean = true) : void
      {
         §#!5§(param1);
         var _loc3_:§ =§ = §'!4§[0];
         var _loc4_:§3T§ = new §3T§(§7_§,§?^§,_loc3_);
         §=!X§(_loc4_,param2);
      }
      
      public static function §6+§(param1:§-2§, param2:Boolean = true) : void
      {
         §#!5§(param1);
         var _loc3_:§ =§ = §'!4§[0];
         var _loc4_:§<!-§ = new §<!-§(§7_§,§?^§,_loc3_);
         §=!X§(_loc4_,param2);
      }
      
      public static function §5c§(param1:§-2§, param2:Boolean = true) : void
      {
         §#!5§(param1);
         var _loc3_:§ =§ = §'!4§[0];
         var _loc4_:§7!I§ = new §7!I§(§7_§,§?^§,_loc3_);
         §=!X§(_loc4_,param2,true);
      }
      
      private static function §=!X§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§2![§.§,!2§,§>i§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§9!_§.§;!+§ + §9!_§.§[c§) / 2;
         }
         else
         {
            param1.x = §9!_§.§;!+§ / 2;
         }
         param1.y = §9!_§.§]!n§ / 2;
         §%@§.push(param1);
      }
      
      public static function updateTextFields() : void
      {
         var _loc1_:Popup = null;
         for each(_loc1_ in §%@§)
         {
            _loc1_.updateTextFields();
         }
      }
      
      private static function §>i§(param1:§2![§) : void
      {
         if(§'!4§.length > 0)
         {
            §7_§.changeState(§'!4§.pop());
         }
         var _loc2_:Popup = param1.popup;
         _loc2_.mClip.removeEventListener(§2![§.§,!2§,§>i§);
         §2'§.sHighscoreSidebar.enableLoginButton(!§9!_§.§1!?§.§`2§);
         §2'§.sHighscoreSidebar.enableLogOutButton(§9!_§.§1!?§.§`2§);
         var _loc3_:int = 0;
         while(_loc3_ < §%@§.length)
         {
            if(§%@§[_loc3_] == _loc2_)
            {
               §%@§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §'d§() : Boolean
      {
         return §%@§.length > 0;
      }
      
      public static function get §?`§() : Array
      {
         return §%@§;
      }
   }
}
