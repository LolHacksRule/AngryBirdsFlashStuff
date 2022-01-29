package com.rovio.graphics
{
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.loader.DynamicContentLoader;
   import com.rovio.loader.PackageLoader;
   
   public class DynamicContentManager extends DynamicContentLoader
   {
       
      
      protected var mLevelManager:LevelManager;
      
      public function DynamicContentManager(param1:String, param2:String, param3:LevelManager, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.mLevelManager = param3;
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
