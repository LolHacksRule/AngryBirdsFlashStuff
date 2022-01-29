package com.angrybirds.data
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelModelFriends;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   
   public class PackageManagerFriends extends PackageManagerSpace
   {
       
      
      public function PackageManagerFriends(levelManager:LevelManager, levelItemManager:LevelItemManagerSpace)
      {
         super(levelManager,levelItemManager);
      }
      
      override protected function initializeLevelLuaFile(levelName:String, fileName:String) : void
      {
         var level:LevelModel = null;
         if(!mLevelManager.getLevelForId(levelName))
         {
            level = LevelModelFriends.createFromLua(getFileAsString(fileName));
            level.name = levelName;
            mLevelManager.addLevel(levelName,level);
         }
      }
      
      override protected function initializeFile(fileName:String) : void
      {
         var levelName:String = null;
         var levelNameResults:Array = fileName.match(/^levels\/(.*)\.lua$/i);
         if(levelNameResults)
         {
            levelName = levelNameResults[1].toLowerCase().substr("level".length);
            this.initializeLevelLuaFile(levelName,fileName);
            return;
         }
         super.initializeFile(fileName);
      }
      
      override protected function initializeLevelFile(levelName:String, fileName:String) : void
      {
         var level:LevelModelFriends = null;
         if(!mLevelManager.getLevelForId(levelName))
         {
            level = LevelModelFriends.createFromJSON(getFileAsString(fileName));
            level.name = levelName;
            mLevelManager.addLevel(levelName,level);
            return;
         }
         super.initializeLevelFile(levelName,fileName);
      }
   }
}
