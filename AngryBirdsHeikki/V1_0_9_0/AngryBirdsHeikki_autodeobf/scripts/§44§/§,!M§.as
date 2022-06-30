package §44§
{
   import §#Q§.§8Y§;
   import §&!6§.§5r§;
   import flash.display.Stage;
   import §function§.§'"§;
   import §function§.StatePlay;
   
   public class §,!M§
   {
      
      protected static var §?!6§:StatePopupManager;
      
      protected static var §+t§:§8Y§;
      
      protected static var §!!]§:§8Y§;
      
      private static var §2$§:Array = [];
      
      private static var § do§:Array = [];
       
      
      public function §,!M§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§?!6§)
         {
            return;
         }
         §?!6§ = new StatePopupManager();
      }
      
      private static function §1h§(param1:§8Y§) : void
      {
         §+t§ = param1;
         § do§.push(§+t§.§9!8§);
         §+t§.changeState(§?!6§);
      }
      
      public static function §9Y§(param1:§8Y§, param2:Boolean = true) : void
      {
         var _loc3_:StatePlay = param1.§9!8§ as StatePlay;
         §1h§(param1);
         var _loc4_:§5u§ = new §5u§(§+t§,§?!6§,_loc3_);
         §<+§(_loc4_,param2);
      }
      
      public static function §<!W§(param1:§8Y§, param2:Boolean = true) : void
      {
         var _loc3_:§5r§ = param1.§9!8§;
         §1h§(param1);
         var _loc4_:§2!3§ = new §2!3§(§+t§,§?!6§,_loc3_);
         §<+§(_loc4_,param2);
      }
      
      public static function § !V§(param1:§8Y§, param2:Boolean = true) : void
      {
         var _loc3_:§'"§ = param1.§9!8§ as §'"§;
         §1h§(param1);
         var _loc4_:§8!I§ = new §8!I§(§+t§,§?!6§,_loc3_);
         §<+§(_loc4_,param2,true);
      }
      
      public static function §%Q§(param1:§8Y§, param2:Boolean = true) : void
      {
         §1h§(param1);
         var _loc3_:§6D§ = new §6D§(§+t§,§?!6§);
         §<+§(_loc3_,param2,true);
      }
      
      private static function §<+§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§3!_§.§"!<§,§0'§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§"H§.§38§ + §"H§.§!7§) / 2;
         }
         else
         {
            param1.x = §"H§.§38§ / 2;
         }
         param1.y = §"H§.§5§ / 2;
         §2$§.push(param1);
      }
      
      private static function §0'§(param1:§3!_§) : void
      {
         if(§ do§.length > 0)
         {
            §+t§.changeState(§ do§.pop());
         }
         var _loc2_:Popup = param1.§,5§;
         _loc2_.mClip.removeEventListener(§3!_§.§"!<§,§0'§);
         var _loc3_:int = 0;
         while(_loc3_ < §2$§.length)
         {
            if(§2$§[_loc3_] == _loc2_)
            {
               §2$§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §%![§() : Boolean
      {
         return §2$§.length > 0;
      }
      
      public static function get §!A§() : Array
      {
         return §2$§;
      }
   }
}
