package §!!N§
{
   import §'a§.§0!f§;
   import §+-§.§,K§;
   import §[_§.§2D§;
   
   public class §76§ extends §2D§
   {
       
      
      public function §76§(param1:§0!f§, param2:§,K§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = mCurrentCameraSliderLocation;
         _loc2_ += param1 * §#!@§;
         var _loc4_:Number = -§5M§ * 0.7;
         if(_loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            §#!@§ = -§#!@§;
         }
         mCurrentCameraSliderLocation = _loc2_;
      }
   }
}
