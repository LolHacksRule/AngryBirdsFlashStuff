package §%A§
{
   import §!6§.Sprite;
   import §-!!§.§1#B§;
   import §8#t§.b2World;
   import §?§.§,Y§;
   
   public class §"j§ extends §1#B§
   {
       
      
      public function §"j§(param1:Sprite, param2:b2World, param3:§,Y§)
      {
         super(param1,param2,param3);
      }
      
      protected function §8$D§(param1:Number, param2:Number) : Number
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
