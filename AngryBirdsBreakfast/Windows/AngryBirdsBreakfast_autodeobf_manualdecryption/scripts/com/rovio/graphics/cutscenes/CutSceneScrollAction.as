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
      
      public function CutSceneScrollAction(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.mImageName = param3;
         this.mX = param4;
         this.mY = param5;
         this.mType = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.mHorizontal = param1;
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
               if(_loc4_.name == CutSceneImageAction.MAIN_SPRITE_NAME)
               {
                  if(this.mHorizontal)
                  {
                     _loc4_.x = -this.getScrollLength() * this.getTimeValue(param1);
                  }
                  else
                  {
                     _loc4_.y = this.getScrollLength() * this.getTimeValue(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.mX;
                  _loc4_.y -= this.mY;
               }
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
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.mType)
         {
            case TYPE_CUBIC_IN_OUT:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case TYPE_SIN_IN_OUT:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
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
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.mWidth = param1;
         this.mHeight = param2;
      }
      
      override public function clone() : CutSceneAction
      {
         var _loc1_:CutSceneScrollAction = new CutSceneScrollAction(time,duration,this.mImageName,this.mX,this.mY,this.mType);
         _loc1_.mWidth = this.mWidth;
         _loc1_.mHeight = this.mHeight;
         _loc1_.mHorizontal = this.mHorizontal;
         return _loc1_;
      }
   }
}
