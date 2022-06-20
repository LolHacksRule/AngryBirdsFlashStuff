package com.rovio.graphics
{
   import starling.display.DisplayObject;
   import starling.display.Image;
   
   public class AnimationFrameTexture extends AnimationFrame
   {
       
      
      protected var mTexture:PivotTexture;
      
      public function AnimationFrameTexture(name:String, texture:PivotTexture, timeMilliSeconds:Number)
      {
         super(name,timeMilliSeconds);
         this.mTexture = texture;
      }
      
      override public function updateDisplayObject(target:DisplayObject, useColor:Boolean = true) : DisplayObject
      {
         var image:Image = target as Image;
         if(!image)
         {
            if(target)
            {
               target.dispose();
            }
            image = new Image(this.mTexture.texture,useColor);
         }
         else
         {
            image.texture = this.mTexture.texture;
         }
         image.pivotX = -this.mTexture.pivotX;
         image.pivotY = -this.mTexture.pivotY;
         image.scaleX = this.mTexture.scale;
         image.scaleY = this.mTexture.scale;
         return image;
      }
      
      override public function flipAnimation(horizontally:Boolean) : void
      {
         this.mTexture.flipAnimation(horizontally);
      }
   }
}
