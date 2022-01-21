package §<!M§
{
   import §-!F§.§`+§;
   import §4!,§.§+f§;
   import §55§.§>![§;
   
   public class §4!+§ extends §+f§
   {
       
      
      public function §4!+§(param1:§>![§, param2:§`+§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function slideCameraSlowly(param1:Number) : void
      {
         var _loc2_:Number = mCurrentCameraSliderLocation;
         _loc2_ += param1 * § !8§;
         var _loc4_:Number = -§=!o§ * 0.7;
         if(_loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            § !8§ = -§ !8§;
         }
         mCurrentCameraSliderLocation = _loc2_;
      }
   }
}
