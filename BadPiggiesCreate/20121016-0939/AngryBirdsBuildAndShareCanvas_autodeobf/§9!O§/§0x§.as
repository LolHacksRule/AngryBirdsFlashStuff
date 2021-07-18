package §9!O§
{
   import §%_§.§4m§;
   import §8" §.§6<§;
   
   public class §0x§
   {
      
      public static const §1!O§:String = "BOLTS";
      
      public static const § !N§:String = "BLOCKS";
      
      public static const §5!C§:String = "COINS";
      
      public static const §!!n§:String = "CONSUMABLE";
      
      public static const UNLOCK:String = "UNLOCK";
      
      public static const INCREASE_ITEM_COUNT:String = "INCREASE_ITEM_COUNT";
      
      private static var §1%§:§0x§;
      
      private static var §extends§:Class = §4m§;
       
      
      public function §0x§()
      {
         super();
      }
      
      public static function get §2=§() : §0x§
      {
         if(!§1%§)
         {
            §1%§ = new §0x§();
         }
         return §1%§;
      }
      
      public function init(param1:String = null) : void
      {
         if(!param1 || param1 == "")
         {
            §extends§ = §6<§;
         }
      }
      
      public function §"""§(param1:String, param2:int = 0, param3:String = null) : void
      {
         switch(param1)
         {
            case §1!O§:
               §extends§["doJsCall"]("bolts",param2);
               break;
            case § !N§:
               §extends§["doJsCall"]("blocks",param2);
               break;
            case §5!C§:
               §extends§["doJsCall"]("coins",param2);
               break;
            case §!!n§:
               §extends§["doJsCall"]("consumables",param3,param2);
               break;
            case INCREASE_ITEM_COUNT:
               §extends§["doJsCall"]("increaseItemCount",param2);
               break;
            case UNLOCK:
               §extends§["doJsCall"]("unlock",param2);
               break;
            default:
               throw new Error(param1 + " is not for sale!");
         }
      }
   }
}
