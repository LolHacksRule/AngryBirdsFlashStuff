package §7"p§
{
   import §6!3§.§!y§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §[!f§ extends §!y§
   {
       
      
      public function §[!f§(param1:Sprite, param2:b2World, param3:§?$>§)
      {
         super(param1,param2,param3);
      }
      
      protected function §4#>§(param1:Number, param2:Number) : Number
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
