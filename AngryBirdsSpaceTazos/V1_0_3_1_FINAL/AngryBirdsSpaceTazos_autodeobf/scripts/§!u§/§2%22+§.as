package §!u§
{
   import §4"@§.Sprite;
   import §5"D§.§0!5§;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §2"+§ extends §3!=§
   {
       
      
      public function §2"+§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
      }
   }
}
