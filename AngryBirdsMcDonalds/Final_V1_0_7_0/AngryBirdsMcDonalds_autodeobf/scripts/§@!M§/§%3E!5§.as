package §@!M§
{
   import §'!`§.§ !q§;
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§>![§;
   import §9!C§.§,!j§;
   
   public class §>!5§ extends § !q§
   {
       
      
      public function §>!5§(param1:§use §, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§,!j§) : void
      {
         §8+§ = "BIRD_REDBIG";
         super.addDestructionParticles(param1);
      }
      
      override public function addDamageParticles(param1:§,!j§, param2:int) : void
      {
         §8+§ = "BIRD_REDBIG";
         super.addDamageParticles(param1,param2);
      }
   }
}
