package §>!'§
{
   import § !t§.b2World;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!<§.§;§;
   
   public class §2!Q§ extends §7!U§
   {
       
      
      public function §2!Q§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         § !>§(§;§.§5B§);
         return true;
      }
   }
}
