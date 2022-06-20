package §%$0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §^0§.§4!t§;
   
   public class §1c§ extends §4!t§
   {
       
      
      public function §1c§(param1:Sprite, param2:b2World, param3:§-"8§)
      {
         super(param1,param2,param3);
      }
      
      protected function §'$'§(param1:Number, param2:Number) : Number
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
