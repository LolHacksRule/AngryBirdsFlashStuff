package §?!W§
{
   import §!!g§.§8d§;
   import §@!b§.§@!k§;
   import §`!d§.§0%§;
   
   public class §1'§ extends §8d§
   {
       
      
      public function §1'§(param1:§@!k§, param2:§0%§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = mCurrentCameraSliderLocation;
         _loc2_ += param1 * §3!c§;
         var _loc4_:Number = -§2Z§ * 0.7;
         if(_loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            §3!c§ = -§3!c§;
         }
         mCurrentCameraSliderLocation = _loc2_;
      }
   }
}
