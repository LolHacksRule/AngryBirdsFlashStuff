package com.rovio.graphics
{
   import starling.display.DisplayObject;
   
   public class AnimationContainer extends Animation
   {
       
      
      private var mAnimations:Vector.<Animation>;
      
      private var mDefaultAnimation:Animation;
      
      public function AnimationContainer(name:String, textureManager:TextureManager)
      {
         this.mAnimations = new Vector.<Animation>();
         super(name,textureManager);
      }
      
      public function addAnimation(name:String, animation:Animation) : void
      {
         if(animation == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.mDefaultAnimation)
         {
            this.mDefaultAnimation = animation;
         }
         this.mAnimations.push(animation);
      }
      
      override public function addFrame(frameName:String, offsetMilliSeconds:Number) : void
      {
         this.mDefaultAnimation.addFrame(frameName,offsetMilliSeconds);
      }
      
      override public function getFrameWithOffset(offsetMilliSeconds:Number, target:DisplayObject = null, useColor:Boolean = true) : DisplayObject
      {
         return this.mDefaultAnimation.getFrameWithOffset(offsetMilliSeconds,target,useColor);
      }
      
      override public function getFrame(index:int, target:DisplayObject = null, useColor:Boolean = true) : DisplayObject
      {
         return this.mDefaultAnimation.getFrame(index,target,useColor);
      }
      
      override public function getFrameName(index:int) : String
      {
         return this.mDefaultAnimation.getFrameName(index);
      }
      
      override public function get frameCount() : int
      {
         return this.mDefaultAnimation.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.mDefaultAnimation.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(name:String) : Animation
      {
         var animation:Animation = null;
         for each(animation in this.mAnimations)
         {
            if(animation.name == name)
            {
               return animation;
            }
         }
         return this.mDefaultAnimation;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.mDefaultAnimation.name;
      }
      
      override public function hasSubAnimation(name:String) : Boolean
      {
         var animation:Animation = null;
         for each(animation in this.mAnimations)
         {
            if(animation.name == name)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function hasAnySubAnimations(names:Array) : Boolean
      {
         var animation:Animation = null;
         var subAnimationName:String = null;
         for each(animation in this.mAnimations)
         {
            for each(subAnimationName in names)
            {
               if(animation.name == subAnimationName)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.mAnimations.length;
      }
      
      override public function getSubAnimationFromIndex(index:int) : Animation
      {
         if(index >= 0 && index < this.mAnimations.length)
         {
            return this.mAnimations[index];
         }
         return null;
      }
      
      override public function get startAnimationName() : String
      {
         return this.mDefaultAnimation.startAnimationName;
      }
      
      override public function get isLooping() : Boolean
      {
         return this.mDefaultAnimation.isLooping;
      }
   }
}
