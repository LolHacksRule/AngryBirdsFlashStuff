package com.angrybirds.data
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModelFriends;
   import com.rovio.loader.LevelLoader;
   
   public class LevelLoaderFriends extends LevelLoader
   {
       
      
      private var mLevelManager:LevelManager;
      
      public function LevelLoaderFriends(levelManager:LevelManager)
      {
         super();
         this.mLevelManager = levelManager;
      }
      
      override protected function onLevelLoaded(id:String) : void
      {
         var level:LevelModelFriends = null;
         super.onLevelLoaded(id);
         if(!this.mLevelManager.getLevelForId(id))
         {
            level = LevelModelFriends.createFromJSON(getLevelData(id));
            level.name = id;
            this.mLevelManager.addLevel(id,level);
         }
      }
   }
}
