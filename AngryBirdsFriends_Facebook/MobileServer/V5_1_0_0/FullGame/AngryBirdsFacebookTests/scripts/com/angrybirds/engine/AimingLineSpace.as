package com.angrybirds.engine
{
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import flash.geom.Point;
   import starling.display.Image;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
   public class AimingLineSpace
   {
       
      
      private var mDotTexture:Texture;
      
      private var mSprite:Sprite;
      
      private var mPointPool:Vector.<Image>;
      
      private var mEnabled:Boolean;
      
      private var mUpdateStep:int = 0;
      
      private var mCurrentPoints:Vector.<Image>;
      
      private var mDampingStartTimeSeconds:Number = -1.0;
      
      private var mDampingPerSecond:Number = 0.0;
      
      private var mObjectRadius:Number = 0.0;
      
      public function AimingLineSpace(sprite:Sprite, dotTexture:Texture, dampingStartTimeSeconds:Number, dampingPerSecond:Number)
      {
         this.mCurrentPoints = new Vector.<Image>();
         super();
         this.mSprite = sprite;
         this.mDotTexture = dotTexture;
         this.mDampingStartTimeSeconds = dampingStartTimeSeconds;
         this.mDampingPerSecond = dampingPerSecond;
      }
      
      public function get sprite() : Sprite
      {
         return this.mSprite;
      }
      
      public function dispose() : void
      {
         var point:Image = null;
         this.mSprite.dispose();
         this.mDotTexture = null;
         for each(point in this.mPointPool)
         {
            point.dispose();
         }
         this.mPointPool = null;
         this.mCurrentPoints = null;
      }
      
      public function setDotTexture(texture:Texture) : void
      {
         var poolPoint:Image = null;
         var currentPoint:Image = null;
         if(texture != this.mDotTexture)
         {
            this.mDotTexture = texture;
            for each(poolPoint in this.mPointPool)
            {
               this.updatePointWithTexture(poolPoint);
            }
            for each(currentPoint in this.mCurrentPoints)
            {
               this.updatePointWithTexture(currentPoint);
            }
         }
      }
      
      public function showLine(startPoint:Point, startVelocity:Point, launchSpeed:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var point:Image = null;
         var laserScale:Number = NaN;
         var pointToRemove:Image = null;
         var velocityVector:Point = startVelocity.clone();
         velocityVector.normalize(launchSpeed / 9);
         var stepPoint:Point = startPoint.clone();
         var pointIndex:int = 0;
         var step:int = 0;
         var divider:int = 1200 / (20 + launchSpeed);
         var timeStepSeconds:Number = Tuner.POWERUP_LASERSIGHT_TIME_STEP / 9;
         var force:b2Vec2 = new b2Vec2();
         var maximumVelocity:Number = b2Settings.b2_maxTranslation / Tuner.POWERUP_LASERSIGHT_TIME_STEP / 9;
         var totalTimeSeconds:Number = 0;
         while(pointIndex < Tuner.POWERUP_LASERSIGHT_MAX_POINTS)
         {
            if(step % 9 == 0)
            {
               updateManager.getForceAtPoint(stepPoint.x,stepPoint.y,this.mObjectRadius,force);
               velocityVector.x += force.x * timeStepSeconds;
               velocityVector.y += force.y * timeStepSeconds;
               if(velocityVector.length > maximumVelocity)
               {
                  velocityVector.normalize(maximumVelocity);
               }
               if(this.mDampingStartTimeSeconds >= 0 && totalTimeSeconds > this.mDampingStartTimeSeconds)
               {
                  velocityVector.x *= 1 - Tuner.POWERUP_LASERSIGHT_TIME_STEP * this.mDampingPerSecond;
                  velocityVector.y *= 1 - Tuner.POWERUP_LASERSIGHT_TIME_STEP * this.mDampingPerSecond;
               }
            }
            stepPoint.x += velocityVector.x * Tuner.POWERUP_LASERSIGHT_TIME_STEP;
            stepPoint.y += velocityVector.y * Tuner.POWERUP_LASERSIGHT_TIME_STEP;
            if(step % divider == this.mUpdateStep % divider)
            {
               if(this.mCurrentPoints.length > pointIndex)
               {
                  point = this.mCurrentPoints[pointIndex];
               }
               else
               {
                  point = this.createPoint();
                  this.mSprite.addChild(point);
                  this.mCurrentPoints.push(point);
               }
               pointIndex++;
               point.x = stepPoint.x / LevelMain.PIXEL_TO_B2_SCALE;
               point.y = stepPoint.y / LevelMain.PIXEL_TO_B2_SCALE;
               laserScale = 1 - pointIndex / Tuner.POWERUP_LASERSIGHT_MAX_POINTS * 0.7;
               point.scaleX = laserScale;
               point.scaleY = laserScale;
            }
            step++;
            totalTimeSeconds += timeStepSeconds;
         }
         while(this.mCurrentPoints.length > pointIndex)
         {
            pointToRemove = this.mCurrentPoints.pop();
            this.mSprite.removeChild(pointToRemove);
            this.freePoint(pointToRemove);
         }
         ++this.mUpdateStep;
      }
      
      public function get enabled() : Boolean
      {
         return this.mEnabled;
      }
      
      public function set enabled(value:Boolean) : void
      {
         this.mEnabled = value;
         this.mSprite.visible = this.mEnabled;
      }
      
      private function createPoint() : Image
      {
         if(this.mPointPool && this.mPointPool.length > 0)
         {
            return this.mPointPool.pop();
         }
         var image:Image = new Image(this.mDotTexture);
         image.pivotX = -this.mDotTexture.width / 2;
         image.pivotY = -this.mDotTexture.height / 2;
         return image;
      }
      
      private function freePoint(point:Image) : void
      {
         if(!this.mPointPool)
         {
            this.mPointPool = new Vector.<Image>();
         }
         this.mPointPool.push(point);
      }
      
      public function setObjectRadius(radius:Number) : void
      {
         this.mObjectRadius = radius;
      }
      
      private function updatePointWithTexture(point:Image) : void
      {
         point.texture = this.mDotTexture;
         point.pivotX = -this.mDotTexture.width / 2;
         point.pivotY = -this.mDotTexture.height / 2;
      }
   }
}
