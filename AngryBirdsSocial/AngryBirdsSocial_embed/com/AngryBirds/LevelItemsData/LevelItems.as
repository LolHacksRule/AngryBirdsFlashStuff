package com.AngryBirds.LevelItemsData
{
   import com.rovio.factory.*;
   import com.rovio.sound.SoundEngine;
   
   public class LevelItems
   {
      
      private static var mItemDataTableBin:Class = LevelItems_mItemDataTableBin;
      
      private static var mLevelBackgroundsTableBin:Class = LevelItems_mLevelBackgroundsTableBin;
      
      public static var mItemDataTable:XML;
      
      public static var mLevelBackgroundsTable:XML;
      
      public static var mItems:Vector.<LevelItem>;
       
      
      public function LevelItems()
      {
         super();
      }
      
      public static function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         mItemDataTable = XMLFactory.fromOctetStreamClass(mItemDataTableBin);
         mLevelBackgroundsTable = XMLFactory.fromOctetStreamClass(mLevelBackgroundsTableBin);
         LevelItemMaterials.loadMaterials(mItemDataTable.Item_Materials,mItemDataTable.Material_Damage_Multipliers,mItemDataTable.Material_Velocity_Multipliers);
         LevelItemResourcePaths.loadPaths(mItemDataTable.Item_Resources_Sounds);
         LevelItemShapes.loadShapes(mItemDataTable.Item_Shapes);
         LevelThemeBackgrounds.loadBackgrounds(mLevelBackgroundsTable.Backgrounds);
         mItems = new Vector.<LevelItem>();
         for each(_loc1_ in mItemDataTable.Items.Blocks.Item)
         {
            if(_loc1_.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for block: " + _loc1_.@id);
            }
            if(_loc1_.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for block: " + _loc1_.@id);
            }
            if(_loc1_.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for block: " + _loc1_.@id);
            }
            if(_loc1_.attribute("score").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, score is missing for block: " + _loc1_.@id);
            }
            newItem(_loc1_.@id,LevelItem.ITEM_TYPE_BLOCK,_loc1_.@material,_loc1_.@sounds,_loc1_.@shape,_loc1_.@score,_loc1_.@category,_loc1_.@iconScale,_loc1_.@health);
         }
         for each(_loc2_ in mItemDataTable.Items.Birds.Item)
         {
            if(_loc2_.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for bird: " + _loc1_.@id);
            }
            if(_loc2_.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for bird: " + _loc1_.@id);
            }
            if(_loc2_.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for bird: " + _loc1_.@id);
            }
            if(_loc2_.attribute("score").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, score is missing for bird: " + _loc1_.@id);
            }
            newItem(_loc2_.@id,LevelItem.ITEM_TYPE_BIRD,_loc2_.@material,_loc2_.@sounds,_loc2_.@shape,_loc2_.@score,_loc2_.@category,_loc2_.@iconScale,_loc2_.@health);
         }
         for each(_loc3_ in mItemDataTable.Items.Pigs.Item)
         {
            if(_loc3_.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for pig: " + _loc1_.@id);
            }
            if(_loc3_.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for pig: " + _loc1_.@id);
            }
            if(_loc3_.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for pig: " + _loc1_.@id);
            }
            if(_loc3_.attribute("score").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, score is missing for pig: " + _loc1_.@id);
            }
            newItem(_loc3_.@id,LevelItem.ITEM_TYPE_PIG,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health);
         }
         for each(_loc4_ in mItemDataTable.Items.Miscs.Item)
         {
            if(_loc4_.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for misc: " + _loc1_.@id);
            }
            if(_loc4_.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for misc: " + _loc1_.@id);
            }
            if(_loc4_.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for misc: " + _loc1_.@id);
            }
            if(_loc4_.attribute("score").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, score is missing for misc: " + _loc1_.@id);
            }
            newItem(_loc4_.@id,LevelItem.ITEM_TYPE_MISC,_loc4_.@material,_loc4_.@sounds,_loc4_.@shape,_loc4_.@score,_loc4_.@category,_loc4_.@iconScale,_loc4_.@health);
         }
         for each(_loc5_ in mItemDataTable.Items.Borders.Item)
         {
            if(_loc5_.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for border: " + _loc1_.@id);
            }
            if(_loc5_.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for border: " + _loc1_.@id);
            }
            if(_loc5_.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for border: " + _loc1_.@id);
            }
            newItem(_loc5_.@id,LevelItem.ITEM_TYPE_BORDER,_loc5_.@material,_loc5_.@sounds,_loc5_.@shape,0,_loc5_.@category,_loc5_.@iconScale,_loc5_.@health);
         }
         for each(_loc6_ in mItemDataTable.Items.Textures.Item)
         {
            if(_loc6_.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for texture: " + _loc1_.@id);
            }
            if(_loc6_.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for texture: " + _loc1_.@id);
            }
            if(_loc6_.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for texture: " + _loc1_.@id);
            }
            newItem(_loc6_.@id,LevelItem.ITEM_TYPE_TEXTURE,_loc6_.@material,_loc6_.@sounds,_loc6_.@shape,0,_loc6_.@category,_loc6_.@iconScale,_loc6_.@health);
         }
         loadSoundChannels(mItemDataTable.SoundChannels);
      }
      
      public static function newItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number) : void
      {
         mItems[mItems.length] = new LevelItem(param1,param2,LevelItemMaterials.getMaterial(param3),LevelItemResourcePaths.getResourcePathSound(param4),LevelItemShapes.getShape(param5),param6,param7,param8,param9);
      }
      
      public static function getItem(param1:String) : LevelItem
      {
         var _loc2_:int = 0;
         while(_loc2_ < mItems.length)
         {
            if(LevelItem(mItems[_loc2_]).mItemName.toLowerCase() == param1.toLowerCase())
            {
               return LevelItem(mItems[_loc2_]);
            }
            _loc2_++;
         }
         Log.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function getItemsByCategory(param1:String) : Array
      {
         var _loc3_:LevelItem = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in mItems)
         {
            if(_loc3_.mCategory.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.mItemName;
            }
         }
         return _loc2_;
      }
      
      public static function getRandomItemName() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function loadSoundChannels(param1:XMLList) : void
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
      
      public static function isItemStatic(param1:String) : Boolean
      {
         var _loc2_:LevelItem = getItem(param1);
         if(_loc2_)
         {
            return (_loc2_.mValues[LevelItem.MATERIAL_OBJECT] as LevelItemMaterial).mValues[LevelItemMaterial.BODY_TYPE] == LevelItemMaterial.BODY_TYPE_STATIC;
         }
         return true;
      }
   }
}
