package §]c§
{
   import § !Y§.§if§;
   import §2H§.§>!^§;
   import §97§.§1j§;
   import §97§.StatePlay;
   import flash.display.Stage;
   
   public class §6S§
   {
      
      protected static var §'n§:StatePopupManager;
      
      protected static var §+!U§:§if§;
      
      protected static var §%6§:§if§;
      
      private static var §3G§:Array = [];
      
      private static var §%U§:Array = [];
       
      
      public function §6S§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§'n§)
         {
            return;
         }
         §'n§ = new StatePopupManager();
      }
      
      private static function §#!Z§(param1:§if§) : void
      {
         §+!U§ = param1;
         §%U§.push(§+!U§.§5M§);
         §+!U§.changeState(§'n§);
      }
      
      public static function §-!^§(param1:§if§, param2:Boolean = true) : void
      {
         var _loc3_:StatePlay = param1.§5M§ as StatePlay;
         §#!Z§(param1);
         var _loc4_:§'!7§ = new §'!7§(§+!U§,§'n§,_loc3_);
         §-q§(_loc4_,param2);
      }
      
      public static function §'!L§(param1:§if§, param2:Boolean = true) : void
      {
         var _loc3_:§>!^§ = param1.§5M§;
         §#!Z§(param1);
         var _loc4_:§<1§ = new §<1§(§+!U§,§'n§,_loc3_);
         §-q§(_loc4_,param2);
      }
      
      public static function §[@§(param1:§if§, param2:Boolean = true) : void
      {
         var _loc3_:§1j§ = param1.§5M§ as §1j§;
         §#!Z§(param1);
         var _loc4_:§var § = new §var §(§+!U§,§'n§,_loc3_);
         §-q§(_loc4_,param2,true);
      }
      
      public static function §@!;§(param1:§if§, param2:Boolean = true) : void
      {
         §#!Z§(param1);
         var _loc3_:§64§ = new §64§(§+!U§,§'n§);
         §-q§(_loc3_,param2,true);
      }
      
      private static function §-q§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§ !P§.§2!I§,§][§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§,-§.§ for§ + §,-§.§1!,§) / 2;
         }
         else
         {
            param1.x = §,-§.§ for§ / 2;
         }
         param1.y = §,-§.§[S§ / 2;
         §3G§.push(param1);
      }
      
      private static function §][§(param1:§ !P§) : void
      {
         if(§%U§.length > 0)
         {
            §+!U§.changeState(§%U§.pop());
         }
         var _loc2_:Popup = param1.§&g§;
         _loc2_.mClip.removeEventListener(§ !P§.§2!I§,§][§);
         var _loc3_:int = 0;
         while(_loc3_ < §3G§.length)
         {
            if(§3G§[_loc3_] == _loc2_)
            {
               §3G§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §]1§() : Boolean
      {
         return §3G§.length > 0;
      }
      
      public static function get §^7§() : Array
      {
         return §3G§;
      }
   }
}
