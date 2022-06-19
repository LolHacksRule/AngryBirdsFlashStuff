package §_-bl§
{
   import §_-2r§.§_-Qo§;
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §try§.b2World;
   
   public class §_-TX§ extends §_-ag§
   {
       
      
      public function §_-TX§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-S4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-ak§(§_-Qo§.§_-ck§);
         return true;
      }
   }
}
