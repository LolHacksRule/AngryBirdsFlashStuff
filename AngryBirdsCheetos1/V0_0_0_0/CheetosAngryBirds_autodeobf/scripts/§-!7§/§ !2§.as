package §-!7§
{
   import §&!"§.b2World;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §`a§.Sprite;
   
   public class § !2§ extends §^!1§
   {
       
      
      public function § !2§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §1!0§(§;c§.§1p§);
         return true;
      }
   }
}
