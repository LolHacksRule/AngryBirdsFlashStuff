package §0O§
{
   import §2!w§.§>!k§;
   import §=e§.§1!@§;
   
   public class §<!x§
   {
      
      public static const §+!i§:String = "BOLTS";
      
      public static const §%!V§:String = "BLOCKS";
      
      public static const §"Q§:String = "COINS";
      
      public static const §@U§:String = "CONSUMABLE";
      
      public static const UNLOCK:String = "UNLOCK";
      
      public static const INCREASE_ITEM_COUNT:String = "INCREASE_ITEM_COUNT";
      
      private static var §%!Y§:§<!x§;
      
      private static var §?!B§:Class = §1!@§;
       
      
      public function §<!x§()
      {
         super();
      }
      
      public static function get § "!§() : §<!x§
      {
         if(!§%!Y§)
         {
            §%!Y§ = new §<!x§();
         }
         return §%!Y§;
      }
      
      public function init(param1:String = null) : void
      {
         if(!param1 || param1 == "")
         {
            §?!B§ = §>!k§;
         }
      }
      
      public function §]!A§(param1:String, param2:int = 0, param3:String = null) : void
      {
         switch(param1)
         {
            case §+!i§:
               §?!B§["doJsCall"]("bolts",param2);
               break;
            case §%!V§:
               §?!B§["doJsCall"]("blocks",param2);
               break;
            case §"Q§:
               §?!B§["doJsCall"]("coins",param2);
               break;
            case §@U§:
               §?!B§["doJsCall"]("consumables",param3,param2);
               break;
            case INCREASE_ITEM_COUNT:
               §?!B§["doJsCall"]("increaseItemCount",param2);
               break;
            case UNLOCK:
               §?!B§["doJsCall"]("unlock",param2);
               break;
            default:
               throw new Error(param1 + " is not for sale!");
         }
      }
   }
}
