package §7"p§
{
   import §'G§.§;D§;
   import §6!3§.§8$B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §3!%§ extends §`!7§
   {
       
      
      public function §3!%§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
      }
   }
}
