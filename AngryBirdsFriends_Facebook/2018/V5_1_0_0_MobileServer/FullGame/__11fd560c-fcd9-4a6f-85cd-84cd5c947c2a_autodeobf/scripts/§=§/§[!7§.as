package §=§#9
{
   import §6$8§.§1"_§;
   import §^"S§.Sprite;
   
   public class §[!7§
   {
      
      private static const §"#O§:String = "move";
      
      private static const §&0§:String = "scale";
       
      
      public function §[!7§()
      {
         super();
      }
      
      public static function §'!j§(param1:Sprite, param2:§2!f§, param3:§1"_§) : §=!x§
      {
         var _loc4_:§=!x§ = null;
         switch(param3.type)
         {
            case §"#O§:
               _loc4_ = new §,G§(param1,param2,param3);
               break;
            case §&0§:
               _loc4_ = new §=!i§(param1,param2,param3);
         }
         return _loc4_;
      }
   }
}
