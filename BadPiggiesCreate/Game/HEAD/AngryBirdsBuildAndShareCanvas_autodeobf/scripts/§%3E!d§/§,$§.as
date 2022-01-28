package §>!d§
{
   import §05§.§?s§;
   import §;" §.§!H§;
   
   public class §,$§
   {
      
      public static const §<!^§:String = "BOLTS";
      
      public static const §=!x§:String = "BLOCKS";
      
      public static const §53§:String = "COINS";
      
      public static const §+"<§:String = "CONSUMABLE";
      
      public static const UNLOCK:String = "UNLOCK";
      
      public static const INCREASE_ITEM_COUNT:String = "INCREASE_ITEM_COUNT";
      
      private static var §+!u§:§,$§;
      
      private static var §<"!§:Class = §?s§;
       
      
      public function §,$§()
      {
         super();
      }
      
      public static function get §[E§() : §,$§
      {
         if(!§+!u§)
         {
            §+!u§ = new §,$§();
         }
         return §+!u§;
      }
      
      public function init(param1:String = null) : void
      {
         if(!param1 || param1 == "")
         {
            §<"!§ = §!H§;
         }
      }
      
      public function §9!j§(param1:String, param2:int = 0, param3:String = null) : void
      {
         switch(param1)
         {
            case §<!^§:
               §<"!§["doJsCall"]("bolts",param2);
               break;
            case §=!x§:
               §<"!§["doJsCall"]("blocks",param2);
               break;
            case §53§:
               §<"!§["doJsCall"]("coins",param2);
               break;
            case §+"<§:
               §<"!§["doJsCall"]("consumables",param3,param2);
               break;
            case INCREASE_ITEM_COUNT:
               §<"!§["doJsCall"]("increaseItemCount",param2);
               break;
            case UNLOCK:
               §<"!§["doJsCall"]("unlock",param2);
               break;
            default:
               throw new Error(param1 + " is not for sale!");
         }
      }
   }
}
