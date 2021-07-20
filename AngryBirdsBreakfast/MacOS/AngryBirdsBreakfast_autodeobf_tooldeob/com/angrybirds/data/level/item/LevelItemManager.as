package com.angrybirds.data.level.item
{
   import com.rovio.sound.SoundEngine;
   import starling.display.DisplayObject;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.AngryBirdsEngine;
   import each.Log;
   import flash.utils.Dictionary;
   
   public class LevelItemManager
   {
       
      
      protected var mItemDataTable:XML;
      
      protected var mLevelBackgroundsTable:XML;
      
      protected var mItems:Dictionary;
      
      protected var mMaterialManager:LevelItemMaterialManager;
      
      protected var mShapeManager:LevelItemShapeManager;
      
      protected var mSoundManager:LevelItemSoundResourceManager;
      
      public function LevelItemManager()
      {
         this.mItems = new Dictionary();
         super();
         this.initMaterialManager();
         this.initShapeManager();
         this.initSoundResourceManager();
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
      
      public function loadItems(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = false;
         var _loc13_:String = null;
         var _loc14_:int = 0;
         this.mItemDataTable = param1;
         this.mMaterialManager.loadMaterials(this.mItemDataTable.Item_Materials,this.mItemDataTable.Material_Damage_Multipliers,this.mItemDataTable.Material_Velocity_Multipliers);
         this.mSoundManager.loadSounds(this.mItemDataTable.Item_Resources_Sounds);
         this.mShapeManager.loadShapes(this.mItemDataTable.Item_Shapes);
         this.mItems = new Dictionary();
         for each(_loc2_ in this.mItemDataTable.Items.Item)
         {
            _loc3_ = _loc2_.@id;
            _loc4_ = _loc2_.@type;
            _loc5_ = _loc2_.@material;
            _loc6_ = _loc2_.@sounds;
            _loc7_ = _loc2_.@shape;
            _loc8_ = _loc2_.@score;
            _loc9_ = _loc2_.@category;
            _loc10_ = _loc2_.@health;
            _loc11_ = 1;
            _loc12_ = String(_loc2_.@front).toLowerCase() == "true";
            _loc13_ = _loc2_.@particleJSONId;
            _loc14_ = int(_loc2_.@particleVariationCount);
            this.addItem(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_);
         }
         this.loadSoundChannels(this.mItemDataTable.SoundChannels);
      }
      
      public function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Boolean, param11:String = "", param12:int = 1) : void
      {
         var _loc14_:DisplayObject = null;
         var _loc13_:ShapeDefinition;
         if(!(_loc13_ = !!param5 ? this.mShapeManager.getShape(param5) : null))
         {
            _loc14_ = AngryBirdsEngine.smLevelMain.animationManager.getAnimation(param1).getFrame(0);
            _loc13_ = new RectangleShapeDefinition(_loc14_.width * LevelMain.PIXEL_TO_B2_SCALE / 2,_loc14_.height * LevelMain.PIXEL_TO_B2_SCALE / 2);
            _loc14_.dispose();
         }
         this.mItems[param1.toLowerCase()] = new LevelItem(param1,param2,this.mMaterialManager.getMaterial(param3),this.mSoundManager.getSoundResource(param4),_loc13_,param6,param7,param8,param9,param10,param11,param12);
      }
      
      public function getItem(param1:String) : LevelItem
      {
         var _loc2_:LevelItem = this.mItems[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      public function getItemsByCategory(param1:String) : Array
      {
         var _loc3_:LevelItem = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.mItems)
         {
            if(_loc3_.category.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.itemName;
            }
         }
         return _loc2_;
      }
      
      public function getRandomItemName() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public function loadSoundChannels(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            SoundEngine.addNewChannelControl(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public function isItemStatic(param1:String) : Boolean
      {
         var _loc2_:LevelItem = this.getItem(param1);
         if(_loc2_)
         {
            return _loc2_.isMaterialStatic;
         }
         return true;
      }
      
      public function initAnimations() : void
      {
         var levelItem:LevelItem = null;
         var animationDefinitions:Array = null;
         for each(levelItem in this.mItems)
         {
            try
            {
               animationDefinitions = levelItem.getAnimationDefinitions();
               AngryBirdsEngine.smLevelMain.animationManager.addContainerAnimation(levelItem.itemName,animationDefinitions);
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}
