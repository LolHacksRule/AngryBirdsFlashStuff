package §_-mj§
{
   import §_-5Y§.§_-GA§;
   import §_-5Y§.§_-yw§;
   import §_-b5§.Sprite;
   import §const§.b2World;
   
   public class §_-eT§ extends §_-8x§
   {
       
      
      public function §_-eT§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-Fv§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-xY§(§_-GA§.§_-Qg§);
         return true;
      }
   }
}
