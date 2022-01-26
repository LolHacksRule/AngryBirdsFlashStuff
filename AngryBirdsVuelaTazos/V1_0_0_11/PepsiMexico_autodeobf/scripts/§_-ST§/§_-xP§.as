package §_-ST§
{
   import §_-WW§.b2World;
   import §_-ez§.§_-Ay§;
   import §_-ez§.§_-nt§;
   import §_-vO§.Sprite;
   
   public class §_-xP§ extends §_-GF§
   {
       
      
      public function §_-xP§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-oF§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-4r§(§_-nt§.§_-u9§);
         return true;
      }
   }
}
