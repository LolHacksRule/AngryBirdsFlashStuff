package §2!`§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §6"R§.§""M§;
   import §>P§.§=!,§;
   
   public class §0!&§ extends §5[§
   {
       
      
      public function §0!&§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
      }
   }
}
