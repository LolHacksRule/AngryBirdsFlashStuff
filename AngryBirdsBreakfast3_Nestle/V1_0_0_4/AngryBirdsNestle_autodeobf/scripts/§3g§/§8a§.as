package §3g§
{
   import §-!f§.Sprite;
   import §5!7§.§3!Y§;
   import §9"5§.b2World;
   import §]!q§.§;!4§;
   
   public class §8a§ extends §;!4§
   {
       
      
      public function §8a§(param1:Sprite, param2:b2World, param3:§3!Y§)
      {
         super(param1,param2,param3);
      }
      
      protected function §`@§(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(isNaN(param2))
         {
            param2 = 0;
         }
         return param1 + (param2 - param1) * Math.random();
      }
   }
}
