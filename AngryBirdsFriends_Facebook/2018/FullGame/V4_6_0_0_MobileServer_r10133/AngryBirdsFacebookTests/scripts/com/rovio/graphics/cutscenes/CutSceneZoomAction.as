package com.rovio.graphics.cutscenes
{
   import com.rovio.graphics.TextureManager;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class CutSceneZoomAction extends CutSceneAction
   {
       
      
      private var mImageName:String = "";
      
      private var mInitialZoom:Number = 1.0;
      
      private var mTargetZoom:Number = 1.0;
      
      public function CutSceneZoomAction(time:Number, duration:Number, imageName:String, initialZoom:Number, targetZoom:Number)
      {
         super(time,duration);
         this.mImageName = imageName;
         this.mInitialZoom = initialZoom;
         this.mTargetZoom = targetZoom;
      }
      
      override public function update(time:Number, sprite:Sprite, textureManager:TextureManager) : Boolean
      {
         var target:DisplayObject = null;
         if(time > this.time + duration)
         {
            time = this.time + duration;
         }
         if(time > this.time)
         {
            target = sprite.getChildByName(this.mImageName);
            if(target)
            {
               target.scaleX = this.mInitialZoom + (this.mTargetZoom - this.mInitialZoom) * this.getTimeValue(time);
               target.scaleY = this.mInitialZoom + (this.mTargetZoom - this.mInitialZoom) * this.getTimeValue(time);
            }
         }
         if(time >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function getTimeValue(time:Number) : Number
      {
         if(duration <= 0)
         {
            return 1;
         }
         var value:Number = (time - this.time) / duration;
         value *= 2;
         if(value < 1)
         {
            return Math.pow(value,3) / 2;
         }
         value -= 2;
         return (Math.pow(value,3) + 2) / 2;
      }
      
      override public function clone() : CutSceneAction
      {
         return new CutSceneZoomAction(time,duration,this.mImageName,this.mInitialZoom,this.mTargetZoom);
      }
   }
}
