package §_-u§
{
   import §_-EH§.b2World;
   import §_-pF§.Sprite;
   import §_-rp§.§_-BF§;
   import §_-rp§.§_-c5§;
   
   public class §_-fQ§ extends §_-5j§
   {
       
      
      public function §_-fQ§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§_-Av§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §_-vu§(§_-BF§.§_-kf§);
         return true;
      }
   }
}
