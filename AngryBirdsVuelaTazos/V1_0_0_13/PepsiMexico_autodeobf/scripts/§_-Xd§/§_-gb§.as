package §_-Xd§
{
   import §_-FQ§.§_-7W§;
   import §_-FQ§.§_-Vg§;
   import §_-UX§.Sprite;
   import §_-qW§.b2World;
   
   public class §_-gb§ extends §_-Xr§
   {
       
      
      public function §_-gb§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-OL§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §switch§(§_-Vg§.§_-3w§);
         return true;
      }
   }
}
