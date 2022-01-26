package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-7G§;
   import §_-OJ§.§_-tL§;
   
   public class §_-kK§ extends §_-zf§
   {
       
      
      public function §_-kK§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-QR§(§_-7G§.§_-st§);
         return true;
      }
   }
}
