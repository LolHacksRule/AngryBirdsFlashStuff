package §'!F§
{
   import §+B§.§#!b§;
   import §+B§.StatePlay;
   import §-!f§.§ else§;
   import §>!G§.§6!9§;
   import flash.display.Stage;
   
   public class §>1§
   {
      
      protected static var §^@§:StatePopupManager;
      
      protected static var §<!&§:§ else§;
      
      protected static var §4!]§:§ else§;
      
      private static var §[!^§:Array = [];
      
      private static var §^!6§:Array = [];
       
      
      public function §>1§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§^@§)
         {
            return;
         }
         §^@§ = new StatePopupManager();
      }
      
      private static function §-!&§(param1:§ else§) : void
      {
         §<!&§ = param1;
         §^!6§.push(§<!&§.§>=§);
         §<!&§.changeState(§^@§);
      }
      
      public static function §0!h§(param1:§ else§, param2:Boolean = true) : void
      {
         var _loc3_:StatePlay = param1.§>=§ as StatePlay;
         §-!&§(param1);
         var _loc4_:§]!Q§ = new §]!Q§(§<!&§,§^@§,_loc3_);
         §@!§(_loc4_,param2);
      }
      
      public static function §`2§(param1:§ else§, param2:Boolean = true) : void
      {
         var _loc3_:§6!9§ = param1.§>=§;
         §-!&§(param1);
         var _loc4_:§!!C§ = new §!!C§(§<!&§,§^@§,_loc3_);
         §@!§(_loc4_,param2);
      }
      
      public static function §%!=§(param1:§ else§, param2:Boolean = true) : void
      {
         var _loc3_:§#!b§ = param1.§>=§ as §#!b§;
         §-!&§(param1);
         var _loc4_:§5!U§ = new §5!U§(§<!&§,§^@§,_loc3_);
         §@!§(_loc4_,param2,true);
      }
      
      public static function §]!Y§(param1:§ else§, param2:Boolean = true) : void
      {
         §-!&§(param1);
         var _loc3_:§!H§ = new §!H§(§<!&§,§^@§);
         §@!§(_loc3_,param2,true);
      }
      
      private static function §@!§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§1;§.§2P§,§,!9§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§"!R§.§-m§ + §"!R§.§7!8§) / 2;
         }
         else
         {
            param1.x = §"!R§.§-m§ / 2;
         }
         param1.y = §"!R§.§1l§ / 2;
         §[!^§.push(param1);
      }
      
      private static function §,!9§(param1:§1;§) : void
      {
         if(§^!6§.length > 0)
         {
            §<!&§.changeState(§^!6§.pop());
         }
         var _loc2_:Popup = param1.§!6§;
         _loc2_.mClip.removeEventListener(§1;§.§2P§,§,!9§);
         var _loc3_:int = 0;
         while(_loc3_ < §[!^§.length)
         {
            if(§[!^§[_loc3_] == _loc2_)
            {
               §[!^§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §`4§() : Boolean
      {
         return §[!^§.length > 0;
      }
      
      public static function get §9!?§() : Array
      {
         return §[!^§;
      }
   }
}
