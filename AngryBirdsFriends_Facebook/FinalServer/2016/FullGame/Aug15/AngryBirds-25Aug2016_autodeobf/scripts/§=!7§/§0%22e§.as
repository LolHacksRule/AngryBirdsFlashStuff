package §=!7§
{
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §[#a§.§7!O§;
   import §`#C§.§8K§;
   
   public class §0"e§ extends §"y§
   {
       
      
      public function §0"e§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
      }
   }
}
