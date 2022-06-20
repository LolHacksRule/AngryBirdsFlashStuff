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
      
      public function showLine(param1:Point, param2:Point, param3:Number, param4:ILevelObjectUpdateManager, param5:int, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false, param9:int = 30) : void
      {
         var _loc20_:Image = null;
         var _loc21_:Number = NaN;
         var _loc22_:Image = null;
         var _loc10_:Point = param2.clone();
         var _loc11_:Number = param6;
         _loc10_.normalize(param3 / _loc11_);
         var _loc12_:Point = param1.clone();
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         param9 = 1200 / param9;
         var _loc16_:Number = Tuner.POWERUP_LASERSIGHT_TIME_STEP / _loc11_;
         var _loc17_:b2Vec2 = new b2Vec2();
         var _loc18_:Number = b2Settings.b2_maxTranslation / Tuner.POWERUP_LASERSIGHT_TIME_STEP / _loc11_;
         var _loc19_:Number = 0;
         while(_loc13_ < param5)
         {
            if(_loc14_ % _loc11_ == 0)
            {
               param4.getForceAtPoint(_loc12_.x,_loc12_.y,this.mObjectRadius,_loc17_);
               if(param7)
               {
                  _loc10_.y += _loc16_;
               }
               else
               {
                  _loc10_.y += _loc17_.y * _loc16_;
               }
               if(_loc10_.length > _loc18_)
               {
                  _loc10_.normalize(_loc18_);
               }
               if(this.mDampingStartTimeSeconds >= 0 && _loc19_ > this.mDampingStartTimeSeconds)
               {
                  _loc10_.x *= 1 - Tuner.POWERUP_LASERSIGHT_TIME_STEP * this.mDampingPerSecond;
                  _loc10_.y *= 1 - Tuner.POWERUP_LASERSIGHT_TIME_STEP * this.mDampingPerSecond;
               }
            }
            _loc12_.x += _loc10_.x * Tuner.POWERUP_LASERSIGHT_TIME_STEP;
            _loc12_.y += _loc10_.y * Tuner.POWERUP_LASERSIGHT_TIME_STEP;
            if(_loc14_ % param9 == this.mUpdateStep % param9)
            {
               if(this.mCurrentPoints.length > _loc13_)
               {
                  _loc20_ = this.mCurrentPoints[_loc13_];
               }
               else
               {
                  _loc20_ = this.createPoint();
                  this.mSprite.addChild(_loc20_);
                  this.mCurrentPoints.push(_loc20_);
               }
               _loc13_++;
               _loc20_.x = _loc12_.x / LevelMain.PIXEL_TO_B2_SCALE;
               _loc20_.y = _loc12_.y / LevelMain.PIXEL_TO_B2_SCALE;
               if(param8)
               {
                  _loc21_ = 1 - _loc13_ / param5 * this.getLaserScale();
                  _loc20_.scaleX = _loc21_;
                  _loc20_.scaleY = _loc21_;
               }
            }
            _loc14_++;
            _loc19_ += _loc16_;
         }
         while(this.mCurrentPoints.length > _loc13_)
         {
            _loc22_ = this.mCurrentPoints.pop();
            this.mSprite.removeChild(_loc22_);
            this.freePoint(_loc22_);
         }
         ++this.mUpdateStep;
      }
      
      protected function getLaserScale() : Number
      {
         return 0.7;
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
