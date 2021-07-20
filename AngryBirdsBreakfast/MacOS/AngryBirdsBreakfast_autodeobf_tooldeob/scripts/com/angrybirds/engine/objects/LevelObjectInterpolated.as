package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.factory.Log;
   
   public class LevelObjectInterpolated extends LevelObjectBase
   {
      
      private static const PI:Number = Math.PI;
      
      private static const PI_2:Number = Math.PI * 2;
       
      
      private var mXScreenNext:Number;
      
      private var mYScreenNext:Number;
      
      private var mRotationScreenNext:Number;
      
      private var mXScreenPrevious:Number;
      
      private var mYScreenPrevious:Number;
      
      private var mRotationScreenPrevious:Number;
      
      private var mLifeTimeMilliSeconds:Number = 0.0;
      
      private var mInterpolationXOffset:Number = 0;
      
      private var mInterpolationYOffset:Number = 0;
      
      protected var mLevelObjectModel:LevelObjectModel;
      
      protected var mX:Number = 0;
      
      protected var mY:Number = 0;
      
      protected var mRotation:Number = 0;
      
      public function LevelObjectInterpolated(param1:Sprite, param2:b2World, param3:LevelItem, param4:LevelObjectModel)
      {
         this.mLevelObjectModel = param4;
         super(param1,param2,param3);
         this.mRotationScreenPrevious = this.mLevelObjectModel.angle;
         this.mRotationScreenNext = this.mLevelObjectModel.angle;
         this.mXScreenPrevious = this.mLevelObjectModel.x / LevelMain.PIXEL_TO_B2_SCALE;
         this.mYScreenPrevious = this.mLevelObjectModel.y / LevelMain.PIXEL_TO_B2_SCALE;
         this.mXScreenNext = this.mLevelObjectModel.x / LevelMain.PIXEL_TO_B2_SCALE;
         this.mYScreenNext = this.mLevelObjectModel.y / LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function get lifeTimeMilliSeconds() : Number
      {
         return this.mLifeTimeMilliSeconds;
      }
      
      public function get levelObjectModel() : LevelObjectModel
      {
         return this.mLevelObjectModel;
      }
      
      public function getPositionX() : Number
      {
         return this.mX * LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function getPositionY() : Number
      {
         return this.mY * LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      override public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         this.updatePreviousScreenRotation(this.mRotationScreenNext);
         this.mXScreenPrevious = this.mXScreenNext;
         this.mYScreenPrevious = this.mYScreenNext;
         this.mRotationScreenNext = getBody().GetAngle();
         this.mXScreenNext = _loc3_ / LevelMain.PIXEL_TO_B2_SCALE;
         this.mYScreenNext = _loc4_ / LevelMain.PIXEL_TO_B2_SCALE;
         this.mLifeTimeMilliSeconds += param1;
      }
      
      protected function updatePreviousScreenRotation(param1:Number) : void
      {
         this.mRotationScreenPrevious = param1;
         this.mRotationScreenNext = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.interpolateRenderer(param2,param3);
      }
      
      protected function interpolateRenderer(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            Log.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.mXScreenNext == this.mXScreenPrevious || param2 == 0)
         {
            this.mInterpolationXOffset = 0;
            this.mX = this.mXScreenNext;
         }
         else
         {
            this.mInterpolationXOffset = param2 * (this.mXScreenPrevious - this.mXScreenNext) / param1;
            this.mX = this.mXScreenNext + this.mInterpolationXOffset;
         }
         if(this.mYScreenNext == this.mYScreenPrevious || param2 == 0)
         {
            this.mInterpolationYOffset = 0;
            this.mY = this.mYScreenNext;
         }
         else
         {
            this.mInterpolationYOffset = param2 * (this.mYScreenPrevious - this.mYScreenNext) / param1;
            this.mY = this.mYScreenNext + this.mInterpolationYOffset;
         }
         if(this.mRotationScreenNext == this.mRotationScreenPrevious || param2 == 0)
         {
            this.mRotation = this.mRotationScreenNext;
         }
         else
         {
            _loc3_ = this.mRotationScreenNext - this.mRotationScreenPrevious;
            if(_loc3_ > PI)
            {
               _loc3_ -= PI_2;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += PI_2;
            }
            this.mRotation = this.mRotationScreenPrevious + (param1 - param2) / param1 * _loc3_;
            if(this.mRotation >= PI_2)
            {
               this.mRotation -= PI_2;
            }
            else if(this.mRotation < 0)
            {
               this.mRotation += PI_2;
            }
         }
      }
   }
}
