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
      
      public function CutSceneZoomAction(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2);
         this.mImageName = param3;
         this.mInitialZoom = param4;
         this.mTargetZoom = param5;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.mImageName))
            {
               _loc4_.scaleX = this.mInitialZoom + (this.mTargetZoom - this.mInitialZoom) * this.getTimeValue(param1);
               _loc4_.scaleY = this.mInitialZoom + (this.mTargetZoom - this.mInitialZoom) * this.getTimeValue(param1);
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function getTimeValue(param1:Number) : Number
      {
         if(duration <= 0)
         {
            return 1;
         }
         var _loc2_:Number = (param1 - this.time) / duration;
         _loc2_ *= 2;
         if(_loc2_ < 1)
         {
            return Math.pow(_loc2_,3) / 2;
         }
         _loc2_ -= 2;
         return (Math.pow(_loc2_,3) + 2) / 2;
      }
      
      override public function clone() : CutSceneAction
      {
         return new CutSceneZoomAction(time,duration,this.mImageName,this.mInitialZoom,this.mTargetZoom);
      }
   }
}
