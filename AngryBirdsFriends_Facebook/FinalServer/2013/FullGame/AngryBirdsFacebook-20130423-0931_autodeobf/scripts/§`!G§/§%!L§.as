package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§&=§;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §%!L§ extends §2"L§
   {
       
      
      public function §%!L§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §%<§(§&=§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
