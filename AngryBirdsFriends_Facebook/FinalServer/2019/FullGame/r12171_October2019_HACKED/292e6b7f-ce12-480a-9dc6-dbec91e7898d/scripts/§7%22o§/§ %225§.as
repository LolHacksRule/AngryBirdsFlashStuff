package §7"o§
{
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §;!=§.§]!m§;
   
   public class § "5§ extends §>#5§
   {
       
      
      public function § "5§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
      }
   }
}
