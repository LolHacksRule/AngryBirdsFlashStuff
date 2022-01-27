package §1"?§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9"!§.§,%§;
   
   public class §%!0§ extends §,%§
   {
       
      
      public function §%!0§(param1:Sprite, param2:b2World, param3:§-"8§)
      {
         super(param1,param2,param3);
      }
      
      protected function §7A§(param1:Number, param2:Number) : Number
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
