package §%`§
{
   import §'a§.§0!f§;
   import §'a§.§0U§;
   import §3!g§.b2World;
   import §5x§.Sprite;
   
   public class §#>§ extends override
   {
       
      
      public function §#>§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§,!k§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §^s§(§0U§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
