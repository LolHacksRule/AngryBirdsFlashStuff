package com.rovio.graphics
{
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.loader.DynamicContentLoader;
   import com.rovio.loader.PackageLoader;
   
   public class DynamicContentManager extends DynamicContentLoader
   {
       
      
      protected var mLevelManager:LevelManager;
      
      public function DynamicContentManager(assetsRoot:String, buildNumber:String, levelManager:LevelManager, reload:Boolean = true, textureManagerLimit:int = 1)
      {
         super(assetsRoot,buildNumber,reload,textureManagerLimit);
         this.mLevelManager = levelManager;
      }
      
      protected function initPackageManager() : PackageManager
      {
         return new PackageManager(this.mLevelManager);
      }
      
      override protected function initPackageLoader() : PackageLoader
      {
         return this.initPackageManager();
      }
   }
}
