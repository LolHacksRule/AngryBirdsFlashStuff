package §!'§
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §8§.§&#V§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §3!p§ extends §throw§
   {
       
      
      public function §3!p§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
      }
   }
}
