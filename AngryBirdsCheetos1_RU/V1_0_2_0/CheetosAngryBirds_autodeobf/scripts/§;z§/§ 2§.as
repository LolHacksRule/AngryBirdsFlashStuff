package §;z§
{
   import §,H§.Sprite;
   import §-A§.§ '§;
   import §-A§.§%9§;
   import §4!&§.b2World;
   
   public class § 2§ extends §=P§
   {
       
      
      public function § 2§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§]!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §,N§(§ '§.§+!4§);
         return true;
      }
   }
}
