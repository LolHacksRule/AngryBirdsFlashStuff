package com.rovio.graphics
{
   import starling.display.DisplayObject;
   
   public class Animation
   {
       
      
      private var mName:String;
      
      private var mFrames:Vector.<AnimationFrame>;
      
      private var mTextureManager:TextureManager;
      
      private var mSoundName:String;
      
      public function Animation(param1:String, param2:TextureManager)
      {
         super();
         this.mName = param1;
         this.mFrames = new Vector.<AnimationFrame>();
         this.mTextureManager = param2;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:PivotTexture = this.mTextureManager.getTexture(param1);
         if(_loc3_)
         {
            this.mFrames.push(new AnimationFrameTexture(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(CompositeSpriteParser.hasCompositeSprite(param1))
         {
            this.mFrames.push(new AnimationFrameComposite(param1,this.mTextureManager,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.mFrames.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.mFrames[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.mFrames.length - 1)
            {
               _loc3_++;
            }
         }
         return this.mFrames[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.mFrames.length)
         {
            param1 = this.mFrames.length - 1;
         }
         if(param1 < 0 || param1 >= this.mFrames.length)
         {
            return null;
         }
         return this.mFrames[param1].updateDisplayObject(param2);
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
      
      public function getSubAnimation(param1:String) : Animation
      {
         return null;
      }
      
      public function hasSubAnimation(param1:String) : Boolean
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
      
      public function getSubAnimationFromIndex(param1:int) : Animation
      {
         return null;
      }
      
      public function addSound(param1:String) : void
      {
         this.mSoundName = param1;
      }
   }
}
