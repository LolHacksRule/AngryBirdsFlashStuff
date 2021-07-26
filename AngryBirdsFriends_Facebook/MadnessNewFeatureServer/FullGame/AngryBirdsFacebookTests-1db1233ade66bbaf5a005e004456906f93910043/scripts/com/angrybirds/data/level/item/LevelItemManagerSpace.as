package com.angrybirds.data.level.item
{
   import com.rovio.utils.LuaUtils;
   
   public class LevelItemManagerSpace extends LevelItemManager
   {
      
      protected static const DEFAULT_BLOCK_SCORE:int = 300;
      
      protected static const DEFAULT_PIG_SCORE:int = 5000;
      
      protected static const DEFAULT_BIRD_SCORE:int = 10000;
       
      
      protected var mSpaceItems:Object;
      
      protected var mSoundManagerLua:LevelItemSoundManagerLua;
      
      public function LevelItemManagerSpace()
      {
         this.mSpaceItems = {};
         super();
      }
      
      public function get soundManager() : LevelItemSoundManagerLua
      {
         return this.mSoundManagerLua;
      }
      
      override protected function initMaterialManager() : void
      {
         mMaterialManager = new LevelItemMaterialManagerSpace();
      }
      
      public function loadMaterialsFromLua(damageFactorsLua:String, materialsLua:String) : void
      {
         this.materialManagerSpace.loadMaterialsFromLua(damageFactorsLua,materialsLua);
      }
      
      public function loadSoundsFromLua(soundsLua:Object) : void
      {
         if(!this.mSoundManagerLua)
         {
            this.mSoundManagerLua = new LevelItemSoundManagerLua();
         }
         this.mSoundManagerLua.loadSounds(soundsLua);
      }
      
      public function loadBirdsFromLua(birdsLua:String) : void
      {
         var birdObject:Object = null;
         var levelItemSpace:LevelItemBirdSpace = null;
         var birdsObject:Object = LuaUtils.luaToObject(birdsLua);
         for each(birdObject in birdsObject.birds)
         {
            levelItemSpace = this.createLevelItemBird(birdObject);
            mItems[birdObject.definition.toLowerCase()] = levelItemSpace;
            this.mSpaceItems[birdObject.definition.toLowerCase()] = levelItemSpace;
         }
      }
      
      public function loadPigsFromLua(pigObjects:Array) : void
      {
         var object:Object = null;
         var levelItemSpace:LevelItemSpace = null;
         for each(object in pigObjects)
         {
            levelItemSpace = null;
            if(object.levelGoal == true)
            {
               levelItemSpace = this.createLevelItemPig(object);
            }
            else
            {
               levelItemSpace = this.createLevelItem(object,LevelItem.ITEM_TYPE_BLOCK);
            }
            mItems[object.definition.toLowerCase()] = levelItemSpace;
            this.mSpaceItems[object.definition.toLowerCase()] = levelItemSpace;
         }
      }
      
      public function loadParticlesFromLua(particlesLua:String) : void
      {
         this.loadParticlesFromLuaObject(LuaUtils.luaToObject(particlesLua).particles);
      }
      
      public function loadParticlesFromLuaObject(particlesObject:Object) : void
      {
         var particleName:* = null;
         var particleObject:Object = null;
         var levelItemSpace:LevelItemParticleSpace = null;
         for(particleName in particlesObject)
         {
            particleObject = particlesObject[particleName];
            if(particleObject.definition == undefined)
            {
               particleObject.definition = particleName;
            }
            levelItemSpace = this.createLevelItemParticle(particleObject);
            mItems[particleName.toLowerCase()] = levelItemSpace;
            this.mSpaceItems[particleName.toLowerCase()] = levelItemSpace;
         }
      }
      
      public function loadBlocksFromLua(itemsLua:String) : void
      {
         var toplevelContainer:Object = null;
         var blockName:* = null;
         var blockObject:Object = null;
         var levelItemSpace:LevelItemSpace = null;
         var itemsObject:Object = LuaUtils.luaToObject(itemsLua);
         for each(toplevelContainer in itemsObject)
         {
            for(blockName in toplevelContainer)
            {
               blockObject = toplevelContainer[blockName];
               blockObject.definition = blockObject.definition || blockName;
               levelItemSpace = this.createSpaceBlock(blockObject);
               this.addSpaceBlock(levelItemSpace,blockObject.definition.toLowerCase());
            }
         }
      }
      
      protected function addSpaceBlock(levelItemSpace:LevelItemSpace, name:String) : void
      {
         mItems[name] = levelItemSpace;
         this.mSpaceItems[name] = levelItemSpace;
      }
      
      protected function createSpaceBlock(blockObject:Object) : LevelItemSpace
      {
         var itemType:int = 0;
         if(blockObject.material == "pig")
         {
            itemType = LevelItem.ITEM_TYPE_PIG;
         }
         else if(blockObject.material && blockObject.material.indexOf("staticGround") == 0)
         {
            if(blockObject.themed === true)
            {
               itemType = LevelItem.ITEM_TYPE_TEXTURE;
            }
            else
            {
               itemType = LevelItem.ITEM_TYPE_BLOCK;
            }
         }
         else
         {
            itemType = LevelItem.ITEM_TYPE_BLOCK;
         }
         return this.createLevelItem(blockObject,itemType);
      }
      
      protected function createLevelItem(blockObject:Object, itemType:int) : LevelItemSpace
      {
         var material:String = blockObject.material || blockObject.materialName;
         return new LevelItemSpaceLua(blockObject,itemType,!!material ? mMaterialManager.getMaterial(material) : null,null,blockObject.destroyedScoreInc != undefined ? int(blockObject.destroyedScoreInc) : int(DEFAULT_BLOCK_SCORE));
      }
      
      protected function createLevelItemBird(birdObject:Object) : LevelItemBirdSpace
      {
         return new LevelItemBirdSpace(birdObject,LevelItem.ITEM_TYPE_BIRD,!!birdObject.material ? mMaterialManager.getMaterial(birdObject.material) : null,null,birdObject.destroyedScoreInc != undefined ? int(birdObject.destroyedScoreInc) : int(DEFAULT_BIRD_SCORE));
      }
      
      protected function createLevelItemPig(pigObject:Object) : LevelItemPigSpace
      {
         return new LevelItemPigSpace(pigObject,LevelItem.ITEM_TYPE_PIG,!!pigObject.material ? mMaterialManager.getMaterial(pigObject.material) : null,null,pigObject.destroyedScoreInc != undefined ? int(pigObject.destroyedScoreInc) : int(DEFAULT_PIG_SCORE));
      }
      
      protected function createLevelItemParticle(particleObject:Object) : LevelItemParticleSpace
      {
         return new LevelItemParticleSpace(particleObject,LevelItem.ITEM_TYPE_PARTICLE,!!particleObject.material ? mMaterialManager.getMaterial(particleObject.material) : null,null,0);
      }
      
      protected function get materialManagerSpace() : LevelItemMaterialManagerSpace
      {
         return mMaterialManager as LevelItemMaterialManagerSpace;
      }
   }
}
