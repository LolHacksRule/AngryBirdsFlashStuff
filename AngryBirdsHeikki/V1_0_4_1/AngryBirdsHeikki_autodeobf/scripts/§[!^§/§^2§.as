package §[!^§
{
   import §+!9§.§0!M§;
   import §+!9§.StatePlay;
   import §4;§.§,h§;
   import §7!X§.§7g§;
   import flash.display.Stage;
   
   public class §^2§
   {
      
      protected static var §,f§:StatePopupManager;
      
      protected static var §[!S§:§7g§;
      
      protected static var §%"§:§7g§;
      
      private static var §>!a§:Array = [];
      
      private static var §0!b§:Array = [];
       
      
      public function §^2§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(§,f§)
         {
            return;
         }
         §,f§ = new StatePopupManager();
      }
      
      private static function §0W§(param1:§7g§) : void
      {
         §[!S§ = param1;
         §0!b§.push(§[!S§.§^7§);
         §[!S§.changeState(§,f§);
      }
      
      public static function §&!F§(param1:§7g§, param2:Boolean = true) : void
      {
         var _loc3_:StatePlay = param1.§^7§ as StatePlay;
         §0W§(param1);
         var _loc4_:native = new native(§[!S§,§,f§,_loc3_);
         §-H§(_loc4_,param2);
      }
      
      public static function §!_§(param1:§7g§, param2:Boolean = true) : void
      {
         var _loc3_:§,h§ = param1.§^7§;
         §0W§(param1);
         var _loc4_:§0!P§ = new §0!P§(§[!S§,§,f§,_loc3_);
         §-H§(_loc4_,param2);
      }
      
      public static function §#J§(param1:§7g§, param2:Boolean = true) : void
      {
         var _loc3_:§0!M§ = param1.§^7§ as §0!M§;
         §0W§(param1);
         var _loc4_:§4B§ = new §4B§(§[!S§,§,f§,_loc3_);
         §-H§(_loc4_,param2,true);
      }
      
      public static function §1"§(param1:§7g§, param2:Boolean = true) : void
      {
         §0W§(param1);
         var _loc3_:§7!0§ = new §7!0§(§[!S§,§,f§);
         §-H§(_loc3_,param2,true);
      }
      
      private static function §-H§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         param1.open(param2);
         param1.mClip.addEventListener(§&!!§.§!4§,§ C§);
         param1.visible = true;
         if(param3)
         {
            param1.x = (§1F§.§-!I§ + §1F§.§#!F§) / 2;
         }
         else
         {
            param1.x = §1F§.§-!I§ / 2;
         }
         param1.y = §1F§.§9!8§ / 2;
         §>!a§.push(param1);
      }
      
      private static function § C§(param1:§&!!§) : void
      {
         if(§0!b§.length > 0)
         {
            §[!S§.changeState(§0!b§.pop());
         }
         var _loc2_:Popup = param1.§90§;
         _loc2_.mClip.removeEventListener(§&!!§.§!4§,§ C§);
         var _loc3_:int = 0;
         while(_loc3_ < §>!a§.length)
         {
            if(§>!a§[_loc3_] == _loc2_)
            {
               §>!a§.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public static function §->§() : Boolean
      {
         return §>!a§.length > 0;
      }
      
      public static function get §<!4§() : Array
      {
         return §>!a§;
      }
   }
}
