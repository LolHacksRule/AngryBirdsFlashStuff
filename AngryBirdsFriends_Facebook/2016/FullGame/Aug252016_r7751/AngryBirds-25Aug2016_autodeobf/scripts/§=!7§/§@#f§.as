package §=!7§
{
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §[#a§.§<"H§;
   import §`#C§.§8K§;
   
   public class §@#f§ extends §<"H§
   {
       
      
      public function §@#f§(param1:Sprite, param2:b2World, param3:§8K§)
      {
         super(param1,param2,param3);
      }
      
      protected function §-Z§(param1:Number, param2:Number) : Number
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
