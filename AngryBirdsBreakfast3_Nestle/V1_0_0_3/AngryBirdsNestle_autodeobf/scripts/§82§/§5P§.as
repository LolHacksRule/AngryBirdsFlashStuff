package §82§
{
   import §!!<§.§>"4§;
   import §"!-§.§@!4§;
   import §0!Y§.Sprite;
   import §;'§.b2World;
   
   public class §5P§ extends §@!4§
   {
       
      
      public function §5P§(param1:Sprite, param2:b2World, param3:§>"4§)
      {
         super(param1,param2,param3);
      }
      
      protected function §9!V§(param1:Number, param2:Number) : Number
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
