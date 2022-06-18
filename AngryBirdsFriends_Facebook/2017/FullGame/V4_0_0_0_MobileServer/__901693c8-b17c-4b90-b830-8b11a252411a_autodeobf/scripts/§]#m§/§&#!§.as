package §]#m§
{
   import §&!v§.Sprite;
   import §6!6§.§@"W§;
   
   public class §&#!§
   {
      
      private static const §%u§:String = "move";
      
      private static const §[$<§:String = "scale";
       
      
      public function §&#!§()
      {
         super();
      }
      
      public static function §?"S§(param1:Sprite, param2:§<#A§, param3:§@"W§) : § "!§
      {
         var _loc4_:§ "!§ = null;
         switch(param3.type)
         {
            case §%u§:
               _loc4_ = new §?"H§(param1,param2,param3);
               break;
            case §[$<§:
               _loc4_ = new §<#T§(param1,param2,param3);
         }
         return _loc4_;
      }
   }
}
