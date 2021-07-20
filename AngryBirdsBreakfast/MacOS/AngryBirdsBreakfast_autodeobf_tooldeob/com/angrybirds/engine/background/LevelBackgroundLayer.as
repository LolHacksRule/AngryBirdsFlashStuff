package com.angrybirds.engine.background
{
   import com.rovio.graphics.CompositeSpriteParser;
   import com.rovio.graphics.TextureManager;
   import com.rovio.graphics.PivotTexture;
   import starling.extensions.ParticleDesignerPS;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundLayer;
   import com.angrybirds.data.level.theme.ParticleEmitter;
   import starling.display.Image;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.angrybirds.model.ParticleManager;
   import com.angrybirds.engine.RovioParticleDesignerPS;
   import com.angrybirds.engine.LevelMain;
   import starling.core.Starling;
   import flash.geom.Rectangle;
   
   public class LevelBackgroundLayer
   {
       
      
      private var mSingleItemPixelWidth:int;
      
      private var mScrollingSpeed:Number;
      
      private var mIsForegroundLayer:Boolean;
      
      protected var mSprite:Sprite;
      
      private var mParticleEmitters:Array;
      
      private var mEmittersEnabled:Boolean = true;
      
      private var mTextureManager:TextureManager;
      
      private var mEmitterForegroundSprite:Sprite;
      
      private var mEmitterBackgroundSprite:Sprite;
      
      private var mScreenX:Number;
      
      private var mScreenY:Number;
      
      protected var mScale:Number = 1.0;
      
      protected var mPivotX:Number = 0.0;
      
      protected var mPivotY:Number = 0.0;
      
      protected var mHeight:Number = 0.0;
      
      protected var mWidth:Number = 0.0;
      
      protected var mOffsetX:Number = 0.0;
      
      protected var mOffsetY:Number = 0.0;
      
      protected var mTileable:Boolean;
      
      public function LevelBackgroundLayer(param1:LevelThemeBackgroundLayer, param2:Sprite, param3:TextureManager, param4:Number)
      {
         this.mParticleEmitters = [];
         super();
         this.mTextureManager = param3;
         this.mSprite = param2;
         this.mScrollingSpeed = param1.speed;
         this.mIsForegroundLayer = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get scrollingSpeed() : Number
      {
         return this.mScrollingSpeed;
      }
      
      public function get isForegroundLayer() : Boolean
      {
         return this.mIsForegroundLayer;
      }
      
      protected function get singleItemPixelWidth() : Number
      {
         return this.mSingleItemPixelWidth;
      }
      
      protected function initializePivotFromTexture(param1:PivotTexture) : void
      {
         this.mPivotY = param1.pivotY;
         if(!this.mIsForegroundLayer)
         {
            this.mPivotX = param1.pivotX;
         }
         else
         {
            this.mPivotX = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         this.mPivotY = _loc2_.bottom;
         this.mPivotX = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function initializeProperties(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:PivotTexture = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = CompositeSpriteParser.getCompositeSprite(param1,this.mTextureManager,param2)))
         {
            if(!(_loc5_ = this.mTextureManager.getTexture(param1)))
            {
               return;
            }
            this.mScale = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.mSingleItemPixelWidth = _loc5_.width - 2;
         }
         else
         {
            this.mScale = param3;
            this.initializePivotFromComposite(_loc4_);
            this.mSingleItemPixelWidth = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.mSingleItemPixelWidth = Math.round(this.mSingleItemPixelWidth);
      }
      
      protected function getLayerSprite(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.getBaseDisplayObject(param1,param2)).x = _loc6_ * this.mSingleItemPixelWidth;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(CompositeSpriteParser.hasCompositeSprite(param1))
         {
            _loc8_ = this.optimizeCompositeSprite(_loc5_);
            _loc5_.removeChildren();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function optimizeCompositeSprite(param1:Sprite) : Sprite
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(param1.numChildren > 0 && param1.getChildAt(0) is Sprite)
         {
            _loc3_ = Sprite(param1.getChildAt(0)).numChildren;
            _loc4_ = _loc3_ - 1;
            while(_loc4_ >= 0)
            {
               _loc5_ = 0;
               while(_loc5_ < param1.numChildren)
               {
                  if(_loc6_ = param1.getChildAt(_loc5_) as Sprite)
                  {
                     _loc7_ = _loc6_.getChildAt(_loc4_);
                     _loc2_.addChildAt(_loc7_,0);
                     _loc7_.x += _loc6_.x;
                  }
                  _loc5_++;
               }
               _loc4_--;
            }
         }
         return _loc2_;
      }
      
      protected function getBaseDisplayObject(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:PivotTexture = null;
         var _loc3_:DisplayObject = CompositeSpriteParser.getCompositeSprite(param1,this.mTextureManager,param2);
         if(!_loc3_)
         {
            _loc4_ = this.mTextureManager.getTexture(param1);
            _loc3_ = new Image(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + LevelMain.LEVEL_WIDTH_PIXEL * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:LevelThemeBackgroundLayer, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.mScale = param1.scale;
         }
         else
         {
            this.mScale = 1;
         }
         this.initializeProperties(param1.spriteName,param1.highQuality,this.mScale);
         if(this.mSingleItemPixelWidth <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.mSingleItemPixelWidth)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.mTileable = true;
         }
         this.mOffsetX = param1.xOffset;
         this.mOffsetY = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.addParticleEmitters(param1,_loc5_ * this.mSingleItemPixelWidth);
            _loc5_++;
         }
         var _loc6_:Sprite = this.getLayerSprite(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.mSprite.addChild(_loc6_);
         this.addParticleEmitterSprites();
         this.startParticleEmitters();
      }
      
      private function addParticleEmitterSprite(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.mScale;
            param1.scaleY = 1 / this.mScale;
            param1.x = this.mPivotX - this.mOffsetX / this.mScale;
            param1.y = this.mPivotY - this.mOffsetY / this.mScale;
            if(param2 < 0)
            {
               this.mSprite.addChild(param1);
            }
            else
            {
               this.mSprite.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function addParticleEmitterSprites() : void
      {
         if(!this.addParticleEmitterSprite(this.mEmitterForegroundSprite))
         {
            this.mEmitterForegroundSprite = null;
         }
         if(!this.addParticleEmitterSprite(this.mEmitterBackgroundSprite,0))
         {
            this.mEmitterBackgroundSprite = null;
         }
      }
      
      private function addParticleEmitters(param1:LevelThemeBackgroundLayer, param2:Number) : void
      {
         var _loc4_:ParticleEmitter = null;
         var _loc5_:RovioParticleDesignerPS = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.particleEmitterCount)
         {
            _loc4_ = param1.getParticleEmitter(_loc3_);
            if((_loc5_ = ParticleManager.createParticleEmitter(_loc4_.id,this.mTextureManager)) && _loc5_.maxNumParticles > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               Starling.juggler.add(_loc5_);
               this.mParticleEmitters.push(_loc5_);
               if(_loc4_.isBehindGraphic)
               {
                  if(!this.mEmitterBackgroundSprite)
                  {
                     this.mEmitterBackgroundSprite = new Sprite();
                  }
                  this.mEmitterBackgroundSprite.addChild(_loc5_);
               }
               else
               {
                  if(!this.mEmitterForegroundSprite)
                  {
                     this.mEmitterForegroundSprite = new Sprite();
                  }
                  this.mEmitterForegroundSprite.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.advanceParticles(1 / 20);
                  _loc6_++;
               }
            }
            else if(_loc5_)
            {
               _loc5_.dispose();
            }
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         this.mSprite.removeChildren(0,-1,true);
         for each(_loc1_ in this.mParticleEmitters)
         {
            Starling.juggler.remove(_loc1_);
            _loc1_.dispose();
         }
         this.mParticleEmitters = [];
         this.mEmitterBackgroundSprite = null;
         this.mEmitterForegroundSprite = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.mScreenX = param1;
         this.mScreenY = param2;
         this.mSprite.scaleX = this.mScale;
         this.mSprite.scaleY = this.mScale;
         this.mSprite.x = -param1 * this.mScrollingSpeed - this.mPivotX * this.mScale + this.mOffsetX;
         this.mSprite.y = -param2 - this.mPivotY * this.mScale + this.mOffsetY;
      }
      
      private function startParticleEmitters() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.mParticleEmitters)
         {
            Starling.juggler.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function stopParticleEmitters() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.mParticleEmitters)
         {
            Starling.juggler.remove(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function setParticlesEnabled(param1:Boolean) : void
      {
         if(param1 == this.mEmittersEnabled)
         {
            return;
         }
         this.mEmittersEnabled = param1;
         if(this.mEmittersEnabled)
         {
            this.startParticleEmitters();
         }
         else
         {
            this.stopParticleEmitters();
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
