package §2"§
{
   import §%n§.§^3§;
   import §6!@§.§ !!§;
   import flash.display.Stage;
   
   public class §#!P§
   {
      
      protected static var §?N§:StatePopupManager;
      
      protected static var §[`§:§^R§;
      
      protected static var §6!a§:§^R§;
      
      private static var §>r§:Array = [];
      
      private static var §]@§:Array = [];
       
      
      public function §#!P§()
      {
         super();
      }
      
      public static function §1!b§(param1:Stage) : void
      {
         if(§?N§)
         {
            return;
         }
         §?N§ = new StatePopupManager();
      }
      
      private static function §`!?§(param1:§^R§) : void
      {
         §[`§ = param1;
         §]@§.push(§[`§.§1!c§);
         §[`§.changeState(§?N§);
      }
      
      public static function §"A§(param1:§^R§, param2:Boolean = true) : void
      {
         §`!?§(param1);
         var _loc3_:§!s§ = new §!s§(§[`§,§?N§);
         §0j§(_loc3_,param2);
      }
      
      public static function §1@§(param1:§^R§, param2:int, param3:Boolean = true) : void
      {
         §`!?§(param1);
         var _loc4_:§;!G§ = new §;!G§(§[`§,§?N§,param2);
         §0j§(_loc4_,param3);
      }
      
      public static function §[]§(param1:§^R§, param2:Boolean = true) : void
      {
         var _loc3_:§ !!§ = param1.§1!c§;
         §`!?§(param1);
         var _loc4_:§9=§ = new §9=§(§[`§,§?N§,_loc3_);
         §0j§(_loc4_,param2);
      }
      
      public static function §@;§(param1:§^R§, param2:Boolean = true) : void
      {
         var _loc3_:§^3§ = param1.§1!c§ as §^3§;
         §`!?§(param1);
         var _loc4_:§8=§ = new §8=§(§[`§,§?N§,_loc3_);
         §0j§(_loc4_,param2);
      }
      
      public static function §8Z§(param1:§^R§, param2:Boolean = true) : void
      {
         §`!?§(param1);
         var _loc3_:§0w§ = new §0w§(§[`§,§?N§);
         §0j§(_loc3_,param2);
      }
      
      private static function §0j§(param1:Popup, param2:Boolean = true) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§ !W§.§>§,§>e§);
         param1.visible = true;
         param1.x = §"!@§.§9<§ / 2;
         param1.y = §"!@§.§7e§ / 2;
         §>r§.push(param1);
      }
      
      private static function §>e§(param1:§ !W§) : void
      {
         if(§]@§.length > 0)
         {
            §[`§.changeState(§]@§.pop());
         }
         var _loc2_:Popup = param1.§`!a§;
         _loc2_.mClip.removeEventListener(§ !W§.§>§,§>e§);
         var _loc3_:int = 0;
         while(_loc3_ < §>r§.length)
         {
            if(§>r§[_loc3_] == _loc2_)
            {
               §>r§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §0!G§() : Boolean
      {
         return §>r§.length > 0;
      }
      
      public static function get §%U§() : Array
      {
         return §>r§;
      }
   }
}
