package com.rovio.graphics
{
   import starling.display.Image;
   import starling.display.DisplayObject;
   
   public class AnimationFrameTexture extends AnimationFrame
   {
       
      
      protected var mTexture:PivotTexture;
      
      public function AnimationFrameTexture(param1:PivotTexture, param2:Number)
      {
         super(param2);
         this.mTexture = param1;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Image = param1 as Image;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
            _loc2_ = new Image(this.mTexture.texture,true);
         }
         else
         {
            _loc2_.texture = this.mTexture.texture;
         }
         _loc2_.pivotX = -this.mTexture.pivotX;
         _loc2_.pivotY = -this.mTexture.pivotY;
         _loc2_.scaleX = this.mTexture.scale;
         _loc2_.scaleY = this.mTexture.scale;
         return _loc2_;
      }
   }
}
