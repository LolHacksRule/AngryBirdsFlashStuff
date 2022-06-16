package com.angrybirds.data
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModelSpace;
   import com.angrybirds.data.level.item.LevelItemManagerSpace;
   import com.rovio.spritesheet.SpriteRovio;
   import com.rovio.spritesheet.SpriteSheetBase;
   
   public class PackageManagerSpace extends PackageManager
   {
       
      
      protected var mLevelItemManager:LevelItemManagerSpace;
      
      protected var mBlockDefinitionStrings:Vector.<String>;
      
      public function PackageManagerSpace(levelManager:LevelManager, levelItemManager:LevelItemManagerSpace)
      {
         this.mBlockDefinitionStrings = new Vector.<String>();
         this.mLevelItemManager = levelItemManager;
         super(levelManager);
      }
      
      override protected function initializeFile(fileName:String) : void
      {
         var levelName:String = null;
         var levelNameResults:Array = fileName.match(/^levels\/(.*)\.lua$/i);
         if(levelNameResults)
         {
            levelName = levelNameResults[1].toLowerCase();
            this.initializeLevelLuaFile(levelName,fileName);
            return;
         }
         var blockDefinitionResults:Array = fileName.match(/^blocks_(.*)\.lua$/i);
         if(blockDefinitionResults)
         {
            if(fileName.indexOf("levelgoals") < 0 && fileName.indexOf("bosses") < 0)
            {
               this.mBlockDefinitionStrings.push(getFileAsString(fileName));
               return;
            }
         }
         super.initializeFile(fileName);
      }
      
      protected function initializeLevelLuaFile(levelName:String, fileName:String) : void
      {
         var level:LevelModelSpace = null;
         if(!mLevelManager.getLevelForId(levelName))
         {
            level = LevelModelSpace.createFromLua(getFileAsString(fileName));
            level.name = levelName;
            mLevelManager.addLevel(levelName,level);
         }
      }
      
      public function get blockDefinitionCount() : int
      {
         return this.mBlockDefinitionStrings.length;
      }
      
      public function getBlockDefinitions(index:int) : String
      {
         if(index >= 0 && index < this.mBlockDefinitionStrings.length)
         {
            return this.mBlockDefinitionStrings[index];
         }
         return null;
      }
      
      public function getDamageFactors() : String
      {
         return getFileAsString("damagefactors.lua","core");
      }
      
      public function getMaterials() : String
      {
         return getFileAsString("materials.lua","core");
      }
      
      override protected function addSpriteSheet(spriteSheet:SpriteSheetBase) : void
      {
         var sprite:SpriteRovio = null;
         for(var i:int = 0; i < spriteSheet.spriteCount; i++)
         {
            sprite = spriteSheet.getSpriteWithIndex(i);
            if(sprite.name.indexOf("TEXTURE_") == 0)
            {
               sprite.name = "INGAME_" + sprite.name;
            }
         }
         super.addSpriteSheet(spriteSheet);
      }
   }
}
