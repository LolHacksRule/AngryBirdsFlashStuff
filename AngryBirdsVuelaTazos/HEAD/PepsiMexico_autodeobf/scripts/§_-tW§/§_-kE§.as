package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-Di§.§_-pX§;
   import §_-SE§.Sprite;
   import §_-vk§.b2World;
   
   public class §_-kE§ extends §_-f5§
   {
       
      
      public function §_-kE§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-S5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-XK§(§_-pX§.§_-15§);
         return true;
      }
   }
}
