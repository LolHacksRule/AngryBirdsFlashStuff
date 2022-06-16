package com.rovio.utils
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class TransitionAnimationExtractor
   {
      
      public static const COMPONENT_CONTAINER:String = "Container_";
      
      public static const COMPONENT_MOVIECLIP:String = "MovieClip_";
      
      public static const SEARCHABLE_ANIMATION_CLIPS:Vector.<String> = new <String>[COMPONENT_CONTAINER,COMPONENT_MOVIECLIP];
       
      
      public function TransitionAnimationExtractor()
      {
         super();
      }
      
      public static function doesNameStartWithKey(name:String, keys:Vector.<String>) : Boolean
      {
         for(var i:uint = 0; i < keys.length; i++)
         {
            if(name.indexOf(keys[i]) == 0)
            {
               return true;
            }
         }
         return false;
      }
      
      private static function hasValidFrameLabel(animation:MovieClip, animationNames:Vector.<String>) : Boolean
      {
         var label:FrameLabel = null;
         var i:int = 0;
         var animationLabels:Array = animation.currentLabels;
         for each(label in animationLabels)
         {
            for(i = 0; i < animationNames.length; i++)
            {
               if(label.name.indexOf(animationNames[i]) == 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private static function storeAnimation(animation:MovieClip, animationNames:Vector.<String>, out_resultAnimations:Vector.<MovieClip>) : void
      {
         if(out_resultAnimations.indexOf(animation) != -1)
         {
            return;
         }
         if(hasValidFrameLabel(animation,animationNames))
         {
            animation.gotoAndStop(1);
            out_resultAnimations.push(animation);
         }
      }
      
      public static function fetchAnimationsRecursively(targetContainer:MovieClip, animationNames:Vector.<String>, out_resultAnimations:Vector.<MovieClip>, searchableClips:Vector.<String>) : void
      {
         var childMC:MovieClip = null;
         for(var i:uint = 0; i < targetContainer.numChildren; i++)
         {
            childMC = targetContainer.getChildAt(i) as MovieClip;
            if(childMC)
            {
               if(doesNameStartWithKey(childMC.name,searchableClips))
               {
                  storeAnimation(childMC,animationNames,out_resultAnimations);
                  if(childMC.name.indexOf(COMPONENT_CONTAINER) == 0)
                  {
                     fetchAnimationsRecursively(childMC,animationNames,out_resultAnimations,searchableClips);
                  }
               }
            }
         }
      }
   }
}
