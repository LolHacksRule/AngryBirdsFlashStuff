package §#!4§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §=!`§.§=6§;
   
   public class §`v§ extends §=6§
   {
       
      
      public function §`v§(param1:Sprite, param2:b2World, param3:§9!n§)
      {
         super(param1,param2,param3);
      }
      
      protected function §4"0§(param1:Number, param2:Number) : Number
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
