package §83§
{
   import §3!@§.§ s§;
   import §^U§.§3$§;
   import §finally§.§@z§;
   
   public class §7!G§ extends §3$§
   {
       
      
      public function §7!G§(param1:§ s§, param2:§@z§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = mCurrentCameraSliderLocation;
         _loc2_ += param1 * §0!$§;
         var _loc4_:Number = -§7t§ * 0.7;
         if(_loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            §0!$§ = -§0!$§;
         }
         mCurrentCameraSliderLocation = _loc2_;
      }
   }
}
