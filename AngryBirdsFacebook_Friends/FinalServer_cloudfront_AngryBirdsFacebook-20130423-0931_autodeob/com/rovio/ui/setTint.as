package com.rovio.ui
{
   import flash.display.DisplayObject;
   import flash.geom.ColorTransform;
   
   public function setTint(param1:DisplayObject, param2:uint, param3:Number) : void
   {
      var _loc4_:ColorTransform = new ColorTransform();
      _loc4_.redMultiplier = _loc4_.greenMultiplier = _loc4_.blueMultiplier = 1 - param3;
      _loc4_.redOffset = Math.round(((param2 & 16711680) >> 16) * param3);
      _loc4_.greenOffset = Math.round(((param2 & 65280) >> 8) * param3);
      _loc4_.blueOffset = Math.round((param2 & 255) * param3);
      param1.transform.colorTransform = _loc4_;
   }
}
