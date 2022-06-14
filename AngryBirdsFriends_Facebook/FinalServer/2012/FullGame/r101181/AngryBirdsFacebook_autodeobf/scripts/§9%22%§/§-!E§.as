package §9"%§
{
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§2a§;
   import §9"!§.§9"3§;
   
   public class §-!E§ extends § H§
   {
       
      
      public function §-!E§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §!!6§(§2a§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
