package com.rovio.ui
{
   import flash.display.DisplayObject;
   import flash.geom.ColorTransform;
   
   public function setTint(displayObject:DisplayObject, tintColor:uint, tintMultiplier:Number) : void
   {
      var colTransform:ColorTransform = new ColorTransform();
      colTransform.redMultiplier = colTransform.greenMultiplier = colTransform.blueMultiplier = 1 - tintMultiplier;
      colTransform.redOffset = Math.round(((tintColor & 16711680) >> 16) * tintMultiplier);
      colTransform.greenOffset = Math.round(((tintColor & 65280) >> 8) * tintMultiplier);
      colTransform.blueOffset = Math.round((tintColor & 255) * tintMultiplier);
      displayObject.transform.colorTransform = colTransform;
   }
}
