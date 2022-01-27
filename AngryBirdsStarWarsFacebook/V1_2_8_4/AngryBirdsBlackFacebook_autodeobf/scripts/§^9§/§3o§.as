package §^9§
{
   import §!r§.§?!x§;
   import §#g§.§["%§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §3o§ extends §?!x§
   {
       
      
      public function §3o§(param1:Sprite, param2:b2World, param3:§["%§)
      {
         super(param1,param2,param3);
      }
      
      protected function §!!m§(param1:Number, param2:Number) : Number
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
