package §2!`§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §6"R§.§!z§;
   import §>P§.§=!,§;
   
   public class §""j§ extends §!z§
   {
       
      
      public function §""j§(param1:Sprite, param2:b2World, param3:§=!,§)
      {
         super(param1,param2,param3);
      }
      
      protected function §2"'§(param1:Number, param2:Number) : Number
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
