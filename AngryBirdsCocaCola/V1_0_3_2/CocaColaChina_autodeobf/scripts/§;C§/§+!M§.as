package §;C§
{
   import §!!L§.§&!R§;
   import §>!8§.§4!0§;
   import §@!P§.§7!<§;
   import flash.display.Stage;
   
   public class §+!M§
   {
      
      protected static var §'!N§:StatePopupManager;
      
      protected static var §[D§:§4!0§;
      
      protected static var static:§4!0§;
      
      private static var §<![§:Array = [];
      
      private static var §;q§:Array = [];
       
      
      public function §+!M§()
      {
         super();
      }
      
      public static function §4"§(param1:Stage) : void
      {
         if(§'!N§)
         {
            return;
         }
         §'!N§ = new StatePopupManager();
      }
      
      private static function §[t§(param1:§4!0§) : void
      {
         §[D§ = param1;
         §;q§.push(§[D§.§8![§);
         §[D§.changeState(§'!N§);
      }
      
      public static function §=z§(param1:§4!0§, param2:Boolean = true) : void
      {
         §[t§(param1);
         var _loc3_:§5O§ = new §5O§(§[D§,§'!N§);
         §8!I§(_loc3_,param2);
      }
      
      public static function §6p§(param1:§4!0§, param2:int, param3:Boolean = true) : void
      {
         §[t§(param1);
         var _loc4_:§@`§ = new §@`§(§[D§,§'!N§,param2);
         §8!I§(_loc4_,param3);
      }
      
      public static function §!m§(param1:§4!0§, param2:Boolean = true) : void
      {
         var _loc3_:§&!R§ = param1.§8![§;
         §[t§(param1);
         var _loc4_:§8!-§ = new §8!-§(§[D§,§'!N§,_loc3_);
         §8!I§(_loc4_,param2);
      }
      
      public static function §=2§(param1:§4!0§, param2:Boolean = true) : void
      {
         var _loc3_:§7!<§ = param1.§8![§ as §7!<§;
         §[t§(param1);
         var _loc4_:§!R§ = new §!R§(§[D§,§'!N§,_loc3_);
         §8!I§(_loc4_,param2);
      }
      
      public static function §++§(param1:§4!0§, param2:Boolean = true) : void
      {
         §[t§(param1);
         var _loc3_:§3O§ = new §3O§(§[D§,§'!N§);
         §8!I§(_loc3_,param2);
      }
      
      private static function §8!I§(param1:Popup, param2:Boolean = true) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§<M§.§-!a§,§]!-§);
         param1.visible = true;
         param1.x = §=i§.§'0§ / 2;
         param1.y = §=i§.§8-§ / 2;
         §<![§.push(param1);
      }
      
      private static function §]!-§(param1:§<M§) : void
      {
         if(§;q§.length > 0)
         {
            §[D§.changeState(§;q§.pop());
         }
         var _loc2_:Popup = param1.§?!U§;
         _loc2_.mClip.removeEventListener(§<M§.§-!a§,§]!-§);
         var _loc3_:int = 0;
         while(_loc3_ < §<![§.length)
         {
            if(§<![§[_loc3_] == _loc2_)
            {
               §<![§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §1!X§() : Boolean
      {
         return §<![§.length > 0;
      }
      
      public static function get §14§() : Array
      {
         return §<![§;
      }
   }
}
