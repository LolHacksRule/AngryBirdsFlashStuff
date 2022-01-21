package §5!o§
{
   import §&!K§.§3b§;
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §5!G§.§8J§;
   import §@!b§.§@!k§;
   
   public class §=$§ extends §8J§
   {
       
      
      public function §=$§(param1:§0!V§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§3b§) : void
      {
         §@!i§ = "BIRD_REDBIG";
         super.addDestructionParticles(param1);
      }
      
      override public function addDamageParticles(param1:§3b§, param2:int) : void
      {
         §@!i§ = "BIRD_REDBIG";
         super.addDamageParticles(param1,param2);
      }
   }
}
