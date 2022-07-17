package com.AngryBirds.AvatarCreator.components
{
   import com.AngryBirds.AvatarCreator.data.Character;
   import com.AngryBirds.AvatarCreator.data.Item;
   import com.AngryBirds.AvatarCreator.data.Target;
   import com.adobe.serialization.json.JSON;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class Avatar extends Sprite
   {
      
      public static const DEFAULT_INACTIVE_SPOT_SCALE:Number = 0.5;
      
      public static const DEFAULT_CENTER_SPOT_SCALE:Number = 1;
      
      public static const REMOVE_IF_SAME_OBJECT_IS_SELECTED:Boolean = false;
      
      public static const ITEM_TYPE_AVATAR_EQUIPMENT:String = "avatar_equip";
      
      public static const ITEM_TYPE_AVATAR_CHARACTER:String = "avatar_character";
       
      
      private var mItemsEquipped:Object;
      
      private var mCharacterClip:MovieClip;
      
      private var mTarget:Target;
      
      private var mTargetQueue:Array;
      
      private var mScale:Number = 0.5;
      
      private var mCharacter:Character = null;
      
      private var mMoveVectorX:Number = 0;
      
      private var mMoveVectorY:Number = 0;
      
      private var mScaleSpeed:Number = 0;
      
      private var mMovementSpeed:Number = 1;
      
      public function Avatar(param1:Character)
      {
         this.mTargetQueue = new Array();
         super();
         this.mCharacter = param1;
         this.mItemsEquipped = new Object();
         this.mScale = this.mCharacter.mInactiveScale;
         var _loc2_:Class = AssetCache.getAssetFromCache(param1.mId + "_Animations");
         this.mCharacterClip = new _loc2_();
         this.mCharacterClip.stop();
         this.initAnimations();
         this.mCharacterClip.scaleX = this.mScale;
         this.mCharacterClip.scaleY = this.mScale;
         this.addChild(this.mCharacterClip);
      }
      
      public function initAnimations() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < this.mCharacterClip.numChildren)
         {
            _loc3_ = this.mCharacterClip.getChildAt(_loc1_) as MovieClip;
            if(_loc3_)
            {
               _loc3_.stop();
            }
            _loc1_++;
         }
         for each(_loc2_ in AvatarCreator.smItems.mAnchorPoints)
         {
            this.initItems(_loc2_);
         }
      }
      
      public function initItems(param1:String) : void
      {
         var _loc2_:MovieClip = this.mCharacterClip.getChildByName("Items_" + param1) as MovieClip;
         if(_loc2_)
         {
            _loc2_.stop();
            _loc2_.visible = false;
         }
         else
         {
            Log.log("[Warning] cannot find anchor " + param1 + " from movie clip");
         }
      }
      
      public function resetItems() : void
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         var _loc4_:MovieClip = null;
         var _loc1_:Number = 0;
         while(_loc1_ < AvatarCreator.smItems.mCategories.length)
         {
            _loc2_ = AvatarCreator.smItems.mCategories[_loc1_];
            _loc3_ = this.getEquippedItem(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc4_ = this.mCharacterClip.getChildByName("Items_" + _loc3_.mAnchor) as MovieClip)
               {
                  _loc4_.gotoAndStop("Item_" + _loc3_.mId);
               }
               else
               {
                  trace("??\'" + "Items_" + _loc3_.mAnchor + "\'" + this.mCharacter.mId);
               }
            }
            _loc1_++;
         }
      }
      
      public function setPosition(param1:Point) : void
      {
         this.x = param1.x;
         this.y = param1.y;
         this.mTarget = null;
      }
      
      public function setScale(param1:Number) : void
      {
         this.mScale = param1;
         this.mCharacterClip.scaleX = this.mScale;
         this.mCharacterClip.scaleY = this.mScale;
         this.mTarget = null;
      }
      
      public function moveToLastTarget() : void
      {
         var _loc1_:Target = null;
         if(this.mTargetQueue.length > 0)
         {
            _loc1_ = this.mTargetQueue[this.mTargetQueue.length - 1];
            this.x = _loc1_.mPosition.x;
            this.y = _loc1_.mPosition.y;
            this.setScale(_loc1_.mScale);
         }
         this.mTargetQueue = new Array();
      }
      
      public function setTarget(param1:Target) : void
      {
         this.mTargetQueue.push(param1);
      }
      
      public function randomize() : void
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         for each(_loc1_ in AvatarCreator.smItems.mCategories)
         {
            _loc2_ = AvatarCreator.smItems.findItems(_loc1_,AvatarCreator.smLevel,0);
            _loc3_ = Math.random() * (_loc2_.length + 1);
            if(_loc3_ >= _loc2_.length)
            {
               this.removeItem(_loc1_);
            }
            else
            {
               this.applyItemToAvatar(_loc2_[_loc3_]);
            }
         }
      }
      
      public function swapItems(param1:Avatar) : void
      {
         var _loc2_:Item = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc3_ in AvatarCreator.smItems.mCategories)
         {
            _loc2_ = this.mItemsEquipped[_loc3_.toUpperCase()];
            if(_loc4_ = param1.mItemsEquipped[_loc3_.toUpperCase()])
            {
               this.applyItemToAvatar(_loc4_);
            }
            else
            {
               this.removeItem(_loc3_);
            }
            if(_loc2_)
            {
               param1.applyItemToAvatar(_loc2_);
            }
            else
            {
               param1.removeItem(_loc3_);
            }
         }
      }
      
      public function applyItemToAvatar(param1:Item) : void
      {
         var _loc2_:Item = this.mItemsEquipped[param1.mCategory.toUpperCase()];
         if(_loc2_ == param1)
         {
            if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
            {
               this.removeItem(param1.mCategory);
            }
            return;
         }
         this.removeItem(param1.mCategory);
         this.mItemsEquipped[param1.mCategory.toUpperCase()] = param1;
         var _loc3_:MovieClip = this.mCharacterClip.getChildByName("Items_" + param1.mAnchor) as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndStop("Item_" + param1.mId);
            if(_loc3_.currentLabel != "Item_" + param1.mId)
            {
               Log.log("[Warning] Cannot find item \'Item_" + param1.mId + "\' from \'Items_" + param1.mAnchor + "\'");
               AvatarCreator.smAvatar.removeItem(param1.mAnchor);
            }
            else if(this.isMoving() == false)
            {
               this.playAnimation("Items_" + param1.mAnchor + "_Equip");
            }
         }
         else
         {
            Log.log("[Warning] Cannot find anchor Items_" + param1.mAnchor + " from character: " + this.mCharacter.mId);
         }
      }
      
      public function getEquippedItem(param1:String) : Item
      {
         return this.mItemsEquipped[param1.toUpperCase()];
      }
      
      public function getEquippedItems() : Object
      {
         return this.mItemsEquipped;
      }
      
      public function removeItem(param1:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:Item = this.mItemsEquipped[param1.toUpperCase()];
         if(_loc2_)
         {
            _loc3_ = this.mCharacterClip.getChildByName("Items_" + _loc2_.mAnchor) as MovieClip;
            if(_loc3_)
            {
               _loc3_.visible = false;
            }
            else
            {
               Log.log("[Warning] Cannot find anchor Items_" + _loc2_.mAnchor + " from character: " + this.mCharacter.mId);
            }
         }
         delete this.mItemsEquipped[param1.toUpperCase()];
      }
      
      public function playAnimation(param1:String) : Number
      {
         var _loc3_:FrameLabel = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this.mCharacterClip.currentLabels)
         {
            if(_loc2_ != -1)
            {
               return _loc3_.frame - _loc2_ - 1;
            }
            if(_loc3_.name == param1)
            {
               this.mCharacterClip.gotoAndPlay(param1);
               _loc2_ = _loc3_.frame;
            }
         }
         if(_loc2_ != -1)
         {
            return this.mCharacterClip.framesLoaded - _loc2_ - 1;
         }
         return -1;
      }
      
      public function getItemCost() : Number
      {
         var _loc2_:Item = null;
         if(this.mItemsEquipped == null)
         {
            return 0;
         }
         var _loc1_:Number = 0;
         for each(_loc2_ in this.mItemsEquipped)
         {
            if(AvatarCreator.smPaidItems.indexOf(_loc2_.mId) == -1)
            {
               _loc1_ += _loc2_.mCost;
            }
         }
         return _loc1_;
      }
      
      public function buyItems() : void
      {
         var _loc1_:Item = null;
         if(this.mItemsEquipped == null)
         {
            return;
         }
         for each(_loc1_ in this.mItemsEquipped)
         {
            if(AvatarCreator.smPaidItems.indexOf(_loc1_.mId) == -1)
            {
               trace("add item " + _loc1_.mId + " to paid");
               AvatarCreator.smPaidItems.push(_loc1_.mId);
            }
         }
         trace(AvatarCreator.smPaidItems);
      }
      
      public function isMoving() : Boolean
      {
         return this.mTarget != null;
      }
      
      public function calculateMovings(param1:Target, param2:Number) : void
      {
         var _loc3_:Number = param1.mPosition.x - this.x;
         var _loc4_:Number = param1.mPosition.y - this.y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         this.mMoveVectorX = Math.abs(_loc3_ / _loc5_);
         this.mMoveVectorY = Math.abs(_loc4_ / _loc5_);
         this.mScaleSpeed = Math.abs(this.mTarget.mScale - this.mScale) / param2;
         this.mMovementSpeed = Math.abs(_loc5_) / param2;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.mTarget == null && this.mTargetQueue.length > 0)
         {
            this.mTarget = this.mTargetQueue.shift();
            _loc2_ = this.playAnimation(this.mTarget.mAnimation) - 1;
            if(_loc2_ <= 0)
            {
               _loc2_ = 10;
            }
            this.calculateMovings(this.mTarget,_loc2_ * (1000 / 60));
         }
         if(this.mTarget == null)
         {
            return;
         }
         if(Math.abs(this.x - this.mTarget.mPosition.x) < param1 * this.mMoveVectorX * this.mMovementSpeed)
         {
            this.x = this.mTarget.mPosition.x;
         }
         else
         {
            if(this.x < this.mTarget.mPosition.x)
            {
               this.x += param1 * this.mMoveVectorX * this.mMovementSpeed;
            }
            if(this.x > this.mTarget.mPosition.x)
            {
               this.x -= param1 * this.mMoveVectorX * this.mMovementSpeed;
            }
         }
         if(Math.abs(this.y - this.mTarget.mPosition.y) < param1 * this.mMoveVectorY * this.mMovementSpeed)
         {
            this.y = this.mTarget.mPosition.y;
         }
         else
         {
            if(this.y < this.mTarget.mPosition.y)
            {
               this.y += param1 * this.mMoveVectorY * this.mMovementSpeed;
            }
            if(this.y > this.mTarget.mPosition.y)
            {
               this.y -= param1 * this.mMoveVectorY * this.mMovementSpeed;
            }
         }
         if(Math.abs(this.mScale - this.mTarget.mScale) < param1 * this.mScaleSpeed)
         {
            this.mScale = this.mTarget.mScale;
         }
         else
         {
            if(this.mScale < this.mTarget.mScale)
            {
               this.mScale += param1 * this.mScaleSpeed;
            }
            if(this.mScale > this.mTarget.mScale)
            {
               this.mScale -= param1 * this.mScaleSpeed;
            }
         }
         if(this.mTarget.mPosition.x == this.x && this.mTarget.mPosition.y == this.y && this.mScale == this.mTarget.mScale)
         {
            this.mTarget = null;
         }
         this.mCharacterClip.scaleX = this.mScale;
         this.mCharacterClip.scaleY = this.mScale;
      }
      
      public function getCharacter() : Character
      {
         return this.mCharacter;
      }
      
      public function getAvatarData() : String
      {
         var _loc3_:Item = null;
         var _loc4_:Object = null;
         var _loc1_:* = "{\"list\":[";
         var _loc2_:String = "";
         for each(_loc3_ in this.mItemsEquipped)
         {
            _loc2_ += "{\"itemId\":\"" + _loc3_.mId + "\", \"amount\":\"1\", \"type\":\"" + ITEM_TYPE_AVATAR_EQUIPMENT + "\"},";
         }
         _loc2_ += "{\"itemId\":\"" + this.mCharacter.mId + "\", \"amount\":\"1\", \"type\":\"" + ITEM_TYPE_AVATAR_CHARACTER + "\"}";
         _loc1_ += _loc2_;
         _loc1_ += "]}";
         _loc4_ = com.adobe.serialization.json.JSON.decode(_loc1_);
         return _loc1_;
      }
      
      public function getScale() : Number
      {
         return this.mScale;
      }
      
      public function getMovieClip() : MovieClip
      {
         return this.mCharacterClip;
      }
   }
}
