package §^$1§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §>!5§.§-!S§;
   
   public class § #4§ extends §4#_§
   {
       
      
      public function § #4§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
      }
   }
}
