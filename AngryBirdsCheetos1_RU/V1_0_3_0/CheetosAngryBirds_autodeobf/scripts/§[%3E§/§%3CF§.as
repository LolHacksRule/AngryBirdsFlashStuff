package §[>§
{
   import §4]§.b2World;
   import §9!a§.Sprite;
   import §9T§.§#!4§;
   import §9T§.§=!^§;
   
   public class §<F§ extends §;J§
   {
       
      
      public function §<F§(param1:§'!'§, param2:Sprite, param3:b2World, param4:§=!^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§'!'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §4!?§(§#!4§.§0=§);
         return true;
      }
   }
}
