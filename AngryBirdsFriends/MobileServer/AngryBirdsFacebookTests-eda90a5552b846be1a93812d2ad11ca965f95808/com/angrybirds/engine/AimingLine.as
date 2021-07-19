package com.angrybirds.engine
{
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import flash.geom.Point;
   import starling.display.Image;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
   public class AimingLine
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
      
      public function AimingLine(sprite:Sprite, dotTexture:Texture, dampingStartTimeSeconds:Number, dampingPerSecond:Number)
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
         if(this.mSprite)
         {
            if(this.mSprite.parent)
            {
               this.mSprite.parent.removeChild(this.mSprite);
            }
            this.mSprite.dispose();
            this.mSprite = null;
         }
         this.mDotTexture = null;
         if(this.mPointPool)
         {
            for each(point in this.mPointPool)
            {
               point.dispose();
            }
            this.mPointPool = null;
         }
         this.mCurrentPoints = null;
      }
      
      public function setDotTexture(texture:Texture) : void
      {
         this.mDotTexture = texture;
      }
      
      public function showLine(param1:Point, param2:Point, param3:Number, param4:ILevelObjectUpdateManager, param5:Number = 1.0, param6:Boolean = false, param7:Boolean = false, param8:int = 30) : void
      {
         var _loc19_:Image = null;
         var _loc20_:Number = NaN;
         var _loc21_:Image = null;
         var _loc9_:Point = param2.clone();
         var _loc10_:Number = param5;
         _loc9_.normalize(param3 / _loc10_);
         var _loc11_:Point = param1.clone();
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         param8 = 1200 / param8;
         var _loc14_:Boolean = false;
         var _loc15_:Number = Tuner.POWERUP_LASERSIGHT_TIME_STEP / _loc10_;
         var _loc16_:b2Vec2 = new b2Vec2();
         var _loc17_:Number = b2Settings.b2_maxTranslation / Tuner.POWERUP_LASERSIGHT_TIME_STEP / _loc10_;
         var _loc18_:Number = 0;
         while(!_loc14_ && _loc12_ < this.laserSightMaxPoints())
         {
            if(_loc13_ % _loc10_ == 0)
            {
               param4.getForceAtPoint(_loc11_.x,_loc11_.y,this.mObjectRadius,_loc16_);
               if(!param6)
               {
                  _loc9_.y += _loc16_.y * _loc15_;
               }
               if(_loc9_.length > _loc17_)
               {
                  _loc9_.normalize(_loc17_);
               }
               if(this.mDampingStartTimeSeconds >= 0 && _loc18_ > this.mDampingStartTimeSeconds)
               {
                  _loc9_.x *= 1 - Tuner.POWERUP_LASERSIGHT_TIME_STEP * this.mDampingPerSecond;
                  _loc9_.y *= 1 - Tuner.POWERUP_LASERSIGHT_TIME_STEP * this.mDampingPerSecond;
               }
            }
            _loc11_.x += _loc9_.x * Tuner.POWERUP_LASERSIGHT_TIME_STEP;
            _loc11_.y += _loc9_.y * Tuner.POWERUP_LASERSIGHT_TIME_STEP;
            if(_loc13_ % param8 == this.mUpdateStep % param8)
            {
               if(this.mCurrentPoints.length > _loc12_)
               {
                  _loc19_ = this.mCurrentPoints[_loc12_];
               }
               else
               {
                  _loc19_ = this.createPoint();
                  this.mSprite.addChild(_loc19_);
                  this.mCurrentPoints.push(_loc19_);
               }
               _loc12_++;
               _loc19_.x = _loc11_.x / LevelMain.PIXEL_TO_B2_SCALE;
               _loc19_.y = _loc11_.y / LevelMain.PIXEL_TO_B2_SCALE;
               if(param7)
               {
                  _loc20_ = 1 - _loc12_ / this.laserSightMaxPoints() * this.getLaserScale();
                  _loc19_.scaleX = _loc20_;
                  _loc19_.scaleY = _loc20_;
               }
            }
            _loc13_++;
            _loc18_ += _loc15_;
         }
         while(this.mCurrentPoints.length > _loc12_)
         {
            _loc21_ = this.mCurrentPoints.pop();
            this.mSprite.removeChild(_loc21_);
            this.freePoint(_loc21_);
         }
         ++this.mUpdateStep;
      }
      
      protected function getLaserScale() : Number
      {
         return 0.7;
      }
      
      protected function laserSightMaxPoints() : int
      {
         return Tuner.POWERUP_LASERSIGHT_MAX_POINTS;
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
   }
}
