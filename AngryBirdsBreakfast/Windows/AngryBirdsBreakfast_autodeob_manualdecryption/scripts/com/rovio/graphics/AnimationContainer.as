package com.rovio.graphics
{
   import starling.display.DisplayObject;
   
   public class AnimationContainer extends Animation
   {
       
      
      private var mAnimations:Vector.<Animation>;
      
      private var mDefaultAnimation:Animation;
      
      public function AnimationContainer(param1:String, param2:TextureManager)
      {
         this.mAnimations = new Vector.<Animation>();
         super(param1,param2);
      }
      
      public function addAnimation(param1:String, param2:Animation) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.mDefaultAnimation)
         {
            this.mDefaultAnimation = param2;
         }
         this.mAnimations.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.mDefaultAnimation.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.mDefaultAnimation.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.mDefaultAnimation.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.mDefaultAnimation.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.mDefaultAnimation.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : Animation
      {
         var _loc2_:Animation = null;
         for each(_loc2_ in this.mAnimations)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.mDefaultAnimation;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.mDefaultAnimation.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:Animation = null;
         for each(_loc2_ in this.mAnimations)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.mAnimations.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : Animation
      {
         if(param1 >= 0 && param1 < this.mAnimations.length)
         {
            return this.mAnimations[param1];
         }
         return null;
      }
   }
}
