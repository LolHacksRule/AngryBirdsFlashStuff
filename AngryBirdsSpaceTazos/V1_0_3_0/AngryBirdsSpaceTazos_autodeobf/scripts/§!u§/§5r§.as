package §!u§
{
   import §4"@§.Sprite;
   import §5"D§.§>q§;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   
   public class §5r§ extends §>q§
   {
       
      
      public function §5r§(param1:Sprite, param2:b2World, param3:§<!r§)
      {
         super(param1,param2,param3);
      }
      
      protected function §;"3§(param1:Number, param2:Number) : Number
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
