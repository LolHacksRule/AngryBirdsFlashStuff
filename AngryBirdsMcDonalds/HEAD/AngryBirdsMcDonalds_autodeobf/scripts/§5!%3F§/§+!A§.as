package §5!?§
{
   import § !J§.§%M§;
   import §,4§.§0B§;
   import §?!d§.§-E§;
   
   public class §+!A§ extends §-E§
   {
       
      
      public function §+!A§(param1:§%M§, param2:§0B§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = mCurrentCameraSliderLocation;
         _loc2_ += param1 * §<?§;
         var _loc4_:Number = -§3!3§ * 0.7;
         if(_loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            §<?§ = -§<?§;
         }
         mCurrentCameraSliderLocation = _loc2_;
      }
   }
}
