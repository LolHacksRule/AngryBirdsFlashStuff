package §20§
{
   import §'!O§.§#!_§;
   import §'!O§.StatePlay;
   import §-!"§.§=p§;
   import §<u§.§]!Q§;
   import flash.display.Stage;
   
   public class §"!b§
   {
      
      protected static var §#q§:StatePopupManager;
      
      protected static var §<!L§:§]!Q§;
      
      protected static var §%!?§:§]!Q§;
      
      private static var §5'§:Array = [];
      
      private static var §3!7§:Array = [];
       
      
      public function §"!b§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§#q§)
         {
            return;
         }
         §#q§ = new StatePopupManager();
      }
      
      private static function §2V§(param1:§]!Q§) : void
      {
         §<!L§ = param1;
         §3!7§.push(§<!L§.§1!B§);
         §<!L§.changeState(§#q§);
      }
      
      public static function §,]§(param1:§]!Q§, param2:Boolean = true) : void
      {
         var _loc3_:StatePlay = param1.§1!B§ as StatePlay;
         §2V§(param1);
         var _loc4_:§]!Z§ = new §]!Z§(§<!L§,§#q§,_loc3_);
         §]!,§(_loc4_,param2);
      }
      
      public static function §66§(param1:§]!Q§, param2:Boolean = true) : void
      {
         var _loc3_:§=p§ = param1.§1!B§;
         §2V§(param1);
         var _loc4_:§7Q§ = new §7Q§(§<!L§,§#q§,_loc3_);
         §]!,§(_loc4_,param2);
      }
      
      public static function §1+§(param1:§]!Q§, param2:Boolean = true) : void
      {
         var _loc3_:§#!_§ = param1.§1!B§ as §#!_§;
         §2V§(param1);
         var _loc4_:§4!E§ = new §4!E§(§<!L§,§#q§,_loc3_);
         §]!,§(_loc4_,param2,true);
      }
      
      public static function §,!Z§(param1:§]!Q§, param2:Boolean = true) : void
      {
         §2V§(param1);
         var _loc3_:§9!C§ = new §9!C§(§<!L§,§#q§);
         §]!,§(_loc3_,param2,true);
      }
      
      private static function §]!,§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§`w§.§?!?§,§&K§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§,L§.§1'§ + §,L§.§,!<§) / 2;
         }
         else
         {
            param1.x = §,L§.§1'§ / 2;
         }
         param1.y = §,L§.§!!d§ / 2;
         §5'§.push(param1);
      }
      
      private static function §&K§(param1:§`w§) : void
      {
         if(§3!7§.length > 0)
         {
            §<!L§.changeState(§3!7§.pop());
         }
         var _loc2_:Popup = param1.§'$§;
         _loc2_.mClip.removeEventListener(§`w§.§?!?§,§&K§);
         var _loc3_:int = 0;
         while(_loc3_ < §5'§.length)
         {
            if(§5'§[_loc3_] == _loc2_)
            {
               §5'§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §5;§() : Boolean
      {
         return §5'§.length > 0;
      }
      
      public static function get §2F§() : Array
      {
         return §5'§;
      }
   }
}
