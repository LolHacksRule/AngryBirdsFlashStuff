package com.angrybirds.data.level.item
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelModelFriends;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.slingshots.LevelItemSlingShotManager;
   import com.rovio.graphics.FacebookAnimationManager;
   import flash.utils.Dictionary;
   
   public class LevelItemManagerFriends extends LevelItemManagerSpace
   {
       
      
      private var mTournamentBlocksLua:Object;
      
      protected var mSlingShotManager:LevelItemSlingShotManager;
      
      private var mBlueprintBlockLoadingList:Dictionary;
      
      public function LevelItemManagerFriends()
      {
         super();
         this.mSlingShotManager = new LevelItemSlingShotManager();
      }
      
      public function initializeCustomTournamentBlocks(tournamentBlocksLuaObject:Object, fromMobile:Object, slingshots:Object) : void
      {
         var blockName:* = null;
         var blockObject:Object = null;
         var levelItemSpace:LevelItemSpace = null;
         this.mTournamentBlocksLua = tournamentBlocksLuaObject;
         loadParticlesFromLuaObject(tournamentBlocksLuaObject.particles);
         LevelItemMaterialManagerFriends(mMaterialManager).initMaterials(tournamentBlocksLuaObject.dynamicBlocks.materials);
         LevelItemMaterialManagerFriends(mMaterialManager).initMaterials(fromMobile.materials);
         LevelItemMaterialManagerFriends(mMaterialManager).initMaterials(slingshots.dynamicBlocks.materials);
         if(tournamentBlocksLuaObject.behaviors)
         {
            mSpecialBehaviorDataManager.initBehaviorsDefinition(tournamentBlocksLuaObject.behaviors);
         }
         loadSoundsFromLua("{}");
         for(blockName in tournamentBlocksLuaObject.dynamicBlocks.blocks)
         {
            blockObject = tournamentBlocksLuaObject.dynamicBlocks.blocks[blockName];
            blockObject.definition = blockObject.definition || blockName;
            levelItemSpace = createSpaceBlock(blockObject);
            if(blockName.indexOf("BLUEPRINT") > -1)
            {
               if(!this.mBlueprintBlockLoadingList)
               {
                  this.mBlueprintBlockLoadingList = new Dictionary();
               }
               this.mBlueprintBlockLoadingList[blockName] = levelItemSpace;
            }
            else
            {
               addSpaceBlock(levelItemSpace,blockName.toLowerCase());
            }
         }
         for(blockName in slingshots.dynamicBlocks.blocks)
         {
            blockObject = slingshots.dynamicBlocks.blocks[blockName];
            blockObject.definition = blockObject.definition || blockName;
            levelItemSpace = createSpaceBlock(blockObject);
            addSpaceBlock(levelItemSpace,blockName.toLowerCase());
         }
      }
      
      public function addBrandedBlocks(tournamentBlocksLuaObject:Object) : Array
      {
         var lowerCaseName:String = null;
         var particleName:* = null;
         var blockName:* = null;
         var blueprintBlocks:Array = null;
         var bpo:Object = null;
         var particleObject:Object = null;
         var levelItemSpace:LevelItemParticleSpace = null;
         var blockObject:Object = null;
         var levelItemSpace1:LevelItemSpace = null;
         var addedItems:Array = [];
         var particlesObject:Object = tournamentBlocksLuaObject.particles;
         for(particleName in particlesObject)
         {
            particleObject = particlesObject[particleName];
            if(particleObject.definition == undefined)
            {
               particleObject.definition = particleName;
            }
            levelItemSpace = createLevelItemParticle(particleObject);
            lowerCaseName = particleName.toLowerCase();
            mItems[lowerCaseName] = levelItemSpace;
            mSpaceItems[lowerCaseName] = levelItemSpace;
            addedItems.push(levelItemSpace);
         }
         if(tournamentBlocksLuaObject.dynamicBlocks.materials)
         {
            LevelItemMaterialManagerFriends(mMaterialManager).initMaterials(tournamentBlocksLuaObject.dynamicBlocks.materials);
         }
         if(tournamentBlocksLuaObject.behaviors)
         {
            mSpecialBehaviorDataManager.initBehaviorsDefinition(tournamentBlocksLuaObject.behaviors);
         }
         else if(tournamentBlocksLuaObject.dynamicBlocks.behaviors)
         {
            mSpecialBehaviorDataManager.initBehaviorsDefinition(tournamentBlocksLuaObject.dynamicBlocks.behaviors);
         }
         for(blockName in tournamentBlocksLuaObject.dynamicBlocks.blocks)
         {
            if(this.mBlueprintBlockLoadingList && this.mBlueprintBlockLoadingList[blockName])
            {
               delete this.mBlueprintBlockLoadingList[blockName];
            }
            blockObject = tournamentBlocksLuaObject.dynamicBlocks.blocks[blockName];
            blockObject.definition = blockObject.definition || blockName;
            levelItemSpace1 = createSpaceBlock(blockObject);
            lowerCaseName = blockName.toLowerCase();
            addSpaceBlock(levelItemSpace1,lowerCaseName);
            addedItems.push(levelItemSpace1);
         }
         blueprintBlocks = this.addBlueprintBlocks();
         for each(bpo in blueprintBlocks)
         {
            addedItems.push(bpo);
         }
         return addedItems;
      }
      
      public function addBlueprintBlocks() : Array
      {
         var key:* = null;
         var addedItems:Array = [];
         if(this.mBlueprintBlockLoadingList)
         {
            for(key in this.mBlueprintBlockLoadingList)
            {
               addSpaceBlock(this.mBlueprintBlockLoadingList[key],key.toLowerCase());
               addedItems.push(this.mBlueprintBlockLoadingList[key]);
            }
            this.mBlueprintBlockLoadingList = new Dictionary();
         }
         return addedItems;
      }
      
      override protected function createLevelItem(blockObject:Object, itemType:int) : LevelItemSpace
      {
         var material:String = blockObject.material || blockObject.materialName;
         var soundResource:LevelItemSoundResource = !!material ? mSoundManager.getSoundResource(material) : mSoundManager.getSoundResource("MISC_SOUNDS");
         return new LevelItemFriends(blockObject,itemType,!!material ? mMaterialManager.getMaterial(material) : null,soundResource,blockObject.destroyedScoreInc != undefined ? int(blockObject.destroyedScoreInc) : int(DEFAULT_BLOCK_SCORE),false,soundManager);
      }
      
      override public function loadItems(itemData:XML) : void
      {
         super.loadItems(itemData);
         this.loadPowerupDamageMultiplier(mItemDataTable.Powerup_Damage_Multipliers);
         this.loadPowerupVelocityMultiplier(mItemDataTable.Powerup_Velocity_Multipliers);
         this.loadMaterialDamageFactorLimits(mItemDataTable.Material_Damage_Factor_Limits);
         this.mSlingShotManager.loadSlingShotBonusDamages(mItemDataTable.Slingshot_Bonus_Damages_Multipliers);
         this.mSlingShotManager.loadSlingShotBirdMaterials(mItemDataTable.Slingshot_Bird_Materials);
         this.mSlingShotManager.loadSlingShotBirdCollisionEffects(mItemDataTable.Slingshot_Bird_Collision_Effects);
      }
      
      protected function loadPowerupDamageMultiplier(damages:XMLList) : void
      {
         var damage:XML = null;
         var birdSpecificData:XML = null;
         for each(damage in damages.Powerup_BirdFood)
         {
            for each(birdSpecificData in damage.Bird)
            {
               PowerupType.sBirdFood.setPowerupDamageMultiplier(birdSpecificData);
            }
         }
      }
      
      protected function loadPowerupVelocityMultiplier(velocities:XMLList) : void
      {
         var damage:XML = null;
         var birdSpecificData:XML = null;
         for each(damage in velocities.Powerup_BirdFood)
         {
            for each(birdSpecificData in damage.Bird)
            {
               PowerupType.sBirdFood.setPowerupVelocityMultiplier(birdSpecificData);
            }
         }
      }
      
      protected function loadMaterialDamageFactorLimits(data:XMLList) : void
      {
         var birdSpecificData:XML = null;
         var dataObject:Object = null;
         var attr:XML = null;
         for each(birdSpecificData in data.Bird)
         {
            dataObject = new Object();
            for each(attr in birdSpecificData.attributes())
            {
               if(attr.name() != "id")
               {
                  dataObject[LevelModelFriends.convertMobileNameToWebName(attr.name())] = attr.valueOf();
               }
            }
            LevelItemMaterialManager.addMaterialDamageFactorLimit(birdSpecificData.@id,dataObject);
         }
      }
      
      public function replaceAnimationsForBrand(brandId:String = "") : void
      {
         this.replaceBirdAnimationsForBrand(brandId);
         this.replaceGeneralAnimationsForBrand(brandId);
      }
      
      private function replaceGeneralAnimationsForBrand(brandId:String) : void
      {
         var blockName:* = null;
         var brandName:String = null;
         var frames:Dictionary = null;
         var birdBlockFrame:* = null;
         var brandMatchFound:Boolean = false;
         var i:int = 0;
         var frame:Object = null;
         var brand:String = null;
         var brandNames:Array = [];
         if(this.mTournamentBlocksLua.dynamicBlocks.brandanims && this.mTournamentBlocksLua.dynamicBlocks.brandanims["brands"])
         {
            for each(brandName in this.mTournamentBlocksLua.dynamicBlocks.brandanims["brands"])
            {
               brandNames.push(brandName);
            }
         }
         var animationManager:FacebookAnimationManager = FacebookAnimationManager(AngryBirdsEngine.smLevelMain.animationManager);
         for(blockName in this.mTournamentBlocksLua.dynamicBlocks.brandanims.anims)
         {
            frames = new Dictionary();
            for(birdBlockFrame in this.mTournamentBlocksLua.dynamicBlocks.brandanims.anims[blockName])
            {
               frame = this.mTournamentBlocksLua.dynamicBlocks.brandanims.anims[blockName][birdBlockFrame];
               if(birdBlockFrame)
               {
                  if(frame is String)
                  {
                     frames[birdBlockFrame] = frame;
                  }
                  else if(frame is Array)
                  {
                     frames[birdBlockFrame] = frame;
                  }
               }
            }
            brandMatchFound = false;
            for(i = 0; i < brandNames.length; i++)
            {
               brand = brandNames[i];
               if(brand == brandId)
               {
                  brandMatchFound = true;
                  break;
               }
            }
            if(!brandMatchFound)
            {
               brandId = "";
            }
            animationManager.replaceAnimationFrames(blockName,frames,brandId);
         }
      }
      
      private function replaceBirdAnimationsForBrand(brandId:String) : void
      {
         var birdBlockName:* = null;
         var frames:Dictionary = null;
         var birdBlockFrame:* = null;
         var frame:Object = null;
         var brandName:String = "";
         if(this.mTournamentBlocksLua.dynamicBlocks.birds && this.mTournamentBlocksLua.dynamicBlocks.birds["brand"])
         {
            brandName = this.mTournamentBlocksLua.dynamicBlocks.birds["brand"];
         }
         var animationManager:FacebookAnimationManager = FacebookAnimationManager(AngryBirdsEngine.smLevelMain.animationManager);
         for(birdBlockName in this.mTournamentBlocksLua.dynamicBlocks.birds)
         {
            if(birdBlockName != "brand")
            {
               frames = new Dictionary();
               for(birdBlockFrame in this.mTournamentBlocksLua.dynamicBlocks.birds[birdBlockName])
               {
                  frame = this.mTournamentBlocksLua.dynamicBlocks.birds[birdBlockName][birdBlockFrame];
                  if(birdBlockFrame)
                  {
                     if(frame is String)
                     {
                        frames[birdBlockFrame] = frame;
                     }
                     else if(frame is Array)
                     {
                        frames[birdBlockFrame] = frame;
                     }
                  }
               }
               if(brandId != brandName)
               {
                  brandId = "";
               }
               animationManager.replaceAnimationFramesForBirds(birdBlockName,frames,brandId);
            }
         }
      }
      
      override protected function initMaterialManager() : void
      {
         mMaterialManager = new LevelItemMaterialManagerFriends();
      }
   }
}
