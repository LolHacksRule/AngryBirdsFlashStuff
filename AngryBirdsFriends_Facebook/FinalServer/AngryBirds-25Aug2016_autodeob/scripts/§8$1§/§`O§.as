package §8$1§
{
   import §9$§.Sprite;
   import §^§.§>$6§;
   
   public class §`O§
   {
      
      private static const §4#$§:String = "move";
      
      private static const §>$'§:String = "scale";
       
      
      public function §`O§()
      {
         super();
      }
      
      public static function §!#l§(param1:Sprite, param2:§`#'§, param3:§>$6§) : §[!R§
      {
         var _loc4_:§[!R§ = null;
         switch(param3.type)
         {
            case §4#$§:
               _loc4_ = new §!^§(param1,param2,param3);
               break;
            case §>$'§:
               _loc4_ = new §2#U§(param1,param2,param3);
         }
         return _loc4_;
      }
   }
}
