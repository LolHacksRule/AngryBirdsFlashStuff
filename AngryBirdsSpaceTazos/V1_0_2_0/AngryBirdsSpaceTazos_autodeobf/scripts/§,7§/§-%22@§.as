package §,7§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §;"=§.§]"<§;
   import §[,§.§1d§;
   
   public class §-"@§ extends §1d§
   {
       
      
      public function §-"@§(param1:Sprite, param2:b2World, param3:§]"<§)
      {
         super(param1,param2,param3);
      }
      
      protected function §,!Z§(param1:Number, param2:Number) : Number
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
