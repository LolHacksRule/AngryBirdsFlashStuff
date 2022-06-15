package §7"o§
{
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §8#K§.§&2§;
   import §;!=§.§'#N§;
   
   public class §=" § extends §'#N§
   {
       
      
      public function §=" §(param1:Sprite, param2:b2World, param3:§&2§)
      {
         super(param1,param2,param3);
      }
      
      protected function §?y§(param1:Number, param2:Number) : Number
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
