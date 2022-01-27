package §^9§
{
   import §!!k§.§1!^§;
   import §!r§.§'=§;
   import §#g§.§["%§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §"#5§ extends §^S§
   {
       
      
      public function §"#5§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
      }
   }
}
