package §_-fr§
{
   import §_-43§.b2World;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   import §_-Kz§.§_-hD§;
   
   public class §_-pK§ extends §_-ZS§
   {
       
      
      public function §_-pK§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§ else§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-eX§(§_-hD§.§_-7M§);
         return true;
      }
   }
}
