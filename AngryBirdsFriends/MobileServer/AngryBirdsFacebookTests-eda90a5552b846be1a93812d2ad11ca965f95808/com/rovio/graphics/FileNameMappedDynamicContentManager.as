package com.rovio.graphics
{
   import com.angrybirds.data.PackageManager;
   import com.angrybirds.data.PackageManagerFriends;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   import com.rovio.loader.FileNameMapper;
   
   public class FileNameMappedDynamicContentManager extends DynamicContentManagerSpace
   {
       
      
      public function FileNameMappedDynamicContentManager(assetsRoot:String, buildNumber:String, levelManager:LevelManager, levelItemManager:LevelItemManagerSpace, reload:Boolean = true, textureManagerLimit:int = 1)
      {
         super(assetsRoot,buildNumber,levelManager,levelItemManager,reload,textureManagerLimit);
      }
      
      override protected function getFullFilename(name:String) : String
      {
         var fullFileName:String = super.getFullFilename(name);
         return FileNameMapper.instance.getMappedFileName(fullFileName);
      }
      
      override protected function initPackageManager() : PackageManager
      {
         return new PackageManagerFriends(mLevelManager,mLevelItemManager);
      }
   }
}
