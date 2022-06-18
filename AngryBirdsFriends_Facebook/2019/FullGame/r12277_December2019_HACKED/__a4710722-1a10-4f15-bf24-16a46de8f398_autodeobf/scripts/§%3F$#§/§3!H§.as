package §?$#§
{
   import §""4§.Texture;
   import §#Z§.Sprite;
   import §-"e§.§!"=§;
   import §-"e§.§[9§;
   import §0!>§.§ !b§;
   
   public class §3!H§ extends §!";§
   {
       
      
      private var §]!%§:§ !b§;
      
      public function §3!H§(param1:§ !b§, param2:Sprite, param3:Texture, param4:Number, param5:Number)
      {
         super(param2,param3,param4,param5);
         this.§]!%§ = param1;
      }
      
      override protected function laserSightMaxPoints() : int
      {
         switch(§!"=§.§!$#§())
         {
            case §[9§.§%"<§.§=#@§:
               return !!(this.§]!%§.§'"&§ as §^#j§).§'#>§.§%"_§ ? int(§&$0§.§="=§) : 5;
            default:
               return §&$0§.§="=§;
         }
      }
   }
}
