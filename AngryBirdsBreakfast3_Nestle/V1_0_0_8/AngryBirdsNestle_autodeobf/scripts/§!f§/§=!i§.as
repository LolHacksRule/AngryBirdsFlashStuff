package §!f§
{
   import §!"+§.§!o§;
   import §"P§.§,Y§;
   import §-![§.Sprite;
   import §=!c§.b2World;
   
   public class §=!i§ extends §,Y§
   {
       
      
      public function §=!i§(param1:Sprite, param2:b2World, param3:§!o§)
      {
         super(param1,param2,param3);
      }
      
      protected function §,6§(param1:Number, param2:Number) : Number
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
