package §1"H§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §7!8§.Sprite;
   import §]">§.§<!=§;
   
   public class §+>§ extends §<!=§
   {
       
      
      public function §+>§(param1:Sprite, param2:b2World, param3:§8X§)
      {
         super(param1,param2,param3);
      }
      
      protected function §!9§(param1:Number, param2:Number) : Number
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
