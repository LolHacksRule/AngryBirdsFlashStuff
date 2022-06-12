package §=!&§
{
   import §#!8§.§&!'§;
   import §4!S§.§+!6§;
   
   public class §3h§
   {
      
      public static const §0!n§:String = "BOLTS";
      
      public static const §8@§:String = "BLOCKS";
      
      public static const §@!>§:String = "COINS";
      
      public static const §!"9§:String = "CONSUMABLE";
      
      public static const UNLOCK:String = "UNLOCK";
      
      public static const INCREASE_ITEM_COUNT:String = "INCREASE_ITEM_COUNT";
      
      private static var §`!z§:§3h§;
      
      private static var §3!d§:Class = §&!'§;
       
      
      public function §3h§()
      {
         super();
      }
      
      public static function get §7!?§() : §3h§
      {
         if(!§`!z§)
         {
            §`!z§ = new §3h§();
         }
         return §`!z§;
      }
      
      public function init(param1:String = null) : void
      {
         if(!param1 || param1 == "")
         {
            §3!d§ = §+!6§;
         }
      }
      
      public function §]!f§(param1:String, param2:int = 0, param3:String = null) : void
      {
         switch(param1)
         {
            case §0!n§:
               §3!d§["doJsCall"]("bolts",param2);
               break;
            case §8@§:
               §3!d§["doJsCall"]("blocks",param2);
               break;
            case §@!>§:
               §3!d§["doJsCall"]("coins",param2);
               break;
            case §!"9§:
               §3!d§["doJsCall"]("consumables",param3,param2);
               break;
            case INCREASE_ITEM_COUNT:
               §3!d§["doJsCall"]("increaseItemCount",param2);
               break;
            case UNLOCK:
               §3!d§["doJsCall"]("unlock",param2);
               break;
            default:
               throw new Error(param1 + " is not for sale!");
         }
      }
   }
}
