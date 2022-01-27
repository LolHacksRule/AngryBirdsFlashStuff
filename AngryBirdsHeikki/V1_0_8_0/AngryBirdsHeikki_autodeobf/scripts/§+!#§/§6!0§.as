package §+!#§
{
   import §0!?§.b2World;
   import §2z§.§2!U§;
   import §2z§.§@!N§;
   import §=!E§.Sprite;
   
   public class §6!0§ extends § q§
   {
       
      
      public function §6!0§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§"!6§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §4e§(§@!N§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
