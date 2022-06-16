package com.rovio.graphics
{
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.PackageManagerSpace;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   
   public class DynamicContentManagerSpace extends DynamicContentManager
   {
       
      
      protected var mLevelItemManager:LevelItemManagerSpace;
      
      public function DynamicContentManagerSpace(assetsRoot:String, buildNumber:String, levelManager:LevelManager, levelItemManager:LevelItemManagerSpace, reload:Boolean = true, textureManagerLimit:int = 1)
      {
         this.mLevelItemManager = levelItemManager;
         super(assetsRoot,buildNumber,levelManager,reload,textureManagerLimit);
      }
      
      override protected function initPackageManager() : PackageManager
      {
         return new PackageManagerSpace(mLevelManager,this.mLevelItemManager);
      }
   }
}
