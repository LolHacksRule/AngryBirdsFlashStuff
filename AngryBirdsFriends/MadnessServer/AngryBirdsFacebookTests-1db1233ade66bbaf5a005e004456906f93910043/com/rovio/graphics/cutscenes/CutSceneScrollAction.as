package com.rovio.graphics.cutscenes
{
   import com.rovio.graphics.TextureManager;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class CutSceneScrollAction extends CutSceneAction
   {
      
      public static const SCREEN_WIDTH:Number = 1024;
      
      public static const SCREEN_HEIGHT:Number = 658;
      
      public static const SCREEN_Y_OFFSET:Number = 55;
      
      public static const TYPE_CUBIC_IN_OUT:String = "cubic_in_out";
      
      public static const TYPE_SIN_IN_OUT:String = "sin_in_out";
      
      public static const TYPE_NONE:String = "none";
       
      
      private var mImageName:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var mWidth:Number;
      
      private var mHeight:Number;
      
      private var mHorizontal:Boolean = true;
      
      private var mType:String = "cubic_in_out";
      
      public function CutSceneScrollAction(time:Number, duration:Number, imageName:String, x:Number, y:Number, type:String)
      {
         super(time,duration);
         this.mImageName = imageName;
         this.mX = x;
         this.mY = y;
         this.mType = type;
      }
      
      public function set horizontal(horizontal:Boolean) : void
      {
         this.mHorizontal = horizontal;
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
               if(target.name == CutSceneImageAction.MAIN_SPRITE_NAME)
               {
                  if(this.mHorizontal)
                  {
                     target.x = -this.getScrollLength() * this.getTimeValue(time);
                  }
                  else
                  {
                     target.y = this.getScrollLength() * this.getTimeValue(time);
                  }
               }
               else
               {
                  target.x -= this.mX;
                  target.y -= this.mY;
               }
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
         var value:Number = (time - this.time) / duration;
         switch(this.mType)
         {
            case TYPE_CUBIC_IN_OUT:
               value *= 2;
               if(value < 1)
               {
                  return Math.pow(value,3) / 2;
               }
               value -= 2;
               return (Math.pow(value,3) + 2) / 2;
               break;
            case TYPE_SIN_IN_OUT:
               return -(Math.cos(Math.PI * value) - 1) / 2;
            default:
               return value;
         }
      }
      
      protected function getScrollLength() : Number
      {
         if(this.mHorizontal)
         {
            return this.mWidth - SCREEN_WIDTH;
         }
         return this.mHeight - SCREEN_HEIGHT;
      }
      
      public function setSize(width:Number, height:Number) : void
      {
         this.mWidth = width;
         this.mHeight = height;
      }
      
      override public function clone() : CutSceneAction
      {
         var clone:CutSceneScrollAction = new CutSceneScrollAction(time,duration,this.mImageName,this.mX,this.mY,this.mType);
         clone.mWidth = this.mWidth;
         clone.mHeight = this.mHeight;
         clone.mHorizontal = this.mHorizontal;
         return clone;
      }
   }
}
