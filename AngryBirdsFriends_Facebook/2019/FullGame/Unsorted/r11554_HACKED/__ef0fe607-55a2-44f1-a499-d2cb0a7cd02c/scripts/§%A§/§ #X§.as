package §%A§
{
   import §!6§.Sprite;
   import §-!!§.§ #'§;
   import §8#t§.b2World;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class § #X§ extends §=#a§
   {
       
      
      public function § #X§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
      }
   }
}
