package §5!L§
{
   import §2![§.Sprite;
   import §7!5§.b2World;
   import §<L§.§!!G§;
   import §<L§.§7!4§;
   
   public class §%!8§ extends §1L§
   {
       
      
      public function §%!8§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?8§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §#A§(§7!4§.BIRD_LAUNCH_FORCE);
         return true;
      }
   }
}
