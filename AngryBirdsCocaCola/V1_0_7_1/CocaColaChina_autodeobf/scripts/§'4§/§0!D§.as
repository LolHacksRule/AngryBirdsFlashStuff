package §'4§
{
   import §%!G§.§ !G§;
   import §%n§.§^3§;
   import §6!@§.§ !!§;
   import flash.display.Stage;
   
   public class §0!D§
   {
      
      protected static var §,L§:StatePopupManager;
      
      protected static var §3!V§:§ !G§;
      
      protected static var §,l§:§ !G§;
      
      private static var §8!Y§:Array = [];
      
      private static var §2"§:Array = [];
       
      
      public function §0!D§()
      {
         super();
      }
      
      public static function §1!b§(param1:Stage) : void
      {
         if(§,L§)
         {
            return;
         }
         §,L§ = new StatePopupManager();
      }
      
      private static function §#!P§(param1:§ !G§) : void
      {
         §3!V§ = param1;
         §2"§.push(§3!V§.§^!4§);
         §3!V§.changeState(§,L§);
      }
      
      public static function §?N§(param1:§ !G§, param2:Boolean = true) : void
      {
         §#!P§(param1);
         var _loc3_:§8=§ = new §8=§(§3!V§,§,L§);
         §`!?§(_loc3_,param2);
      }
      
      public static function §[`§(param1:§ !G§, param2:int, param3:Boolean = true) : void
      {
         §#!P§(param1);
         var _loc4_:§`!a§ = new §`!a§(§3!V§,§,L§,param2);
         §`!?§(_loc4_,param3);
      }
      
      public static function §6!a§(param1:§ !G§, param2:Boolean = true) : void
      {
         var _loc3_:§ !!§ = param1.§^!4§;
         §#!P§(param1);
         var _loc4_:§@!R§ = new §@!R§(§3!V§,§,L§,_loc3_);
         §`!?§(_loc4_,param2);
      }
      
      public static function §>r§(param1:§ !G§, param2:Boolean = true) : void
      {
         var _loc3_:§^3§ = param1.§^!4§ as §^3§;
         §#!P§(param1);
         var _loc4_:§4!>§ = new §4!>§(§3!V§,§,L§,_loc3_);
         §`!?§(_loc4_,param2);
      }
      
      public static function §]@§(param1:§ !G§, param2:Boolean = true) : void
      {
         §#!P§(param1);
         var _loc3_:§&!&§ = new §&!&§(§3!V§,§,L§);
         §`!?§(_loc3_,param2);
      }
      
      private static function §`!?§(param1:Popup, param2:Boolean = true) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§24§.§0w§,§"A§);
         param1.visible = true;
         param1.x = §"!@§.§`?§ / 2;
         param1.y = §"!@§.§9!;§ / 2;
         §8!Y§.push(param1);
      }
      
      private static function §"A§(param1:§24§) : void
      {
         if(§2"§.length > 0)
         {
            §3!V§.changeState(§2"§.pop());
         }
         var _loc2_:Popup = param1.§[B§;
         _loc2_.mClip.removeEventListener(§24§.§0w§,§"A§);
         var _loc3_:int = 0;
         while(_loc3_ < §8!Y§.length)
         {
            if(§8!Y§[_loc3_] == _loc2_)
            {
               §8!Y§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §1@§() : Boolean
      {
         return §8!Y§.length > 0;
      }
      
      public static function get §[]§() : Array
      {
         return §8!Y§;
      }
   }
}
