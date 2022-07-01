package §;Z§
{
   import § !=§.Sprite;
   import §0!j§.b2World;
   import §2!k§.§,@§;
   import §[^§.§`!M§;
   
   public class §0R§ extends §,@§
   {
       
      
      public function §0R§(param1:Sprite, param2:b2World, param3:§`!M§)
      {
         super(param1,param2,param3);
      }
      
      protected function §5!j§(param1:Number, param2:Number) : Number
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
