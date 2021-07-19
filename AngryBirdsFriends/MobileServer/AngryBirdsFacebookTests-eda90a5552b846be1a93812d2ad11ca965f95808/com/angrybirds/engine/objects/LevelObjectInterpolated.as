package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.factory.Log;
   import starling.display.Sprite;
   
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
      
      private var mInterpolationXOffset:Number = 0;
      
      private var mInterpolationYOffset:Number = 0;
      
      protected var mLevelObjectModel:LevelObjectModel;
      
      protected var mX:Number = 0;
      
      protected var mY:Number = 0;
      
      protected var mRotation:Number = 0;
      
      public function LevelObjectInterpolated(sprite:Sprite, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel)
      {
         this.mLevelObjectModel = levelObjectModel;
         super(sprite,world,levelItem);
         this.mRotationScreenPrevious = this.mLevelObjectModel.angle;
         this.mRotationScreenNext = this.mLevelObjectModel.angle;
         this.mXScreenPrevious = this.mLevelObjectModel.x / LevelMain.PIXEL_TO_B2_SCALE;
         this.mYScreenPrevious = this.mLevelObjectModel.y / LevelMain.PIXEL_TO_B2_SCALE;
         this.mXScreenNext = this.mLevelObjectModel.x / LevelMain.PIXEL_TO_B2_SCALE;
         this.mYScreenNext = this.mLevelObjectModel.y / LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mLevelObjectModel.z != LevelObject.Z_NOT_SET)
         {
            setZ(this.mLevelObjectModel.z);
         }
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
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         var xb2:Number = getBody().GetPosition().x;
         var yb2:Number = getBody().GetPosition().y;
         this.updatePreviousScreenRotation(this.mRotationScreenNext);
         this.mXScreenPrevious = this.mXScreenNext;
         this.mYScreenPrevious = this.mYScreenNext;
         this.mRotationScreenNext = getBody().GetAngle();
         this.mXScreenNext = xb2 / LevelMain.PIXEL_TO_B2_SCALE;
         this.mYScreenNext = yb2 / LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      protected function updatePreviousScreenRotation(rotation:Number) : void
      {
         this.mRotationScreenPrevious = rotation;
         this.mRotationScreenNext = rotation;
      }
      
      override public function render(deltaTimeMilliSeconds:Number, worldStepMilliSeconds:Number, worldTimeOffsetMilliSeconds:Number) : void
      {
         super.render(deltaTimeMilliSeconds,worldStepMilliSeconds,worldTimeOffsetMilliSeconds);
         this.interpolateRenderer(worldStepMilliSeconds,worldTimeOffsetMilliSeconds);
      }
      
      protected function interpolateRenderer(timeStepMilliSeconds:Number, timeOffsetMilliSeconds:Number) : void
      {
         var rotationDelta:Number = NaN;
         if(timeOffsetMilliSeconds > 1e-9)
         {
            Log.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + timeOffsetMilliSeconds + " overriding to 0");
         }
         timeOffsetMilliSeconds *= -1;
         if(this.mXScreenNext == this.mXScreenPrevious || timeOffsetMilliSeconds == 0)
         {
            this.mInterpolationXOffset = 0;
            this.mX = this.mXScreenNext;
         }
         else
         {
            this.mInterpolationXOffset = timeOffsetMilliSeconds * (this.mXScreenPrevious - this.mXScreenNext) / timeStepMilliSeconds;
            this.mX = this.mXScreenNext + this.mInterpolationXOffset;
         }
         if(this.mYScreenNext == this.mYScreenPrevious || timeOffsetMilliSeconds == 0)
         {
            this.mInterpolationYOffset = 0;
            this.mY = this.mYScreenNext;
         }
         else
         {
            this.mInterpolationYOffset = timeOffsetMilliSeconds * (this.mYScreenPrevious - this.mYScreenNext) / timeStepMilliSeconds;
            this.mY = this.mYScreenNext + this.mInterpolationYOffset;
         }
         if(this.mRotationScreenNext == this.mRotationScreenPrevious || timeOffsetMilliSeconds == 0)
         {
            this.mRotation = this.mRotationScreenNext;
         }
         else
         {
            rotationDelta = this.mRotationScreenNext - this.mRotationScreenPrevious;
            if(rotationDelta > PI)
            {
               rotationDelta -= PI_2;
            }
            else if(rotationDelta < -PI)
            {
               rotationDelta += PI_2;
            }
            this.mRotation = this.mRotationScreenPrevious + (timeStepMilliSeconds - timeOffsetMilliSeconds) / timeStepMilliSeconds * rotationDelta;
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
