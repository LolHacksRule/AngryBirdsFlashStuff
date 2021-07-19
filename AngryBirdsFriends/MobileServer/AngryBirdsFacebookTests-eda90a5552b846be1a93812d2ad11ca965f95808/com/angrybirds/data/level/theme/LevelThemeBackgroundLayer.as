package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundLayer
   {
       
      
      protected var mSpriteName:String;
      
      protected var mSpeed:Number;
      
      protected var mScale:Number;
      
      protected var mTileable:Boolean;
      
      protected var mXOffset:Number;
      
      protected var mYOffset:Number;
      
      protected var mVelocityX:Number = 0.0;
      
      protected var mMoveStartOffsetX:Number = 0.0;
      
      protected var mMoveEndOffsetX:Number = 0.0;
      
      protected var mForeground:Boolean;
      
      protected var mHighQuality:Boolean;
      
      protected var mParticleEmitters:Vector.<ParticleEmitter>;
      
      private var mAnimationDataVec:Vector.<AnimationData>;
      
      protected var mOptional:Boolean;
      
      protected var mColor:String;
      
      public function LevelThemeBackgroundLayer(spriteName:String, color:String, scale:Number, speed:Number, xOffset:Number, yOffset:Number, velocityX:Number, foreground:Boolean, tileable:Boolean, optional:Boolean, moveStartOffsetX:Number, moveEndOffsetX:Number, highQuality:Boolean = false)
      {
         super();
         this.mSpriteName = spriteName;
         this.mSpeed = speed;
         this.mForeground = foreground;
         this.mScale = scale != 0 ? Number(scale) : Number(1);
         this.mTileable = tileable;
         this.mXOffset = xOffset;
         this.mYOffset = yOffset;
         this.mVelocityX = velocityX;
         this.mMoveStartOffsetX = moveStartOffsetX;
         this.mMoveEndOffsetX = moveEndOffsetX;
         this.mOptional = optional;
         this.mColor = color;
         this.mHighQuality = highQuality;
         this.mParticleEmitters = new Vector.<ParticleEmitter>();
         this.mAnimationDataVec = new Vector.<AnimationData>();
      }
      
      public function get spriteName() : String
      {
         return this.mSpriteName;
      }
      
      public function get color() : String
      {
         return this.mColor;
      }
      
      public function get speed() : Number
      {
         return this.mSpeed;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function get xOffset() : Number
      {
         return this.mXOffset;
      }
      
      public function get yOffset() : Number
      {
         return this.mYOffset;
      }
      
      public function get tileable() : Boolean
      {
         return this.mTileable;
      }
      
      public function get highQuality() : Boolean
      {
         return this.mHighQuality;
      }
      
      public function get foreground() : Boolean
      {
         return this.mForeground;
      }
      
      public function get optional() : Boolean
      {
         return this.mOptional;
      }
      
      public function get velocityX() : Number
      {
         return this.mVelocityX;
      }
      
      public function get moveStartOffsetX() : Number
      {
         return this.mMoveStartOffsetX;
      }
      
      public function get moveEndOffsetX() : Number
      {
         return this.mMoveEndOffsetX;
      }
      
      public function get particleEmitterCount() : int
      {
         return this.mParticleEmitters.length;
      }
      
      public function get animationCount() : int
      {
         return this.mAnimationDataVec.length;
      }
      
      public function getParticleEmitter(index:int) : ParticleEmitter
      {
         return this.mParticleEmitters[index];
      }
      
      public function getAnimationData(index:int) : AnimationData
      {
         return this.mAnimationDataVec[index];
      }
      
      public function initializeParticleEmittersFromXML(data:XMLList) : void
      {
         var pEmitter:XML = null;
         var emitter:ParticleEmitter = null;
         for each(pEmitter in data)
         {
            emitter = new ParticleEmitter();
            emitter.id = pEmitter.@id.toString();
            emitter.x = Number(Number(pEmitter.@x)) || Number(0);
            emitter.y = Number(Number(pEmitter.@y)) || Number(0);
            emitter.rotation = Number(Number(pEmitter.@rotation)) || Number(0);
            emitter.scale = Number(Number(pEmitter.@scale)) || Number(1);
            emitter.alpha = Number(Number(pEmitter.@alpha)) || Number(1);
            emitter.fastForwardsAfterAdd = Number(Number(pEmitter.@fastForwardsAfterAdd)) || Number(0);
            emitter.isBehindGraphic = pEmitter.@behindGraphic.toString().toLowerCase() == "true";
            this.mParticleEmitters.push(emitter);
         }
      }
      
      public function initializeAnimationFromXML(animations:XMLList) : void
      {
         var anim:XML = null;
         var animationData:AnimationData = null;
         for each(anim in animations)
         {
            animationData = new AnimationData(anim.@type,anim.@tween,anim.@xOffsetPercent,anim.@yOffsetPercent,anim.@duration,anim.@trigger,anim.@sound,anim.@scale);
            this.mAnimationDataVec.push(animationData);
         }
      }
   }
}
