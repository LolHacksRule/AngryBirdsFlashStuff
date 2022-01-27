package §'z§
{
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §[,§.§3!<§;
   import §[,§.StatePlay;
   import flash.display.Stage;
   
   public class §3?§
   {
      
      protected static var §5O§:StatePopupManager;
      
      protected static var §%A§:§"$§;
      
      protected static var § !]§:§"$§;
      
      private static var §!!X§:Array = [];
      
      private static var §&&§:Array = [];
       
      
      public function §3?§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§5O§)
         {
            return;
         }
         §5O§ = new StatePopupManager();
      }
      
      private static function §]!M§(param1:§"$§) : void
      {
         §%A§ = param1;
         §&&§.push(§%A§.§]_§);
         §%A§.changeState(§5O§);
      }
      
      public static function §?!=§(param1:§"$§, param2:Boolean = true) : void
      {
         var _loc3_:StatePlay = param1.§]_§ as StatePlay;
         §]!M§(param1);
         var _loc4_:§`§ = new §`§(§%A§,§5O§,_loc3_);
         §<!+§(_loc4_,param2);
      }
      
      public static function §&A§(param1:§"$§, param2:Boolean = true) : void
      {
         var _loc3_:§&6§ = param1.§]_§;
         §]!M§(param1);
         var _loc4_:§@!6§ = new §@!6§(§%A§,§5O§,_loc3_);
         §<!+§(_loc4_,param2);
      }
      
      public static function §%0§(param1:§"$§, param2:Boolean = true) : void
      {
         var _loc3_:§3!<§ = param1.§]_§ as §3!<§;
         §]!M§(param1);
         var _loc4_:§class§ = new §class§(§%A§,§5O§,_loc3_);
         §<!+§(_loc4_,param2,true);
      }
      
      public static function §"=§(param1:§"$§, param2:Boolean = true) : void
      {
         §]!M§(param1);
         var _loc3_:§5W§ = new §5W§(§%A§,§5O§);
         §<!+§(_loc3_,param2,true);
      }
      
      private static function §<!+§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§3!§.§%;§,§>"§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§2!S§.§0!+§ + §2!S§.§2U§) / 2;
         }
         else
         {
            param1.x = §2!S§.§0!+§ / 2;
         }
         param1.y = §2!S§.§>!?§ / 2;
         §!!X§.push(param1);
      }
      
      private static function §>"§(param1:§3!§) : void
      {
         if(§&&§.length > 0)
         {
            §%A§.changeState(§&&§.pop());
         }
         var _loc2_:Popup = param1.§2!N§;
         _loc2_.mClip.removeEventListener(§3!§.§%;§,§>"§);
         var _loc3_:int = 0;
         while(_loc3_ < §!!X§.length)
         {
            if(§!!X§[_loc3_] == _loc2_)
            {
               §!!X§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §3!;§() : Boolean
      {
         return §!!X§.length > 0;
      }
      
      public static function get §[!D§() : Array
      {
         return §!!X§;
      }
   }
}
