package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-xV§;
   import §_-00B§.b2World;
   import §case §.Sprite;
   
   public class §_-wQ§ extends §_-ON§
   {
       
      
      public function §_-wQ§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-lp§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-e3§(§_-xV§.§_-ul§);
         return true;
      }
   }
}
