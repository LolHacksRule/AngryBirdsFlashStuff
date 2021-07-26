package §!'§
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §8§.§,§;
   import §^"S§.Sprite;
   
   public class §3"V§ extends §,#5§
   {
       
      
      public function §3"V§(param1:Sprite, param2:b2World, param3:§4U§)
      {
         super(param1,param2,param3);
      }
      
      protected function §>p§(param1:Number, param2:Number) : Number
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
