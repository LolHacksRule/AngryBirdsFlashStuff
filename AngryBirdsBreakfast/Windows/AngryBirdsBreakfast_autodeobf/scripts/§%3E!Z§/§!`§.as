package §>!Z§
{
   import §&v§.§9B§;
   import §,z§.§<!r§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   
   public class §!`§ extends §<!r§
   {
       
      
      public function §!`§(param1:Sprite, param2:b2World, param3:§9B§)
      {
         super(param1,param2,param3);
      }
      
      protected function §4!8§(param1:Number, param2:Number) : Number
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
