package §=!#§
{
   import §%3§.§7b§;
   import §,H§.§4!L§;
   import §@W§.§2!_§;
   import flash.display.Stage;
   
   public class §4i§
   {
      
      protected static var §^4§:StatePopupManager;
      
      protected static var §3$§:§7b§;
      
      protected static var §#!K§:§7b§;
      
      private static var §7-§:Array = [];
      
      private static var §[X§:Array = [];
       
      
      public function §4i§()
      {
         super();
      }
      
      public static function §@#§(param1:Stage) : void
      {
         if(§^4§)
         {
            return;
         }
         §^4§ = new StatePopupManager();
      }
      
      private static function §=2§(param1:§7b§) : void
      {
         §3$§ = param1;
         §[X§.push(§3$§.§#&§);
         §3$§.changeState(§^4§);
      }
      
      public static function §`t§(param1:§7b§, param2:Boolean = true) : void
      {
         §=2§(param1);
         var _loc3_:§^!-§ = new §^!-§(§3$§,§^4§);
         §+w§(_loc3_,param2);
      }
      
      public static function §#!Y§(param1:§7b§, param2:int, param3:Boolean = true) : void
      {
         §=2§(param1);
         var _loc4_:§"p§ = new §"p§(§3$§,§^4§,param2);
         §+w§(_loc4_,param3);
      }
      
      public static function §@!]§(param1:§7b§, param2:Boolean = true) : void
      {
         var _loc3_:§2!_§ = param1.§#&§;
         §=2§(param1);
         var _loc4_:§-#§ = new §-#§(§3$§,§^4§,_loc3_);
         §+w§(_loc4_,param2);
      }
      
      public static function §#T§(param1:§7b§, param2:Boolean = true) : void
      {
         var _loc3_:§4!L§ = param1.§#&§ as §4!L§;
         §=2§(param1);
         var _loc4_:§9?§ = new §9?§(§3$§,§^4§,_loc3_);
         §+w§(_loc4_,param2);
      }
      
      public static function §3!?§(param1:§7b§, param2:Boolean = true) : void
      {
         §=2§(param1);
         var _loc3_:§ var§ = new § var§(§3$§,§^4§);
         §+w§(_loc3_,param2);
      }
      
      private static function §+w§(param1:Popup, param2:Boolean = true) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§5!V§.§"!E§,§%!,§);
         param1.visible = true;
         param1.x = §6T§.§,x§ / 2;
         param1.y = §6T§.§+!U§ / 2;
         §7-§.push(param1);
      }
      
      private static function §%!,§(param1:§5!V§) : void
      {
         if(§[X§.length > 0)
         {
            §3$§.changeState(§[X§.pop());
         }
         var _loc2_:Popup = param1.§1!9§;
         _loc2_.mClip.removeEventListener(§5!V§.§"!E§,§%!,§);
         var _loc3_:int = 0;
         while(_loc3_ < §7-§.length)
         {
            if(§7-§[_loc3_] == _loc2_)
            {
               §7-§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §=B§() : Boolean
      {
         return §7-§.length > 0;
      }
      
      public static function get § $§() : Array
      {
         return §7-§;
      }
   }
}
