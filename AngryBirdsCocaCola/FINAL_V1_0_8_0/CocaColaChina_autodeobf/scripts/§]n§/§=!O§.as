package §]n§
{
   import § !C§.§6!W§;
   import §>I§.§1!Q§;
   import §^6§.§;l§;
   import flash.display.Stage;
   
   public class §=!O§
   {
      
      protected static var §9!;§:StatePopupManager;
      
      protected static var §"i§:§;l§;
      
      protected static var §!!0§:§;l§;
      
      private static var §>!O§:Array = [];
      
      private static var §do§:Array = [];
       
      
      public function §=!O§()
      {
         super();
      }
      
      public static function §=D§(param1:Stage) : void
      {
         if(§9!;§)
         {
            return;
         }
         §9!;§ = new StatePopupManager();
      }
      
      private static function §^%§(param1:§;l§) : void
      {
         §"i§ = param1;
         §do§.push(§"i§.§-!!§);
         §"i§.changeState(§9!;§);
      }
      
      public static function §,!U§(param1:§;l§, param2:Boolean = true) : void
      {
         §^%§(param1);
         var _loc3_:§@§ = new §@§(§"i§,§9!;§);
         §"!O§(_loc3_,param2);
      }
      
      public static function §]!_§(param1:§;l§, param2:int, param3:Boolean = true) : void
      {
         §^%§(param1);
         var _loc4_:§>§ = new §>§(§"i§,§9!;§,param2);
         §"!O§(_loc4_,param3);
      }
      
      public static function §'!B§(param1:§;l§, param2:Boolean = true) : void
      {
         var _loc3_:§6!W§ = param1.§-!!§;
         §^%§(param1);
         var _loc4_:§[S§ = new §[S§(§"i§,§9!;§,_loc3_);
         §"!O§(_loc4_,param2);
      }
      
      public static function §+!3§(param1:§;l§, param2:Boolean = true) : void
      {
         var _loc3_:§1!Q§ = param1.§-!!§ as §1!Q§;
         §^%§(param1);
         var _loc4_:§+!+§ = new §+!+§(§"i§,§9!;§,_loc3_);
         §"!O§(_loc4_,param2);
      }
      
      public static function §1+§(param1:§;l§, param2:Boolean = true) : void
      {
         §^%§(param1);
         var _loc3_:§3!#§ = new §3!#§(§"i§,§9!;§);
         §"!O§(_loc3_,param2);
      }
      
      private static function §"!O§(param1:Popup, param2:Boolean = true) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§+!$§.§]!a§,§&!V§);
         param1.visible = true;
         param1.x = §-!#§.§6`§ / 2;
         param1.y = §-!#§.§?!E§ / 2;
         §>!O§.push(param1);
      }
      
      private static function §&!V§(param1:§+!$§) : void
      {
         if(§do§.length > 0)
         {
            §"i§.changeState(§do§.pop());
         }
         var _loc2_:Popup = param1.§?!3§;
         _loc2_.mClip.removeEventListener(§+!$§.§]!a§,§&!V§);
         var _loc3_:int = 0;
         while(_loc3_ < §>!O§.length)
         {
            if(§>!O§[_loc3_] == _loc2_)
            {
               §>!O§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §%F§() : Boolean
      {
         return §>!O§.length > 0;
      }
      
      public static function get §5!9§() : Array
      {
         return §>!O§;
      }
   }
}
