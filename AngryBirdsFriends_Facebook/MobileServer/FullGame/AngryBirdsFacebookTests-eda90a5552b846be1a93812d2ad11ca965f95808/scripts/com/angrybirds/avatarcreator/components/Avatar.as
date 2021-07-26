package com.angrybirds.avatarcreator.components
{
   import com.angrybirds.avatarcreator.AvatarCreatorModel;
   import com.angrybirds.avatarcreator.data.Category;
   import com.angrybirds.avatarcreator.data.Character;
   import com.angrybirds.avatarcreator.data.Item;
   import com.angrybirds.avatarcreator.utils.ServerIdParser;
   import com.angrybirds.popups.AvatarCreatorPopup;
   import com.rovio.assets.AssetCache;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const DEFAULT_INACTIVE_SPOT_SCALE:Number = 0.5;
      
      public static const REMOVE_IF_SAME_OBJECT_IS_SELECTED:Boolean = false;
      
      public static const ITEM_TYPE_AVATAR_EQUIPMENT:String = "avatar_equip";
      
      public static const ITEM_TYPE_AVATAR_CHARACTER:String = "avatar_character";
       
      
      public var mItemsEquipped:Object;
      
      private var mCharacterClip:MovieClip;
      
      private var mBackgroundClip:MovieClip;
      
      private var mForegroundClip:MovieClip;
      
      private var mScale:Number = 0.5;
      
      private var mCharacter:Character = null;
      
      public function Avatar(character:Character)
      {
         super();
         this.mCharacter = character;
         this.mItemsEquipped = new Object();
         this.mScale = this.mCharacter.mInactiveScale;
         var bgCls:Class = AssetCache.getAssetFromCache("BackgroundContainer");
         this.mBackgroundClip = new bgCls();
         this.mBackgroundClip.stop();
         addChild(this.mBackgroundClip);
         var cls:Class = AssetCache.getAssetFromCache(character.mId + "_Animations");
         this.mCharacterClip = new cls();
         this.mCharacterClip.stop();
         this.initAnimations();
         this.mCharacterClip.scaleX = this.mScale;
         this.mCharacterClip.scaleY = this.mScale;
         this.addChild(this.mCharacterClip);
         var fgCls:Class = AssetCache.getAssetFromCache("ForegroundContainer");
         this.mForegroundClip = new fgCls();
         this.mForegroundClip.stop();
         addChild(this.mForegroundClip);
      }
      
      public function hideBackground() : void
      {
         this.mBackgroundClip.visible = false;
         this.mForegroundClip.visible = false;
      }
      
      public function setBackground(backgroundId:String) : void
      {
         this.mBackgroundClip.gotoAndStop(backgroundId.toLowerCase());
         this.mForegroundClip.gotoAndStop(backgroundId.toLowerCase());
         this.applyItemToAvatar(AvatarCreatorModel.instance.items.getItem(backgroundId));
      }
      
      public function randomize() : void
      {
         var category:Category = null;
         var items:Array = null;
         var random:int = 0;
         for each(category in AvatarCreatorModel.instance.items.categories)
         {
            if(category.name.toUpperCase() != "CATEGORYBIRDS" && category.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               items = AvatarCreatorModel.instance.items.getItemsInCategory(category.name);
               items = this.checkItemsAgainstServerList(items);
               random = Math.random() * (items.length + 1);
               if(random >= items.length)
               {
                  this.removeItem(category.name);
               }
               else
               {
                  this.applyItemToAvatar(items[random]);
               }
            }
         }
      }
      
      private function checkItemsAgainstServerList(arrayOfItems:Array) : Array
      {
         var item:Item = null;
         var parsedArray:Array = [];
         for each(item in arrayOfItems)
         {
            if(AvatarCreatorPopup.getItemInServerlist(item.mId))
            {
               parsedArray.push(item);
            }
         }
         return parsedArray;
      }
      
      public function show(showX:int, showY:int) : void
      {
         this.x = showX;
         this.y = showY;
         this.setScale(this.getCharacter().mActiveScale);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function initAnimations() : void
      {
         var achor:String = null;
         var mc:MovieClip = null;
         for(var i:int = 0; i < this.mCharacterClip.numChildren; i++)
         {
            mc = this.mCharacterClip.getChildAt(i) as MovieClip;
            if(mc)
            {
               mc.stop();
            }
         }
         for each(achor in AvatarCreatorModel.instance.items.anchorPoints)
         {
            this.initItems(achor);
         }
      }
      
      public function initItems(anchor:String) : void
      {
         var itemsMC:MovieClip = this.mCharacterClip.getChildByName("Items_" + anchor) as MovieClip;
         if(itemsMC && anchor.toUpperCase() != "NOHAT")
         {
            itemsMC.stop();
            itemsMC.visible = false;
         }
      }
      
      public function resetItems() : void
      {
         var categoryName:String = null;
         var item:Item = null;
         var itemsMC:MovieClip = null;
         for(var i:int = 0; i < AvatarCreatorModel.instance.items.categories.length; i++)
         {
            categoryName = AvatarCreatorModel.instance.items.categories[i].name;
            item = this.getEquippedItem(categoryName);
            if(item != null)
            {
               itemsMC = this.mCharacterClip.getChildByName("Items_" + item.mAnchor) as MovieClip;
               if(itemsMC)
               {
                  itemsMC.gotoAndStop("Item_" + item.mId);
               }
            }
         }
      }
      
      public function revertToDefault() : void
      {
         var category:Category = null;
         for each(category in AvatarCreatorModel.instance.items.categories)
         {
            if(!(category.name.toUpperCase() == "CATEGORYBIRDS" || category.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.removeItem(category.name);
            }
         }
      }
      
      public function setScale(scale:Number) : void
      {
         this.mScale = scale;
         this.mCharacterClip.scaleX = this.mScale;
         this.mCharacterClip.scaleY = this.mScale;
      }
      
      public function applyAllCurrentItems() : void
      {
         var item:Item = null;
         for each(item in this.mItemsEquipped)
         {
            this.applyItemToAvatar(item);
         }
      }
      
      public function applyItemToAvatar(item:Item) : void
      {
         if(item == null)
         {
            return;
         }
         var previousItem:Item = this.mItemsEquipped[item.mCategory.toUpperCase()];
         if(previousItem == item)
         {
            if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
            {
               this.removeItem(item.mCategory);
            }
            return;
         }
         this.removeItem(item.mCategory);
         this.mItemsEquipped[item.mCategory.toUpperCase()] = item;
         var itemsMC:MovieClip = this.mCharacterClip.getChildByName("Items_" + item.mAnchor) as MovieClip;
         if(itemsMC)
         {
            itemsMC.visible = true;
            itemsMC.gotoAndStop("Item_" + item.mId);
            if(itemsMC.currentLabel != "Item_" + item.mId)
            {
               this.removeItem(item.mAnchor);
            }
            else
            {
               this.playAnimation("Items_" + item.mAnchor + "_Equip");
            }
            if(item.category.toUpperCase() == "CATEGORYTOP" && item.mId != "HeadBand")
            {
               this.hideNoHat();
            }
         }
         else if(item.category.toUpperCase() == "CATEGORYTOP")
         {
            this.showNoHat();
         }
      }
      
      private function showNoHat() : void
      {
         var itemsMC:MovieClip = this.mCharacterClip.getChildByName("Items_NoHat") as MovieClip;
         if(itemsMC)
         {
            itemsMC.visible = true;
         }
      }
      
      private function hideNoHat() : void
      {
         var itemsMC:MovieClip = this.mCharacterClip.getChildByName("Items_NoHat") as MovieClip;
         if(itemsMC)
         {
            itemsMC.visible = false;
         }
      }
      
      public function getEquippedItem(categoryName:String) : Item
      {
         return this.mItemsEquipped[categoryName.toUpperCase()];
      }
      
      public function getEquippedItems() : Object
      {
         return this.mItemsEquipped;
      }
      
      public function removeItem(category:String) : void
      {
         var itemsMC:MovieClip = null;
         var item:Item = this.mItemsEquipped[category.toUpperCase()];
         if(item)
         {
            itemsMC = this.mCharacterClip.getChildByName("Items_" + item.mAnchor) as MovieClip;
            if(itemsMC)
            {
               itemsMC.visible = false;
               if(item.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.showNoHat();
               }
            }
         }
         delete this.mItemsEquipped[category.toUpperCase()];
      }
      
      public function playAnimation(frameName:String) : Number
      {
         var frame:FrameLabel = null;
         var foundInFrame:Number = -1;
         for each(frame in this.mCharacterClip.currentLabels)
         {
            if(foundInFrame != -1)
            {
               return frame.frame - foundInFrame - 1;
            }
            if(frame.name == frameName)
            {
               this.mCharacterClip.gotoAndPlay(frameName);
               foundInFrame = frame.frame;
            }
         }
         if(foundInFrame != -1)
         {
            return this.mCharacterClip.framesLoaded - foundInFrame - 1;
         }
         return -1;
      }
      
      public function isItemFree(itemId:String) : Boolean
      {
         return true;
      }
      
      public function getCharacter() : Character
      {
         return this.mCharacter;
      }
      
      public function getAvatarData() : String
      {
         var list:Array = [];
         var jsonObject:Object = {"list":list};
         list = this.getEquippedItemsInObjects();
         return ServerIdParser.parseToServerIdFormat(list);
      }
      
      public function getEquippedItemsInObjects() : Array
      {
         var item:Item = null;
         var list:Array = [];
         for each(item in this.mItemsEquipped)
         {
            list.push({
               "itemId":item.mId,
               "category":item.mCategory,
               "sId":item.sId,
               "name":item.mName,
               "categorySID":item.mCategorySID
            });
         }
         return list;
      }
      
      public function getScale() : Number
      {
         return this.mScale;
      }
      
      public function getMovieClip() : MovieClip
      {
         return this.mCharacterClip;
      }
      
      public function hideAvatar() : void
      {
         this.mCharacterClip.visible = false;
      }
   }
}
