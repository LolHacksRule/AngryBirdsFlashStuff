package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-0y§.§_-ZB§;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   
   public class §_-j4§ extends §_-FR§
   {
       
      
      public function §_-j4§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-D4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-P7§(§_-ZB§.§_-uF§);
         return true;
      }
   }
}
