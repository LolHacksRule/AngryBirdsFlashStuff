package com.angrybirds.utils
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class MovieClipFrameLabelTool
   {
       
      
      public function MovieClipFrameLabelTool()
      {
         super();
      }
      
      public static function setStopToLabel(movieClip:MovieClip, labelName:String) : void
      {
         if(labelName && movieClipHasLabel(movieClip,labelName))
         {
            movieClip.gotoAndStop(labelName);
         }
         else
         {
            movieClip.gotoAndStop(1);
         }
      }
      
      public static function movieClipHasLabel(movieClip:MovieClip, labelName:String) : Boolean
      {
         var label:FrameLabel = null;
         var labelsAmount:int = movieClip.currentLabels.length;
         for(var i:int = 0; i < labelsAmount; i++)
         {
            label = movieClip.currentLabels[i];
            if(label.name == labelName)
            {
               return true;
            }
         }
         return false;
      }
   }
}
