package §]!D§
{
   import §8!`§.§%t§;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §?0§.b2World;
   
   public class §&Z§ extends §,!@§
   {
       
      
      public function §&Z§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?!9§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §-Z§(§%t§.§7U§);
         return true;
      }
   }
}
