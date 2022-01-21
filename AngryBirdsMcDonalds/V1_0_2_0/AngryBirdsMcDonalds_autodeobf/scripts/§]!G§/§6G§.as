package §]!G§
{
   import §%`§.§7!A§;
   import §'a§.§0!f§;
   import §2!`§.§3F§;
   import §3!g§.b2World;
   import §5x§.Sprite;
   
   public class §6G§ extends §7!A§
   {
       
      
      public function §6G§(param1:§0!g§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§3F§) : void
      {
         §6!?§ = "BIRD_REDBIG";
         super.addDestructionParticles(param1);
      }
      
      override public function addDamageParticles(param1:§3F§, param2:int) : void
      {
         §6!?§ = "BIRD_REDBIG";
         super.addDamageParticles(param1,param2);
      }
   }
}
