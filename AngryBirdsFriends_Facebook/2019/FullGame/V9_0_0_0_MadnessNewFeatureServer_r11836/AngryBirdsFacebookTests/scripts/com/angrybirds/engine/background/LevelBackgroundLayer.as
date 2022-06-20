package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.AnimationData;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundLayer;
   import com.angrybirds.data.level.theme.ParticleEmitter;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.RovioParticleDesignerPS;
   import com.angrybirds.engine.leveleventmanager.ILevelEventSubscriber;
   import com.angrybirds.engine.leveleventmanager.LevelEvent;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   import com.angrybirds.model.ParticleManager;
   import com.rovio.graphics.CompositeSpriteParser;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.TextureManager;
   import flash.geom.Rectangle;
   import starling.core.Starling;
   import starling.display.DisplayObject;
   import starling.display.Image;
   import starling.display.Sprite;
   import starling.extensions.ParticleDesignerPS;
   
   public class LevelBackgroundLayer implements ILevelEventSubscriber
   {
       
      
      private var mSingleItemPixelWidth:int;
      
      private var mSingleItemPixelHeight:int;
      
      private var mScrollingSpeed:Number;
      
      private var mIsForegroundLayer:Boolean;
      
      protected var mSprite:Sprite;
      
      private var mParticleEmitters:Array;
      
      private var mEmittersEnabled:Boolean = true;
      
      private var mTextureManager:TextureManager;
      
      private var mEmitterForegroundSprite:Sprite;
      
      private var mEmitterBackgroundSprite:Sprite;
      
      private var mScreenX:Number = 0;
      
      private var mScreenY:Number = 0;
      
      protected var mScale:Number = 1.0;
      
      protected var mPivotX:Number = 0.0;
      
      protected var mPivotY:Number = 0.0;
      
      protected var mHeight:Number = 0.0;
      
      protected var mWidth:Number = 0.0;
      
      protected var mOffsetX:Number = 0.0;
      
      protected var mOffsetY:Number = 0.0;
      
      protected var mMovingOffsetX:Number = 0.0;
      
      protected var mVelocityX:Number = 0.0;
      
      protected var mMoveStartOffsetX:Number = 0.0;
      
      protected var mMoveEndOffsetX:Number = 0.0;
      
      protected var mTileable:Boolean;
      
      private var mSpriteAnimationSprites:Vector.<Sprite>;
      
      private var mSpriteAnimationFrameTimeInMS:int;
      
      private var mSpriteAnimationFrameTimeCounter:int;
      
      private var mSpriteAnimationCurrentSprite:int;
      
      private var mAnimations:Vector.<AbsLayerAnimation>;
      
      protected var mLevelEventPublisher:LevelEventPublisher;
      
      private var mScrollX:Number;
      
      private var mScrollY:Number;
      
      private var mSpriteStartX:Number;
      
      private var mSpriteEndX:Number;
      
      private var mRepeatCount:int = 0;
      
      public function LevelBackgroundLayer(levelEventPublisher:LevelEventPublisher, data:LevelThemeBackgroundLayer, sprite:Sprite, textureManager:TextureManager, minimumScale:Number)
      {
         this.mParticleEmitters = [];
         this.mAnimations = new Vector.<AbsLayerAnimation>();
         super();
         this.mTextureManager = textureManager;
         this.mLevelEventPublisher = levelEventPublisher;
         this.mSprite = sprite;
         this.mScrollingSpeed = data.speed;
         this.mIsForegroundLayer = data.foreground;
         this.mVelocityX = data.velocityX;
         this.mMoveStartOffsetX = data.moveStartOffsetX;
         this.mMoveEndOffsetX = data.moveEndOffsetX;
         this.initialize(data,minimumScale);
         this.mSprite.x = -(this.mPivotX * this.mScale) + this.mOffsetX;
         this.mSprite.y = -(this.mPivotY * this.mScale) + this.mOffsetY;
         this.mSpriteStartX = 0;
         this.mSpriteEndX = 0;
      }
      
      public function get scrollingSpeed() : Number
      {
         return this.mScrollingSpeed;
      }
      
      public function get isForegroundLayer() : Boolean
      {
         return this.mIsForegroundLayer;
      }
      
      public function get singleItemPixelWidth() : Number
      {
         return this.mSingleItemPixelWidth;
      }
      
      public function get singleItemPixelHeight() : Number
      {
         return this.mSingleItemPixelHeight;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function set scale(val:Number) : void
      {
         this.mScale = val;
      }
      
      protected function initializePivotFromTexture(pivotTexture:PivotTexture) : void
      {
         this.mPivotY = pivotTexture.pivotY;
         if(!this.mIsForegroundLayer)
         {
            this.mPivotX = pivotTexture.pivotX;
         }
         else
         {
            this.mPivotX = 0;
         }
      }
      
      protected function initializePivotFromComposite(displayObject:DisplayObject) : void
      {
         var bounds:Rectangle = displayObject.bounds;
         this.mPivotY = bounds.bottom;
         this.mPivotX = (bounds.left + bounds.right) / 2;
      }
      
      protected function initializeProperties(name:String, highQuality:Boolean, scale:Number) : void
      {
         var pivotTexture:PivotTexture = null;
         var image:DisplayObject = CompositeSpriteParser.getCompositeSprite(name,this.mTextureManager,highQuality);
         if(!image)
         {
            pivotTexture = this.mTextureManager.getTexture(name);
            if(!pivotTexture)
            {
               return;
            }
            this.mScale = scale * pivotTexture.scale;
            this.initializePivotFromTexture(pivotTexture);
            this.mSingleItemPixelWidth = pivotTexture.width - 2;
            this.mSingleItemPixelHeight = pivotTexture.height - 2;
         }
         else
         {
            this.mScale = scale;
            this.initializePivotFromComposite(image);
            this.mSingleItemPixelWidth = image.width - 2;
            this.mSingleItemPixelHeight = image.height - 2;
            image.dispose();
         }
         this.mSingleItemPixelWidth = Math.round(this.mSingleItemPixelWidth);
         this.mSingleItemPixelHeight = Math.round(this.mSingleItemPixelHeight);
      }
      
      protected function getLayerSprite(name:String, highQuality:Boolean, repeatStart:int, repeatEnd:int) : Sprite
      {
         var image:DisplayObject = null;
         var sortedSprite:Sprite = null;
         var sprite:Sprite = new Sprite();
         for(var i:int = repeatStart; i <= repeatEnd; i++)
         {
            image = this.getBaseDisplayObject(name,highQuality);
            image.x = i * this.mSingleItemPixelWidth;
            image.y = 0;
            image.scaleX = 1;
            image.scaleY = 1;
            sprite.addChild(image);
         }
         if(CompositeSpriteParser.hasCompositeSprite(name))
         {
            sortedSprite = this.optimizeCompositeSprite(sprite);
            sprite.removeChildren();
            sprite.dispose();
            sprite = sortedSprite;
            sprite.flatten();
         }
         return sprite;
      }
      
      private function optimizeCompositeSprite(sprite:Sprite) : Sprite
      {
         var layerCount:int = 0;
         var i:int = 0;
         var j:int = 0;
         var compositeSprite:Sprite = null;
         var element:DisplayObject = null;
         var sortedSprite:Sprite = new Sprite();
         if(sprite.numChildren > 0 && sprite.getChildAt(0) is Sprite)
         {
            layerCount = Sprite(sprite.getChildAt(0)).numChildren;
            for(i = layerCount - 1; i >= 0; i--)
            {
               for(j = 0; j < sprite.numChildren; j++)
               {
                  compositeSprite = sprite.getChildAt(j) as Sprite;
                  if(compositeSprite)
                  {
                     element = compositeSprite.getChildAt(i);
                     sortedSprite.addChildAt(element,0);
                     element.x += compositeSprite.x;
                  }
               }
            }
         }
         return sortedSprite;
      }
      
      protected function getBaseDisplayObject(name:String, highQuality:Boolean) : DisplayObject
      {
         var pivotTexture:PivotTexture = null;
         var image:DisplayObject = CompositeSpriteParser.getCompositeSprite(name,this.mTextureManager,highQuality);
         if(!image)
         {
            pivotTexture = this.mTextureManager.getTexture(name);
            image = new Image(pivotTexture.texture,false,highQuality);
         }
         return image;
      }
      
      protected function getRepeatCount(minimumScale:Number, singleItemPixelWidth:int) : int
      {
         return (2 + LevelMain.LEVEL_WIDTH_PIXEL * 1.5 / (singleItemPixelWidth * minimumScale)) * 2;
      }
      
      protected function initialize(data:LevelThemeBackgroundLayer, minimumScale:Number) : void
      {
         var sn:String = null;
         var layerSprite:Sprite = null;
         if(data.scale != 0)
         {
            this.mScale = data.scale;
         }
         else
         {
            this.mScale = 1;
         }
         if(data.spriteNames && data.spriteNames.length > 0)
         {
            this.initializeProperties(data.spriteNames[0],data.highQuality,this.mScale);
         }
         else
         {
            this.initializeProperties(data.spriteName,data.highQuality,this.mScale);
         }
         this.mSingleItemPixelWidth = Math.round(this.mSingleItemPixelWidth);
         this.mSingleItemPixelHeight = Math.round(this.mSingleItemPixelHeight);
         if(this.mSingleItemPixelWidth <= 0)
         {
            return;
         }
         var repeatStart:int = 0;
         var repeatEnd:int = 0;
         if(data.tileable)
         {
            this.mRepeatCount = this.getRepeatCount(minimumScale,this.mSingleItemPixelWidth);
            repeatStart = -this.mRepeatCount / 2 - 1;
            repeatEnd = -repeatStart - 1;
            this.mTileable = true;
         }
         this.mOffsetX = data.xOffset;
         this.mOffsetY = data.yOffset;
         for(var i:int = repeatStart; i <= repeatEnd; i++)
         {
            this.addParticleEmitters(data,i * this.mSingleItemPixelWidth);
         }
         if(data.spriteNames && data.spriteNames.length > 0)
         {
            this.mSpriteAnimationSprites = new Vector.<Sprite>();
            for each(sn in data.spriteNames)
            {
               layerSprite = this.getLayerSprite(sn,data.highQuality,repeatStart,repeatEnd);
               this.mSprite.addChild(layerSprite);
               layerSprite.visible = false;
               this.mSpriteAnimationSprites.push(layerSprite);
            }
            this.mSpriteAnimationFrameTimeInMS = data.frameTime > 0 ? int(data.frameTime) : 1000;
            this.mSpriteAnimationFrameTimeCounter = 0;
            this.mSpriteAnimationCurrentSprite = 0;
            this.mSpriteAnimationSprites[this.mSpriteAnimationCurrentSprite].visible = true;
         }
         else
         {
            layerSprite = this.getLayerSprite(data.spriteName,data.highQuality,repeatStart,repeatEnd);
            this.mSprite.addChild(layerSprite);
         }
         this.addParticleEmitterSprites();
         this.startParticleEmitters();
         this.setUpAnimations(data);
         this.setVisibility(data.visibility);
      }
      
      private function setUpAnimations(data:LevelThemeBackgroundLayer) : void
      {
         var animationData:AnimationData = null;
         var animation:AbsLayerAnimation = null;
         var numAnimations:uint = data.animationCount;
         for(var i:int = 0; i < numAnimations; i++)
         {
            animationData = data.getAnimationData(i);
            animation = AnimationFactory.createAnimation(this.mSprite,this,animationData);
            if(animation.triggerName)
            {
               this.mLevelEventPublisher.register(this,animation.triggerName);
            }
            this.mAnimations.push(animation);
         }
      }
      
      private function addParticleEmitterSprite(sprite:Sprite, index:int = -1) : Boolean
      {
         if(sprite)
         {
            if(sprite.numChildren <= 0)
            {
               sprite.dispose();
               return false;
            }
            sprite.scaleX = 1 / this.mScale;
            sprite.scaleY = 1 / this.mScale;
            sprite.x = this.mPivotX - this.mOffsetX / this.mScale;
            sprite.y = this.mPivotY - this.mOffsetY / this.mScale;
            if(index < 0)
            {
               this.mSprite.addChild(sprite);
            }
            else
            {
               this.mSprite.addChildAt(sprite,index);
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
      
      private function addParticleEmitters(data:LevelThemeBackgroundLayer, xOffset:Number) : void
      {
         var particleEmitterDef:ParticleEmitter = null;
         var emitter:RovioParticleDesignerPS = null;
         var j:int = 0;
         for(var i:int = 0; i < data.particleEmitterCount; i++)
         {
            particleEmitterDef = data.getParticleEmitter(i);
            emitter = ParticleManager.createParticleEmitter(particleEmitterDef.id,this.mTextureManager);
            if(emitter && emitter.maxNumParticles > 0)
            {
               emitter.x = xOffset + particleEmitterDef.x + data.xOffset;
               emitter.y = particleEmitterDef.y;
               emitter.scaleX = emitter.scaleY = particleEmitterDef.scale;
               emitter.rotation = particleEmitterDef.rotation;
               emitter.alpha = particleEmitterDef.alpha;
               emitter.start();
               Starling.juggler.add(emitter);
               this.mParticleEmitters.push(emitter);
               if(particleEmitterDef.isBehindGraphic)
               {
                  if(!this.mEmitterBackgroundSprite)
                  {
                     this.mEmitterBackgroundSprite = new Sprite();
                  }
                  this.mEmitterBackgroundSprite.addChild(emitter);
               }
               else
               {
                  if(!this.mEmitterForegroundSprite)
                  {
                     this.mEmitterForegroundSprite = new Sprite();
                  }
                  this.mEmitterForegroundSprite.addChild(emitter);
               }
               for(j = 0; j < particleEmitterDef.fastForwardsAfterAdd; j++)
               {
                  emitter.advanceParticles(1 / 20);
               }
            }
            else if(emitter)
            {
               emitter.dispose();
            }
         }
      }
      
      public function dispose() : void
      {
         var emitter:ParticleDesignerPS = null;
         var animation:AbsLayerAnimation = null;
         this.mSprite.removeChildren(0,-1,true);
         for each(emitter in this.mParticleEmitters)
         {
            Starling.juggler.remove(emitter);
            emitter.dispose();
         }
         for each(animation in this.mAnimations)
         {
            this.mLevelEventPublisher.deRegister(this,animation.triggerName);
         }
         this.mParticleEmitters = [];
         this.mEmitterBackgroundSprite = null;
         this.mEmitterForegroundSprite = null;
      }
      
      public function setScreenOffset(x:Number, y:Number, scale:Number, width:Number, height:Number, widthScale:Number, heightScale:Number) : void
      {
         this.mScrollX = x - this.mScreenX;
         this.mScrollY = y - this.mScreenY;
         this.mScreenX = x;
         this.mScreenY = y;
         this.mSprite.scaleX = this.mScale;
         this.mSprite.scaleY = this.mScale;
         this.mSprite.x += -this.mScrollX * this.mScrollingSpeed;
         this.mSprite.y += -this.mScrollY;
      }
      
      private function startParticleEmitters() : void
      {
         var particleEmitter:ParticleDesignerPS = null;
         for each(particleEmitter in this.mParticleEmitters)
         {
            Starling.juggler.add(particleEmitter);
            particleEmitter.visible = true;
         }
      }
      
      private function stopParticleEmitters() : void
      {
         var particleEmitter:ParticleDesignerPS = null;
         for each(particleEmitter in this.mParticleEmitters)
         {
            Starling.juggler.remove(particleEmitter);
            particleEmitter.visible = false;
         }
      }
      
      public function setParticlesEnabled(value:Boolean) : void
      {
         if(value == this.mEmittersEnabled)
         {
            return;
         }
         this.mEmittersEnabled = value;
         if(this.mEmittersEnabled)
         {
            this.startParticleEmitters();
         }
         else
         {
            this.stopParticleEmitters();
         }
      }
      
      public function update(deltaTimeMilliseconds:Number) : void
      {
         var animation:AbsLayerAnimation = null;
         if(!this.mSprite.visible)
         {
            return;
         }
         for(var i:int = 0; i < this.mAnimations.length; i++)
         {
            animation = this.mAnimations[i];
            animation.update(deltaTimeMilliseconds);
         }
         if(this.mVelocityX != 0)
         {
            this.mMovingOffsetX = this.mVelocityX * deltaTimeMilliseconds / 1000;
            if(this.mMoveStartOffsetX != this.mMoveEndOffsetX)
            {
               if(this.mMovingOffsetX < this.mMoveStartOffsetX)
               {
                  this.mMovingOffsetX = this.mMoveEndOffsetX;
               }
               else if(this.mMovingOffsetX > this.mMoveEndOffsetX)
               {
                  this.mMovingOffsetX = this.mMoveStartOffsetX;
               }
            }
            else
            {
               while(this.mMovingOffsetX < -this.singleItemPixelWidth)
               {
                  this.mMovingOffsetX += this.singleItemPixelWidth;
               }
               while(this.mMovingOffsetX > this.singleItemPixelWidth)
               {
                  this.mMovingOffsetX -= this.singleItemPixelWidth;
               }
            }
            this.mSprite.x += this.mMovingOffsetX * this.mScale;
            if(this.mRepeatCount > 0)
            {
               if(this.mSpriteStartX == 0 && this.mSpriteEndX == 0)
               {
                  this.mSpriteStartX = this.mSprite.x;
                  this.mSpriteEndX = this.singleItemPixelWidth * this.mRepeatCount;
               }
               if(this.mVelocityX > 0)
               {
                  if(this.mSprite.x >= this.mSpriteEndX)
                  {
                     this.mSprite.x = this.mSpriteStartX;
                  }
               }
               else if(this.mSprite.x <= -this.mSpriteEndX)
               {
                  this.mSprite.x = this.mSpriteStartX;
               }
            }
         }
         if(this.mSpriteAnimationSprites && this.mSpriteAnimationFrameTimeInMS > 0)
         {
            this.mSpriteAnimationFrameTimeCounter += deltaTimeMilliseconds;
            while(this.mSpriteAnimationFrameTimeCounter >= this.mSpriteAnimationFrameTimeInMS)
            {
               this.mSpriteAnimationFrameTimeCounter -= this.mSpriteAnimationFrameTimeInMS;
               ++this.mSpriteAnimationCurrentSprite;
               if(this.mSpriteAnimationCurrentSprite >= this.mSpriteAnimationSprites.length)
               {
                  this.mSpriteAnimationCurrentSprite = 0;
               }
               for(i = 0; i < this.mSpriteAnimationSprites.length; i++)
               {
                  this.mSpriteAnimationSprites[i].visible = this.mSpriteAnimationCurrentSprite == i;
               }
            }
         }
      }
      
      function handleEventForAnimation(triggerName:String) : void
      {
         var animation:AbsLayerAnimation = null;
         for(var i:int = 0; i < this.mAnimations.length; i++)
         {
            animation = this.mAnimations[i];
            if(animation.triggerName == triggerName)
            {
               animation.start();
            }
         }
      }
      
      public function onLevelEvent(event:LevelEvent) : void
      {
         this.handleEventForAnimation(event.eventName);
      }
      
      public function setVisibility(value:Boolean) : void
      {
         this.mSprite.visible = value;
      }
      
      public function changeLayerScale(scaleDelta:Number) : void
      {
         this.mScale += scaleDelta;
         this.mSprite.x = -this.mScreenX * this.mScrollingSpeed - this.mPivotX * this.mScale + this.mOffsetX + this.mMovingOffsetX * this.mScale;
         this.mSprite.y = -this.mScreenY - this.mPivotY * this.mScale + this.mOffsetY;
      }
   }
}
