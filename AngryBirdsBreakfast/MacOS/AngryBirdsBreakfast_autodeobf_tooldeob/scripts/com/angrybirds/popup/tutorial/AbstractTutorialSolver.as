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
      
      protected function solveTutorialClip(param1:String) : MovieClip
      {
         if(param1 == null || param1 == "")
         {
            return null;
         }
         var _loc2_:Class = AssetCache.getAssetFromCache(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new _loc2_();
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.solveTutorialClip(param1);
      }
   }
}
