package com.angrybirds.data.level.item
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.behaviors.BehaviorData;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.factory.Log;
   import com.rovio.sound.SoundEngine;
   import flash.utils.Dictionary;
   import starling.display.DisplayObject;
   
   public class LevelItemManager
   {
       
      
      protected var mItemDataTable:XML;
      
      protected var mLevelBackgroundsTable:XML;
      
      protected var mItems:Dictionary;
      
      protected var mMaterialManager:LevelItemMaterialManager;
      
      protected var mShapeManager:LevelItemShapeManager;
      
      protected var mSoundManager:LevelItemSoundResourceManager;
      
      protected var mSpecialBehaviorDataManager:LevelItemSpecialBehaviorDataManager;
      
      public function LevelItemManager()
      {
         this.mItems = new Dictionary();
         super();
         this.initMaterialManager();
         this.initShapeManager();
         this.initSoundResourceManager();
         this.initBehaviorManager();
      }
      
      private function initBehaviorManager() : void
      {
         this.mSpecialBehaviorDataManager = new LevelItemSpecialBehaviorDataManager();
      }
      
      protected function initMaterialManager() : void
      {
         this.mMaterialManager = new LevelItemMaterialManager();
      }
      
      protected function initShapeManager() : void
      {
         this.mShapeManager = new LevelItemShapeManager();
      }
      
      protected function initSoundResourceManager() : void
      {
         this.mSoundManager = new LevelItemSoundResourceManager();
      }
      
      public function loadItems(itemData:XML) : void
      {
         var item:XML = null;
         var id:String = null;
         var type:int = 0;
         var material:String = null;
         var sounds:String = null;
         var shape:String = null;
         var destroyedScoreInc:int = 0;
         var floatingScoreFont:String = null;
         var damageScore:int = 0;
         var category:String = null;
         var strength:int = 0;
         var scale:Number = NaN;
         var front:* = false;
         var particleJsonId:String = null;
         var particleVariationCount:int = 0;
         var disableBirdPassThrough:* = false;
         var collision:Boolean = false;
         var textureType:String = null;
         var bubbleDamage:int = 0;
         var particleAmount:int = 0;
         this.mItemDataTable = itemData;
         this.mMaterialManager.loadMaterials(this.mItemDataTable.Item_Materials,this.mItemDataTable.Material_Damage_Multipliers,this.mItemDataTable.Material_Velocity_Multipliers);
         this.mSoundManager.loadSounds(this.mItemDataTable.Item_Resources_Sounds);
         this.mShapeManager.loadShapes(this.mItemDataTable.Item_Shapes);
         this.mItems = new Dictionary();
         for each(item in this.mItemDataTable.Items.Item)
         {
            id = item.@id;
            type = item.@type;
            material = item.@material;
            sounds = item.@sounds;
            shape = item.@shape;
            destroyedScoreInc = item.@destroyedScoreInc;
            floatingScoreFont = item.@floatingScoreFont;
            damageScore = -1;
            if("@damageScore" in item)
            {
               damageScore = item.@damageScore;
            }
            category = item.@category;
            strength = item.@strength;
            scale = 1;
            front = String(item.@front).toLowerCase() == "true";
            particleJsonId = item.@particleJSONId;
            particleVariationCount = int(item.@particleVariationCount);
            disableBirdPassThrough = String(item.@disableBirdPassThrough).toLowerCase() == "true";
            collision = item.@collision != undefined ? String(item.@collision).toLowerCase() == "true" : true;
            textureType = item.@textureType;
            bubbleDamage = item.@bubbleDamage;
            particleAmount = -1;
            if("@particleAmount" in item)
            {
               particleAmount = item.@particleAmount;
            }
            this.addItem(id,type,material,sounds,shape,destroyedScoreInc,floatingScoreFont,damageScore,category,strength,scale,front,particleJsonId,particleVariationCount,particleAmount,disableBirdPassThrough,collision,textureType,bubbleDamage);
         }
         this.loadSoundChannels(this.mItemDataTable.SoundChannels);
      }
      
      public function addItem(id:String, type:int, materialName:String, resourcePathsSound:String, shape:String, destroyedScoreInc:int, floatingScoreFont:String, damageScore:int, category:String, strength:int, scale:Number, front:Boolean, particleJSONId:String = "", particleVariationCount:int = 1, particleAmount:int = -1, disableBirdPassThrough:Boolean = false, collision:Boolean = true, textureType:String = null, bubbleDamage:int = 0) : void
      {
         var soundResource:LevelItemSoundResource = null;
         var image:DisplayObject = null;
         var itemShape:ShapeDefinition = !!shape ? this.mShapeManager.getShape(shape) : null;
         if(!itemShape)
         {
            image = AngryBirdsEngine.smLevelMain.animationManager.getAnimation(id).getFrame(0);
            itemShape = new RectangleShapeDefinition(image.width * LevelMain.PIXEL_TO_B2_SCALE / 2,image.height * LevelMain.PIXEL_TO_B2_SCALE / 2,id);
            image.dispose();
         }
         var material:LevelItemMaterial = this.mMaterialManager.getMaterial(materialName);
         if(resourcePathsSound != "")
         {
            soundResource = this.getSoundResource(resourcePathsSound);
         }
         else if(material != null)
         {
            soundResource = this.getSoundResource(material.sounds);
         }
         this.mItems[id.toLowerCase()] = new LevelItem(id,type,material,soundResource,itemShape,destroyedScoreInc,floatingScoreFont,damageScore,category,strength,scale,front,particleJSONId,particleVariationCount,particleAmount,disableBirdPassThrough,false,collision,textureType,bubbleDamage);
      }
      
      public function getItem(name:String) : LevelItem
      {
         var levelItem:LevelItem = this.mItems[name.toLowerCase()];
         if(levelItem == null)
         {
         }
         return levelItem;
      }
      
      public function getShape(name:String) : ShapeDefinition
      {
         return this.mShapeManager.getShape(name);
      }
      
      public function getItemsByCategory(categoryName:String) : Array
      {
         var li:LevelItem = null;
         var list:Array = new Array();
         for each(li in this.mItems)
         {
            if(li.category.toUpperCase() == categoryName.toUpperCase())
            {
               list[list.length] = li.itemName;
            }
         }
         return list;
      }
      
      public function getRandomItemName() : String
      {
         var names:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var random:Number = Math.random();
         var nameIndex:int = random * names.length as Number;
         return names[nameIndex as int] as String;
      }
      
      public function loadSoundChannels(channels:XMLList) : void
      {
         var channel:XML = null;
         for each(channel in channels.Channel)
         {
            if(channel.attribute("name").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(channel.attribute("maxSound").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + channel.@name);
            }
            if(channel.attribute("volume").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + channel.@name);
            }
            SoundEngine.addNewChannelControl(channel.@name,channel.@maxSound,channel.@volume);
         }
      }
      
      public function isItemStatic(itemName:String) : Boolean
      {
         var item:LevelItem = this.getItem(itemName);
         if(item)
         {
            return item.isMaterialStatic;
         }
         return true;
      }
      
      public function initAnimations(onlyItems:Array = null) : void
      {
         var levelItem:LevelItem = null;
         var add:Boolean = false;
         var i:int = 0;
         var animationDefinitions:Array = null;
         for each(levelItem in this.mItems)
         {
            try
            {
               add = true;
               if(onlyItems && onlyItems.length > 0)
               {
                  i = onlyItems.indexOf(levelItem);
                  add = onlyItems.indexOf(levelItem) != -1;
               }
               if(add)
               {
                  animationDefinitions = levelItem.getAnimationDefinitions();
                  AngryBirdsEngine.smLevelMain.animationManager.addContainerAnimation(levelItem.itemName,animationDefinitions);
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      public function getItemNames() : Array
      {
         var name:* = null;
         var names:Array = [];
         for(name in this.mItems)
         {
            names.push(name);
         }
         return names;
      }
      
      public function getSpecialBehaviorData(name:String) : BehaviorData
      {
         return this.mSpecialBehaviorDataManager.getBehaviorData(name);
      }
      
      public function getSoundResource(name:String) : LevelItemSoundResource
      {
         return this.mSoundManager.getSoundResource(name);
      }
   }
}
