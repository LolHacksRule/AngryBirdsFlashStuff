package com.rovio.assets
{
   import flash.display.MovieClip;
   
   public dynamic class LoadingScreenBlack extends MovieClip
   {
       
      
      public var mcLoadBar:MovieClip;
      
      public function LoadingScreenBlack()
      {
         super();
         addFrameScript(109,this.frame110);
      }
      
      function frame110() : *
      {
         stop();
      }
   }
}
