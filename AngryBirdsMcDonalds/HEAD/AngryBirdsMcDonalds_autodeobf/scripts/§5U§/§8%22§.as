package §5U§
{
   import § !J§.§%M§;
   import §4j§.§%#§;
   import §8T§.b2World;
   import §[!B§.§7!N§;
   import §`!n§.Sprite;
   
   public class §8"§ extends §%#§
   {
       
      
      public function §8"§(param1:§@9§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§7!N§) : void
      {
         §`!p§ = "BIRD_REDBIG";
         super.addDestructionParticles(param1);
      }
      
      override public function addDamageParticles(param1:§7!N§, param2:int) : void
      {
         §`!p§ = "BIRD_REDBIG";
         super.addDamageParticles(param1,param2);
      }
   }
}
