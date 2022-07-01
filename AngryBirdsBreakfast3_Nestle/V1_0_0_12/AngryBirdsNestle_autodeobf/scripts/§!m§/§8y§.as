package §!m§
{
   import §%Z§.§+!F§;
   import §2!s§.§!e§;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §8y§ extends §+!F§
   {
       
      
      public function §8y§(param1:Sprite, param2:b2World, param3:§!e§)
      {
         super(param1,param2,param3);
      }
      
      protected function §@u§(param1:Number, param2:Number) : Number
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
