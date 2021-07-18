package com.AngryBirds.LevelItemsData
{
   import com.rovio.factory.*;
   import com.rovio.sound.SoundEngine;
   
   public class LevelItems
   {
      
      [Embed(source="../embedded_assets/xml/ItemData.xml",mimeType="application/octet-stream")]
      private static var mItemDataTableBin:Class = LevelItems_mItemDataTableBin;
      
      [Embed(source="../embedded_assets/xml/LevelBackgrounds.xml",mimeType="application/octet-stream")]
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
         var item:XML = null;
         var bird:XML = null;
         var pig:XML = null;
         var misc:XML = null;
         var border:XML = null;
         var texture:XML = null;
         mItemDataTable = XMLFactory.fromOctetStreamClass(mItemDataTableBin);
         mLevelBackgroundsTable = XMLFactory.fromOctetStreamClass(mLevelBackgroundsTableBin);
         LevelItemMaterials.loadMaterials(mItemDataTable.Item_Materials,mItemDataTable.Material_Damage_Multipliers,mItemDataTable.Material_Velocity_Multipliers);
         LevelItemResourcePaths.loadPaths(mItemDataTable.Item_Resources_Sounds);
         LevelItemShapes.loadShapes(mItemDataTable.Item_Shapes);
         LevelThemeBackgrounds.loadBackgrounds(mLevelBackgroundsTable.Backgrounds);
         mItems = new Vector.<LevelItem>();
         for each(item in mItemDataTable.Items.Blocks.Item)
         {
            if(item.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for block: " + item.@id);
            }
            if(item.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for block: " + item.@id);
            }
            if(item.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for block: " + item.@id);
            }
            if(item.attribute("score").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, score is missing for block: " + item.@id);
            }
            newItem(item.@id,LevelItem.ITEM_TYPE_BLOCK,item.@material,item.@sounds,item.@shape,item.@score,item.@category,item.@iconScale,item.@health);
         }
         for each(bird in mItemDataTable.Items.Birds.Item)
         {
            if(bird.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for bird: " + item.@id);
            }
            if(bird.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for bird: " + item.@id);
            }
            if(bird.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for bird: " + item.@id);
            }
            if(bird.attribute("score").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, score is missing for bird: " + item.@id);
            }
            newItem(bird.@id,LevelItem.ITEM_TYPE_BIRD,bird.@material,bird.@sounds,bird.@shape,bird.@score,bird.@category,bird.@iconScale,bird.@health);
         }
         for each(pig in mItemDataTable.Items.Pigs.Item)
         {
            if(pig.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for pig: " + item.@id);
            }
            if(pig.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for pig: " + item.@id);
            }
            if(pig.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for pig: " + item.@id);
            }
            if(pig.attribute("score").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, score is missing for pig: " + item.@id);
            }
            newItem(pig.@id,LevelItem.ITEM_TYPE_PIG,pig.@material,pig.@sounds,pig.@shape,pig.@score,pig.@category,pig.@iconScale,pig.@health);
         }
         for each(misc in mItemDataTable.Items.Miscs.Item)
         {
            if(misc.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for misc: " + item.@id);
            }
            if(misc.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for misc: " + item.@id);
            }
            if(misc.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for misc: " + item.@id);
            }
            if(misc.attribute("score").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, score is missing for misc: " + item.@id);
            }
            newItem(misc.@id,LevelItem.ITEM_TYPE_MISC,misc.@material,misc.@sounds,misc.@shape,misc.@score,misc.@category,misc.@iconScale,misc.@health);
         }
         for each(border in mItemDataTable.Items.Borders.Item)
         {
            if(border.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for border: " + item.@id);
            }
            if(border.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for border: " + item.@id);
            }
            if(border.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for border: " + item.@id);
            }
            newItem(border.@id,LevelItem.ITEM_TYPE_BORDER,border.@material,border.@sounds,border.@shape,0,border.@category,border.@iconScale,border.@health);
         }
         for each(texture in mItemDataTable.Items.Textures.Item)
         {
            if(texture.attribute("material").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, material is missing for texture: " + item.@id);
            }
            if(texture.attribute("sounds").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, sounds is missing for texture: " + item.@id);
            }
            if(texture.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItems constructor, shape is missing for texture: " + item.@id);
            }
            newItem(texture.@id,LevelItem.ITEM_TYPE_TEXTURE,texture.@material,texture.@sounds,texture.@shape,0,texture.@category,texture.@iconScale,texture.@health);
         }
         loadSoundChannels(mItemDataTable.SoundChannels);
      }
      
      public static function newItem(aName:String, aItemType:int, material:String, resourcePathsSound:String, shape:String, score:Number, category:String, iconScale:Number, health:Number) : void
      {
         mItems[mItems.length] = new LevelItem(aName,aItemType,LevelItemMaterials.getMaterial(material),LevelItemResourcePaths.getResourcePathSound(resourcePathsSound),LevelItemShapes.getShape(shape),score,category,iconScale,health);
      }
      
      public static function getItem(name:String) : LevelItem
      {
         for(var i:int = 0; i < mItems.length; i++)
         {
            if(LevelItem(mItems[i]).mItemName.toLowerCase() == name.toLowerCase())
            {
               return LevelItem(mItems[i]);
            }
         }
         Log.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + name);
         return null;
      }
      
      public static function getItemsByCategory(categoryName:String) : Array
      {
         var li:LevelItem = null;
         var list:Array = new Array();
         for each(li in mItems)
         {
            if(li.mCategory.toUpperCase() == categoryName.toUpperCase())
            {
               list[list.length] = li.mItemName;
            }
         }
         return list;
      }
      
      public static function getRandomItemName() : String
      {
         var names:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var random:Number = Math.random();
         var nameIndex:int = random * names.length as Number;
         return names[nameIndex as int] as String;
      }
      
      public static function loadSoundChannels(channels:XMLList) : void
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
      
      public static function isItemStatic(itemName:String) : Boolean
      {
         var item:LevelItem = getItem(itemName);
         if(item)
         {
            return (item.mValues[LevelItem.MATERIAL_OBJECT] as LevelItemMaterial).mValues[LevelItemMaterial.BODY_TYPE] == LevelItemMaterial.BODY_TYPE_STATIC;
         }
         return true;
      }
   }
}
