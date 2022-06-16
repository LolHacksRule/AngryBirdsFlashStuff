package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundLayer
   {
       
      
      protected var mSpriteName:String;
      
      protected var mSpriteNames:Array;
      
      protected var mFrameTime:Number;
      
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
      
      protected var mVisibility:Boolean;
      
      protected var mParticleEmitters:Vector.<ParticleEmitter>;
      
      private var mAnimationDataVec:Vector.<AnimationData>;
      
      protected var mOptional:Boolean;
      
      protected var mColor:String;
      
      public function LevelThemeBackgroundLayer(spriteName:String, spriteNames:Array, frameTime:Number, color:String, scale:Number, speed:Number, xOffset:Number, yOffset:Number, velocityX:Number, foreground:Boolean, tileable:Boolean, optional:Boolean, moveStartOffsetX:Number, moveEndOffsetX:Number, highQuality:Boolean = false, visibility:Boolean = true)
      {
         super();
         this.mSpriteName = spriteName;
         this.mSpriteNames = spriteNames;
         this.mFrameTime = frameTime;
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
         this.mVisibility = visibility;
      }
      
      public function get spriteName() : String
      {
         return this.mSpriteName;
      }
      
      public function get spriteNames() : Array
      {
         return this.mSpriteNames;
      }
      
      public function get frameTime() : Number
      {
         return this.mFrameTime;
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
      
      public function get visibility() : Boolean
      {
         return this.mVisibility;
      }
      
      public function set visibility(value:Boolean) : void
      {
         this.mVisibility = value;
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
         var name:String = null;
         var soundVolume:Number = NaN;
         var soundLoop:Boolean = false;
         var visible:Boolean = false;
         var nameCounter:int = 1;
         for each(anim in animations)
         {
            name = "default" + nameCounter;
            nameCounter++;
            soundVolume = 1;
            soundLoop = false;
            visible = true;
            if(anim.@name)
            {
               name = anim.@name;
            }
            if(anim.@soundVolume)
            {
               soundVolume = anim.@soundVolume;
            }
            if(anim.@soundLoop)
            {
               soundLoop = anim.@soundLoop;
            }
            if(anim.@visible)
            {
               visible = anim.@visible;
            }
            this.setAnimationData(name,anim.@type,anim.@tween,anim.@xOffsetPercent,anim.@yOffsetPercent,anim.@duration,anim.@trigger,anim.@scale,anim.@sound,soundVolume,soundLoop,visible,null,anim.@scale);
         }
      }
      
      public function setAnimationData(name:String, type:String, tween:String, xOffsetPercent:Number, yOffsetPercent:Number, duration:Number, trigger:String, scale:Number, sound:String, soundVolume:Number, soundLoop:Boolean, visible:Boolean, movement:Object, finalScale:Number) : void
      {
         var animationData:AnimationData = new AnimationData(name,type,tween,xOffsetPercent,yOffsetPercent,duration,trigger,scale,sound,soundVolume,soundLoop,visible,movement,finalScale);
         this.mAnimationDataVec.push(animationData);
      }
   }
}
