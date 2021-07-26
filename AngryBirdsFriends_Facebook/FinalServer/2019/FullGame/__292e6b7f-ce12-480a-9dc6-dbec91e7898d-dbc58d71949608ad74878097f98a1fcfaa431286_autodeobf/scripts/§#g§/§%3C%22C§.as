package §#g§
{
   import §+!Y§.§="S§;
   import §+!Y§.§[@§;
   import §,#e§.Sprite;
   import §-#]§.Texture;
   import §6#h§.§5#&§;
   
   public class §<"C§ extends §?#N§
   {
       
      
      private var §%!'§:§5#&§;
      
      public function §<"C§(param1:§5#&§, param2:Sprite, param3:Texture, param4:Number, param5:Number)
      {
         super(param2,param3,param4,param5);
         this.§%!'§ = param1;
      }
      
      override protected function laserSightMaxPoints() : int
      {
         switch(§="S§.§2!c§())
         {
            case §[@§.§;"c§.§8t§:
               return !!(this.§%!'§.§,!M§ as §!P§).§]!_§.§6C§ ? int(§7#E§.§`"5§) : 5;
            default:
               return §7#E§.§`"5§;
         }
      }
   }
}
