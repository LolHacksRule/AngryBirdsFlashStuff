package com.rovio.graphics
{
   import flash.utils.Dictionary;
   
   public class AnimationManager
   {
       
      
      private var mTextureManager:TextureManager;
      
      private var mAnimations:Dictionary;
      
      public function AnimationManager(textureManager:TextureManager)
      {
         this.mAnimations = new Dictionary();
         super();
         this.mTextureManager = textureManager;
      }
      
      public function initializeAnimations() : void
      {
         var anim:Object = null;
         var i:int = 0;
         this.addAnimation("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         this.addAnimation("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
         this.addAnimation("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
         this.addAnimation("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
         this.addAnimation("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
         this.addAnimation("SMOKE_BUFF_SMALL",["SMOKE_BUFF_1","SMOKE_BUFF_2","SMOKE_BUFF_3"]);
         for each(anim in [{
            "name":"TRAIL_",
            "count":3
         },{
            "name":"PARTICLE_WOOD_",
            "count":3
         },{
            "name":"PARTICLE_STONE_",
            "count":3
         },{
            "name":"PARTICLE_ICE_",
            "count":5
         },{
            "name":"PARTICLE_BIRDWHITE_",
            "count":3
         },{
            "name":"PARTICLE_BIRDBLUE_",
            "count":3
         },{
            "name":"PARTICLE_BIRDBLACK_",
            "count":3
         },{
            "name":"PARTICLE_BIRDRED_",
            "count":3
         },{
            "name":"PARTICLE_BIRDYELLOW_",
            "count":3
         },{
            "name":"PARTICLE_BIRDGREEN_",
            "count":3
         },{
            "name":"SMOKE_BIG_",
            "count":6
         },{
            "name":"SMOKE_SMALL_",
            "count":3
         },{
            "name":"EXPLOSION_",
            "count":7
         }])
         {
            for(i = 1; i <= anim.count; i++)
            {
               this.addAnimation(anim.name + i,[anim.name + i]);
            }
         }
         this.addAnimation("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
         this.addAnimation("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
      }
      
      public function addAnimation(name:String, frameNames:Array, frameTimeStamps:Array = null, soundName:String = null) : Animation
      {
         var animation:Animation = this.createAnimation(name,frameNames,frameTimeStamps,soundName);
         this.insertAnimation(name,animation);
         return animation;
      }
      
      public function addContainerAnimation(name:String, data:Array) : void
      {
         var containerAnimation:AnimationContainer = this.createContainerAnimation(name,data);
         this.insertAnimation(name,containerAnimation);
      }
      
      private function createAnimation(name:String, frameNames:Array, frameTimeStamps:Array = null, soundName:String = null, soundChannel:String = null, startAnimationName:String = null, isLooping:Boolean = false, priority:int = 1) : Animation
      {
         var frameName:String = null;
         var liveTimeMilliSeconds:Number = NaN;
         var animation:Animation = new Animation(name,this.mTextureManager);
         for(var i:int = 0; i < frameNames.length; i++)
         {
            frameName = frameNames[i];
            liveTimeMilliSeconds = 0;
            if(frameTimeStamps)
            {
               liveTimeMilliSeconds = frameTimeStamps[i];
            }
            animation.addFrame(frameName,liveTimeMilliSeconds);
         }
         if(soundName)
         {
            animation.addSound(soundName,soundChannel);
         }
         animation.isLooping = isLooping;
         animation.priority = priority;
         if(startAnimationName)
         {
            animation.startAnimationName = startAnimationName;
         }
         return animation;
      }
      
      private function createContainerAnimation(name:String, data:Array) : AnimationContainer
      {
         var animation:Array = null;
         var animationName:String = null;
         var animationData:Array = null;
         var frameTimeData:Array = null;
         var soundName:String = null;
         var soundChannel:String = null;
         var startAnimationName:String = null;
         var isLooping:Boolean = false;
         var priority:int = 0;
         var containerAnimation:AnimationContainer = new AnimationContainer(name,this.mTextureManager);
         for each(animation in data)
         {
            animationName = animation[0];
            animationData = animation[1];
            if(animationData.length > 0 && animationData[0] is Array)
            {
               containerAnimation.addAnimation(animationName,this.createContainerAnimation(animationName,animationData));
            }
            else
            {
               frameTimeData = null;
               soundName = null;
               soundChannel = null;
               if(animation.length > 2)
               {
                  frameTimeData = animation[2];
               }
               if(animation.length > 3)
               {
                  if(animation[3].length > 0)
                  {
                     if(animation[3][0].length > 1)
                     {
                        soundName = animation[3][0][0];
                        soundChannel = animation[3][0][1];
                     }
                     else
                     {
                        soundName = animation[3][0];
                     }
                  }
               }
               startAnimationName = "creation";
               if(animation.length > 4)
               {
                  startAnimationName = animation[4];
               }
               isLooping = animation.length > 5 ? Boolean(animation[5]) : false;
               priority = animation.length > 6 ? int(animation[6]) : 1;
               containerAnimation.addAnimation(animationName,this.createAnimation(animationName,animationData,frameTimeData,soundName,soundChannel,startAnimationName,isLooping,priority));
            }
         }
         return containerAnimation;
      }
      
      private function insertAnimation(name:String, animation:Animation) : void
      {
         if(this.mAnimations[name])
         {
            return;
         }
         this.mAnimations[name] = animation;
      }
      
      public function getAnimation(name:String) : Animation
      {
         return this.mAnimations[name];
      }
      
      public function getAnimations() : Dictionary
      {
         return this.mAnimations;
      }
   }
}
