package com.angrybirds.popup.tutorial
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class AbstractTutorialSolver implements ILinkageSolver
   {
       
      
      public function AbstractTutorialSolver()
      {
         super();
      }
      
      protected function solveTutorialClip(tutorialID:String) : MovieClip
      {
         if(tutorialID == null || tutorialID == "")
         {
            return null;
         }
         var TutorialClass:Class = AssetCache.getAssetFromCache(tutorialID);
         if(TutorialClass == null)
         {
            return null;
         }
         return new TutorialClass();
      }
      
      public function solve(targetName:String) : MovieClip
      {
         return this.solveTutorialClip(targetName);
      }
   }
}
