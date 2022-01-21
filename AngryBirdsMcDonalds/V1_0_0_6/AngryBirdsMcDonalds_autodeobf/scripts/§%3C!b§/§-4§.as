package §<!B§
{
   import §7_§.§]![§;
   import §<L§.§!!G§;
   import §[!_§.§8U§;
   
   public class §-4§ extends §8U§
   {
       
      
      public function §-4§(param1:§!!G§, param2:§]![§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = mCurrentCameraSliderLocation;
         _loc2_ += param1 * §6!9§;
         var _loc4_:Number = -§"z§ * 0.7;
         if(_loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            §6!9§ = -§6!9§;
         }
         mCurrentCameraSliderLocation = _loc2_;
      }
   }
}
