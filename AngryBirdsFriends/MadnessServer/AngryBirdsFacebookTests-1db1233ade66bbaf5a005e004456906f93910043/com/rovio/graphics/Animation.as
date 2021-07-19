package com.rovio.graphics
{
   import starling.display.DisplayObject;
   
   public class Animation
   {
       
      
      private var mName:String;
      
      private var mFrames:Vector.<AnimationFrame>;
      
      private var mTextureManager:TextureManager;
      
      private var mSoundName:String;
      
      private var mSoundChannel:String;
      
      private var mStartAnimationName:String;
      
      private var mIsLooping:Boolean;
      
      private var mPriority:int;
      
      public function Animation(name:String, textureManager:TextureManager)
      {
         super();
         this.mName = name;
         this.mFrames = new Vector.<AnimationFrame>();
         this.mTextureManager = textureManager;
         this.mStartAnimationName = null;
         this.mIsLooping = false;
         this.mPriority = 1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function addFrame(frameName:String, liveTimeMilliSeconds:Number) : void
      {
         if(isNaN(liveTimeMilliSeconds) || liveTimeMilliSeconds <= 0)
         {
            liveTimeMilliSeconds = 0;
         }
         var texture:PivotTexture = this.mTextureManager.getTexture(frameName);
         if(texture)
         {
            this.mFrames.push(new AnimationFrameTexture(frameName,texture,this.animationLengthMilliSeconds + liveTimeMilliSeconds));
            return;
         }
         if(CompositeSpriteParser.hasCompositeSprite(frameName))
         {
            this.mFrames.push(new AnimationFrameComposite(frameName,this.mTextureManager,this.animationLengthMilliSeconds + liveTimeMilliSeconds));
            return;
         }
      }
      
      public function getFrameWithOffset(offsetMilliSeconds:Number, target:DisplayObject = null, useColor:Boolean = true) : DisplayObject
      {
         var index:int = 0;
         if(index < 0 || index >= this.mFrames.length)
         {
            return null;
         }
         var lengthMilliSeconds:Number = this.animationLengthMilliSeconds;
         if(lengthMilliSeconds > 0)
         {
            offsetMilliSeconds %= lengthMilliSeconds;
            while(this.mFrames[index].endTimeMilliSeconds < offsetMilliSeconds && index < this.mFrames.length - 1)
            {
               index++;
            }
         }
         return this.mFrames[index].updateDisplayObject(target,useColor);
      }
      
      public function getFrame(index:int, target:DisplayObject = null, useColor:Boolean = true) : DisplayObject
      {
         if(index >= this.mFrames.length)
         {
            index = this.mFrames.length - 1;
         }
         if(index < 0 || index >= this.mFrames.length)
         {
            return null;
         }
         return this.mFrames[index].updateDisplayObject(target,useColor);
      }
      
      public function getFrameName(index:int) : String
      {
         if(index >= this.mFrames.length)
         {
            index = this.mFrames.length - 1;
         }
         if(index < 0 || index >= this.mFrames.length)
         {
            return null;
         }
         return this.mFrames[index].name;
      }
      
      public function get frameCount() : int
      {
         return this.mFrames.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.mFrames.length == 0)
         {
            return 0;
         }
         return this.mFrames[this.mFrames.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.mSoundName;
      }
      
      public function get soundChannel() : String
      {
         return this.mSoundChannel;
      }
      
      public function getSubAnimation(name:String) : Animation
      {
         return null;
      }
      
      public function hasSubAnimation(name:String) : Boolean
      {
         return false;
      }
      
      public function hasAnySubAnimations(names:Array) : Boolean
      {
         return false;
      }
      
      public function get defaultSubAnimationName() : String
      {
         return null;
      }
      
      public function get subAnimationCount() : int
      {
         return 0;
      }
      
      public function getSubAnimationFromIndex(index:int) : Animation
      {
         return null;
      }
      
      public function addSound(soundName:String, soundChannel:String) : void
      {
         this.mSoundName = soundName;
         this.mSoundChannel = soundChannel;
      }
      
      public function flipFrames(flipHorizontally:Boolean) : void
      {
         var frame:AnimationFrame = null;
         for each(frame in this.mFrames)
         {
            frame.flipAnimation(flipHorizontally);
         }
      }
      
      public function set startAnimationName(value:String) : void
      {
         this.mStartAnimationName = value;
      }
      
      public function get startAnimationName() : String
      {
         return this.mStartAnimationName;
      }
      
      public function get isLooping() : Boolean
      {
         return this.mIsLooping;
      }
      
      public function set isLooping(value:Boolean) : void
      {
         this.mIsLooping = value;
      }
      
      public function get priority() : int
      {
         return this.mPriority;
      }
      
      public function set priority(value:int) : void
      {
         this.mPriority = value;
      }
   }
}
