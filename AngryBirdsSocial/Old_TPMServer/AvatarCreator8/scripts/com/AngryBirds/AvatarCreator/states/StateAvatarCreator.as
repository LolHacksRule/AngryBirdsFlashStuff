package com.AngryBirds.AvatarCreator.states
{
   import com.AngryBirds.AvatarCreator.components.Avatar;
   import com.AngryBirds.AvatarCreator.data.Character;
   import com.AngryBirds.AvatarCreator.data.Item;
   import com.AngryBirds.AvatarCreator.data.Target;
   import com.AngryBirds.AvatarCreator.io.AngryBirdsExternalInterface;
   import com.AngryBirds.AvatarCreator.io.AngryBirdsServer;
   import com.AngryBirds.AvatarCreator.ui.ViewAvatarCreator;
   import com.adobe.serialization.json.JSON;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIPopUpRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class StateAvatarCreator extends StateBase
   {
      
      public static const STATE_NAME:String = "CreatorState";
      
      public static const SPOTS:Array = ["Spot_Left_3","Spot_Left_2","Spot_Left_1","Spot_Center","Spot_Right_1","Spot_Right_2","Spot_Right_3"];
      
      public static const STARTUP_CHARACTER:String = "RedBird";
      
      public static const MODE_EDIT_ONE_CHARACTER:Number = 0;
      
      public static const MODE_EDIT_ALL_CHARACTERS:Number = 1;
       
      
      private var mEditMode:Number = 0;
      
      private var mEnableLoop:Boolean = true;
      
      private var mScrollIndex:int = 0;
      
      private var mBackground:MovieClip = null;
      
      public function StateAvatarCreator(param1:Boolean = true, param2:String = "CreatorState")
      {
         super(param1,param2);
         mGenericState = false;
      }
      
      override public function init() : void
      {
         var _loc1_:Character = null;
         super.init();
         AngryBirdsExternalInterface.getAuthenticationToken();
         mUIView = new ViewAvatarCreator(this);
         mUIView.init(null);
         AvatarCreator.smAvatars = new Array();
         for each(_loc1_ in AvatarCreator.smCharacters.mCharacters)
         {
            AvatarCreator.smAvatars.push(new Avatar(_loc1_));
         }
         if(AvatarCreator.smAvatars.length < 7)
         {
            this.mScrollIndex = (AvatarCreator.smAvatars.length - 7) / 2;
            this.mEnableLoop = false;
         }
         this.addChild(AvatarCreator.smDebugText);
      }
      
      override public function activate() : void
      {
         var _loc3_:Avatar = null;
         super.activate();
         var _loc1_:Class = AssetCache.getAssetFromCache("EditorBG");
         this.mBackground = new _loc1_();
         this.addChildAt(this.mBackground,0);
         this.updateAvatarPositions(false);
         var _loc2_:Number = 0;
         while(_loc2_ < AvatarCreator.smAvatars.length)
         {
            _loc3_ = AvatarCreator.smAvatars[_loc2_];
            _loc3_.moveToLastTarget();
            _loc2_++;
         }
         AngryBirdsServer.getItemList(this.onItemListReceived);
         this.selectCharacter(STARTUP_CHARACTER);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.mBackground)
         {
            this.removeChild(this.mBackground);
            this.mBackground = null;
         }
      }
      
      public function getSpot(param1:String) : Point
      {
         var _loc2_:DisplayObject = this.mBackground.getChildByName(param1);
         return new Point(_loc2_.x,_loc2_.y);
      }
      
      public function updateAvatarPositions(param1:Boolean) : void
      {
         var _loc4_:Avatar = null;
         var _loc2_:Avatar = AvatarCreator.smAvatar;
         var _loc3_:Number = 0;
         while(_loc3_ < SPOTS.length)
         {
            _loc4_ = null;
            if(_loc3_ + this.mScrollIndex >= 0 && _loc3_ + this.mScrollIndex < AvatarCreator.smAvatars.length)
            {
               _loc4_ = AvatarCreator.smAvatars[_loc3_ + this.mScrollIndex];
            }
            else if(this.mEnableLoop)
            {
               _loc4_ = AvatarCreator.smAvatars[_loc3_ + this.mScrollIndex - AvatarCreator.smAvatars.length];
            }
            if(_loc4_)
            {
               _loc4_.visible = true;
               if(this.contains(_loc4_) == false)
               {
                  this.addChildAt(_loc4_,1);
               }
               if(_loc3_ == 3)
               {
                  _loc4_.setTarget(new Target(this.getSpot(SPOTS[_loc3_]),_loc4_.getCharacter().mActiveScale));
                  AvatarCreator.smAvatar = _loc4_;
               }
               else if(_loc3_ == 0 && param1 == false || _loc3_ == SPOTS.length - 1 && param1)
               {
                  _loc4_.setTarget(new Target(this.getSpot(SPOTS[_loc3_]),_loc4_.getCharacter().mInactiveScale));
                  _loc4_.moveToLastTarget();
               }
               else
               {
                  _loc4_.setTarget(new Target(this.getSpot(SPOTS[_loc3_]),_loc4_.getCharacter().mInactiveScale));
               }
            }
            _loc3_++;
         }
         if(_loc2_ && this.mEditMode == MODE_EDIT_ONE_CHARACTER)
         {
            AvatarCreator.smAvatar.swapItems(_loc2_);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Avatar = null;
         var _loc2_:int = super.run(param1);
         var _loc3_:Number = 0;
         while(_loc3_ < AvatarCreator.smAvatars.length)
         {
            if(_loc4_ = AvatarCreator.smAvatars[_loc3_])
            {
               _loc4_.update(param1);
            }
            _loc3_++;
         }
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      public function updateMenuToMatchEquippedItems() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:UIRepeaterRovio = this.mUIView.getItemByName("Repeater_Items") as UIRepeaterRovio;
         var _loc2_:Number = 0;
         while(_loc2_ < AvatarCreator.smItems.mCategories.length)
         {
            _loc3_ = AvatarCreator.smItems.mCategories[_loc2_];
            if((_loc4_ = AvatarCreator.smAvatar.getEquippedItem(_loc3_)) == null)
            {
               _loc1_.getButtonGroupByName("Repeater_Items_Tab_" + _loc2_).buttonSelected(_loc3_);
            }
            else
            {
               _loc1_.getButtonGroupByName("Repeater_Items_Tab_" + _loc2_).buttonSelected(_loc4_.mId);
            }
            _loc2_++;
         }
      }
      
      public function onItemListReceived(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Item = null;
         if(param1["json"])
         {
            _loc2_ = param1["json"];
            _loc3_ = com.adobe.serialization.json.JSON.decode(_loc2_);
            if(_loc3_ && _loc3_["list"])
            {
               for(_loc4_ in _loc3_["list"])
               {
                  if(_loc3_["list"][_loc4_].type == Avatar.ITEM_TYPE_AVATAR_CHARACTER)
                  {
                     this.selectCharacter(_loc3_["list"][_loc4_].itemId);
                  }
                  else if(_loc3_["list"][_loc4_].type == Avatar.ITEM_TYPE_AVATAR_EQUIPMENT)
                  {
                     if(_loc5_ = AvatarCreator.smItems.getItem(_loc3_["list"][_loc4_].itemId))
                     {
                        AvatarCreator.smAvatar.applyItemToAvatar(_loc5_);
                     }
                  }
               }
            }
         }
      }
      
      public function selectCharacter(param1:String) : void
      {
         var _loc3_:Avatar = null;
         var _loc2_:Number = 0;
         while(_loc2_ < AvatarCreator.smAvatars.length)
         {
            if((AvatarCreator.smAvatars[_loc2_] as Avatar).getCharacter().mId == param1)
            {
               this.mScrollIndex = _loc2_ + 5;
               if(this.mEnableLoop && this.mScrollIndex > AvatarCreator.smAvatars.length - 1)
               {
                  this.mScrollIndex -= AvatarCreator.smAvatars.length;
                  break;
               }
               break;
            }
            (AvatarCreator.smAvatars[_loc2_] as Avatar).setTarget(new Target(this.getSpot(SPOTS[0]),0.5));
            _loc2_++;
         }
         this.updateAvatarPositions(false);
         _loc2_ = 0;
         while(_loc2_ < AvatarCreator.smAvatars.length)
         {
            _loc3_ = AvatarCreator.smAvatars[_loc2_];
            _loc3_.moveToLastTarget();
            _loc2_++;
         }
      }
      
      public function onItemListSaved(param1:Object) : void
      {
         AvatarCreator.setDebugText("Item list saved");
         AngryBirdsServer.saveProfileImage(this.createImage(150,150,false),this.onProfileImageSaved);
      }
      
      public function onProfileImageSaved(param1:Object) : void
      {
         AvatarCreator.setDebugText("Image saved");
         var _loc2_:UIPopUpRovio = this.mUIView.getItemByName("Popup_CharacterEditor_ProfilePicture") as UIPopUpRovio;
         (_loc2_.getItemByName("Button_Save") as UIButtonRovio).setEnabled(false);
      }
      
      public function nextCharacter() : void
      {
         if(this.mEnableLoop)
         {
            if(this.mScrollIndex >= AvatarCreator.smAvatars.length - 1)
            {
               this.mScrollIndex = 0;
            }
            else
            {
               ++this.mScrollIndex;
            }
            this.updateAvatarPositions(true);
         }
         else if(this.mScrollIndex < AvatarCreator.smAvatars.length - 4)
         {
            ++this.mScrollIndex;
            this.updateAvatarPositions(true);
         }
      }
      
      public function prevCharacter() : void
      {
         if(this.mEnableLoop)
         {
            if(this.mScrollIndex <= 0)
            {
               this.mScrollIndex = AvatarCreator.smAvatars.length - 1;
            }
            else
            {
               --this.mScrollIndex;
            }
            this.updateAvatarPositions(false);
         }
         else if(this.mScrollIndex > -3)
         {
            --this.mScrollIndex;
            this.updateAvatarPositions(false);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:BitmapData = null;
         var _loc5_:BitmapData = null;
         var _loc6_:Number = NaN;
         var _loc7_:UIPopUpRovio = null;
         switch(param2)
         {
            case "RANDOMIZE_AVATAR":
               if(AvatarCreator.smAvatar.isMoving() == false)
               {
                  AvatarCreator.smAvatar.randomize();
                  this.updateMenuToMatchEquippedItems();
                  break;
               }
               break;
            case "SAVE_AVATAR":
               if(AvatarCreator.smAvatar.isMoving() == false)
               {
                  _loc6_ = AvatarCreator.smAvatar.getItemCost();
                  trace("Avatar will cost " + _loc6_);
                  if(_loc6_ == 0)
                  {
                     AvatarCreator.setDebugText("Avatar cost 0. Saving.");
                     AngryBirdsServer.saveItemList(this.onItemListSaved);
                     break;
                  }
                  if(_loc6_ > 0)
                  {
                     AvatarCreator.setDebugText("Avatar cost " + _loc6_ + ".");
                     break;
                  }
                  break;
               }
               break;
            case "NEXT_CHARACTER":
               if(AvatarCreator.smAvatar.isMoving())
               {
                  break;
               }
               this.nextCharacter();
               break;
            case "PREV_CHARACTER":
               if(AvatarCreator.smAvatar.isMoving())
               {
                  break;
               }
               this.prevCharacter();
               break;
            case "TAKE_SNAPSHOT":
               if(AvatarCreator.smAvatar.isMoving() == false)
               {
                  (_loc7_ = this.mUIView.getItemByName("Popup_CharacterEditor_ProfilePicture") as UIPopUpRovio).open();
                  (_loc7_.getItemByName("Button_Save") as UIButtonRovio).setEnabled(true);
                  this.enableTools(false);
                  this.toggleInactiveAvatarVisibility(false);
                  AvatarCreator.smAvatar.setTarget(new Target(this.getSpot(SPOTS[3]),AvatarCreator.smAvatar.getCharacter().mSnapshotScale,"Snapshot"));
                  break;
               }
               break;
            case "CLOSE_SNAPSHOT":
               this.closeSnapshot();
               break;
            case "PUBLISH_TO_FACEBOOK_PROFILE":
               _loc4_ = this.createImage(100,100,true);
               AngryBirdsServer.sendSnapshot("",_loc4_);
               break;
            case "PUBLISH_TO_TWITTER_PROFILE":
               _loc5_ = this.createImage(50,50,true);
               AngryBirdsServer.sendSnapshot("",_loc5_);
         }
      }
      
      public function closeSnapshot() : void
      {
         var _loc1_:UIPopUpRovio = this.mUIView.getItemByName("Popup_CharacterEditor_ProfilePicture") as UIPopUpRovio;
         (_loc1_.getItemByName("Button_Save") as UIButtonRovio).setEnabled(true);
         _loc1_.close();
         this.enableTools(true);
         this.toggleInactiveAvatarVisibility(true);
         AvatarCreator.smAvatar.setTarget(new Target(this.getSpot(SPOTS[3]),AvatarCreator.smAvatar.getCharacter().mActiveScale,"Snapshot"));
      }
      
      public function createImage(param1:Number, param2:Number, param3:Boolean = true) : BitmapData
      {
         var _loc5_:UIContainerRovio;
         var _loc4_:UIPopUpRovio;
         var _loc6_:Number = -(_loc5_ = (_loc4_ = this.mUIView.getItemByName("Popup_CharacterEditor_ProfilePicture") as UIPopUpRovio).getItemByName("ProfilePicture_Guide") as UIContainerRovio).mClip.x + _loc5_.width / 2;
         var _loc7_:Number = -_loc5_.mClip.y + _loc5_.height / 2;
         var _loc8_:BitmapData = new BitmapData(param1,param2,true,0);
         var _loc9_:Matrix = new Matrix();
         if(param3)
         {
            _loc9_.translate(_loc6_,_loc7_);
            _loc9_.scale(param1 / _loc5_.width,param1 / _loc5_.height);
            _loc8_.draw(this.mBackground,_loc9_);
         }
         _loc9_ = new Matrix();
         var _loc10_:Number = AvatarCreator.smAvatar.getScale();
         _loc9_.translate(_loc6_ + this.getSpot(SPOTS[3]).x,_loc7_ + this.getSpot(SPOTS[3]).y);
         _loc9_.scale(param1 / _loc5_.width,param1 / _loc5_.height);
         if(param3)
         {
            AvatarCreator.smAvatar.setScale(AvatarCreator.smAvatar.getCharacter().mSnapshotScale);
         }
         else
         {
            AvatarCreator.smAvatar.setScale(AvatarCreator.smAvatar.getCharacter().mProfileImageScale);
         }
         _loc8_.draw(AvatarCreator.smAvatar,_loc9_);
         AvatarCreator.smAvatar.setScale(_loc10_);
         return _loc8_;
      }
      
      public function enableTools(param1:Boolean) : void
      {
         this.mUIView.setItemVisibility("Button_Random",param1);
         this.mUIView.setItemVisibility("Button_RoundArrow1",param1);
         this.mUIView.setItemVisibility("Button_RoundArrow2",param1);
      }
      
      public function toggleInactiveAvatarVisibility(param1:Boolean) : void
      {
         var _loc3_:Avatar = null;
         var _loc2_:Number = 0;
         while(_loc2_ < SPOTS.length)
         {
            if(_loc2_ != 3)
            {
               _loc3_ = null;
               if(_loc2_ + this.mScrollIndex >= 0 && _loc2_ + this.mScrollIndex < AvatarCreator.smAvatars.length)
               {
                  _loc3_ = AvatarCreator.smAvatars[_loc2_ + this.mScrollIndex];
                  if(_loc3_)
                  {
                     _loc3_.visible = param1;
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public function removeItem(param1:String) : void
      {
         AvatarCreator.smAvatar.removeItem(param1);
      }
      
      public function itemSelected(param1:String) : void
      {
         var _loc2_:Item = AvatarCreator.smItems.getItem(param1);
         if(_loc2_)
         {
            if(_loc2_.mLevel <= AvatarCreator.smLevel)
            {
               AvatarCreator.smAvatar.applyItemToAvatar(_loc2_);
            }
            else
            {
               Log.log("Tried to select locked item.");
            }
         }
         else
         {
            Log.log("[Warining!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
      }
   }
}
