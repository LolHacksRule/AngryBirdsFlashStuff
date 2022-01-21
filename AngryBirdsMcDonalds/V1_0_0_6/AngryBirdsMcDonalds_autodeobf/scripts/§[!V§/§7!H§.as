package §[!V§
{
   import §2![§.Sprite;
   import §5!L§.§,4§;
   import §7!5§.b2World;
   import §8!§.§'F§;
   import §<L§.§!!G§;
   
   public class §7!H§ extends §,4§
   {
       
      
      public function §7!H§(param1:§]J§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§'F§) : void
      {
         §%!O§ = "BIRD_REDBIG";
         super.addDestructionParticles(param1);
      }
      
      override public function addDamageParticles(param1:§'F§, param2:int) : void
      {
         §%!O§ = "BIRD_REDBIG";
         super.addDamageParticles(param1,param2);
      }
   }
}
