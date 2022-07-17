package com.AngryBirds.ui
{
   import com.AngryBirds.LevelItemsData.LevelItem;
   import com.AngryBirds.LevelItemsData.LevelItems;
   import com.AngryBirds.LevelItemsData.LevelThemeBackground;
   import com.AngryBirds.LevelItemsData.LevelThemeBackgrounds;
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.states.StateLevelEditor;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIPopUpRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Components.UIRepeaterTabRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.display.MovieClip;
   
   public class ViewLevelEditor extends UIView
   {
      
      public static const INVENTORY_CATAGORIES:Array = new Array("Wood","Stone","Ice","Snow","Pigs","Birds","Misc","Textures");
       
      
      public var mButtonGroupRightPanel:UIButtonGroupRovio;
      
      public var mButtonGroupCameraDropdown:UIButtonGroupRovio;
      
      public var mShowDeleteAndRotateTools:Boolean = true;
      
      public var mShowOnlyOneButtonForGoToBirdPigView:Boolean = true;
      
      public function ViewLevelEditor(param1:StateBase)
      {
         super(param1);
      }
      
      public static function getThumbnailOutOfLevelObjectRenderer(param1:MovieClip) : MovieClip
      {
         if(param1 == null)
         {
            return null;
         }
         param1 = param1.getChildByName("Animations") as MovieClip;
         param1 = param1.getChildByName("Damaged1") as MovieClip;
         if(param1.getChildByName("Neutral"))
         {
            param1 = param1.getChildByName("Neutral") as MovieClip;
         }
         return param1;
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelEditor[0]);
         this.mButtonGroupRightPanel = new UIButtonGroupRovio(UIButtonGroupRovio.TYPE_EXCLUSIVE_BUTTONS,"Editor_Right_Panel_Tools");
         this.mButtonGroupRightPanel.addButton(getItemByName("Button_ToolSelect") as UIButtonRovio);
         this.mButtonGroupRightPanel.addButton(getItemByName("Button_Hand") as UIButtonRovio);
         this.mButtonGroupRightPanel.addButton(getItemByName("Button_ToolRotate") as UIButtonRovio);
         this.mButtonGroupRightPanel.addButton(getItemByName("Button_ToolDelete") as UIButtonRovio);
         this.mButtonGroupCameraDropdown = new UIButtonGroupRovio(UIButtonGroupRovio.TYPE_EXCLUSIVE_BUTTONS,"Editor_CameraDropdown");
         this.mButtonGroupCameraDropdown.addButton(getItemByName("Button_CameraDropdown_SetCamera") as UIButtonRovio);
         this.mButtonGroupCameraDropdown.addButton(getItemByName("Button_CameraDropdown_Autocamera") as UIButtonRovio);
      }
      
      override public function activateView() : void
      {
         super.activateView();
         this.setRepeaterVisibleTab("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:UIRepeaterRovio = getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         _loc1_.getButtonGroupByName("Repeater_Tabs_Tab_0").buttonSelected("Tab_Birds");
         _loc1_.getButtonGroupByName("Repeater_Tabs_Tab_1").buttonSelected("Tab_Pigs");
         this.setRepeaterVisibleTab("Repeater_Tabs","Repeater_Tabs_Tab_1");
         this.mShowDeleteAndRotateTools = true;
         this.switchRotateAndDeleteButtons(true);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         super.listenerEventOccured(param1,param2,param3);
         if(param2.length > 1 && param3 is UIComponentRovio && (param3 as UIComponentRovio).mParentContainer is UIRepeaterTabRovio)
         {
            if((_loc4_ = (((param3 as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase()) == "REPEATER_TABS")
            {
               if((_loc5_ = this.matchTabNameWithCategoryName(param2)) != -1)
               {
                  (mStateBase as StateLevelEditor).tabCatagorySelected(INVENTORY_CATAGORIES[_loc5_]);
                  this.setRepeaterVisibleTab("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
               }
            }
            else if(_loc4_ == "REPEATER_ITEMS")
            {
               (mStateBase as StateLevelEditor).tabMaterialItemSelected(param2);
            }
            else if(_loc4_ == "REPEATER_THEMESELECTION")
            {
               (mStateBase as StateLevelEditor).changeLevelBackgroundActionRequest(param2);
            }
         }
         switch(param2)
         {
            case "TOP_BAR_OPEN_CAMERA_POPUP":
               setItemVisibility("Container_CameraDropDown",!getItemByName("Container_CameraDropDown").visible);
               break;
            case "OPEN_FILE_DROP_DOWN":
               setItemVisibility("Container_FileDropDown",!getItemByName("Container_FileDropDown").visible);
               break;
            case "EDITOR_REPEATER_ITEMS_MOUSEOVER":
               if(AngryBirdsSocial.smLevelMain.mLevelEditor.mSelectedTool == LevelEditor.SELECTED_TOOL_ADD_ITEM)
               {
                  MouseCursorController.setCursor("Cursor_NewItem");
                  break;
               }
               MouseCursorController.setCursor("Cursor_Arrow");
               break;
            case "EDITOR_REPEATER_TABS_MOUSEOVER":
               MouseCursorController.setCursor("");
               break;
            case "BOTTOM_EXTEND_LEVEL":
               this.updateExtensionUi();
               (getItemByName("Popup_Editor_LevelExtend") as UIPopUpRovio).setVisibility(true);
               break;
            case "BOTTOM_SELECT_THEME":
               (getItemByName("Popup_Editor_ThemeSelect") as UIPopUpRovio).setVisibility(true);
               (getItemByName(AngryBirdsSocial.smLevelMain.mLevelBackground.mLevelBackgroundInformation.mName) as UIRepeaterButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               break;
            case "POPUP_LEVEL_SAVED_CLOSE":
               (getItemByName("Popup_Editor_LevelSaved") as UIPopUpRovio).close();
               break;
            case "POPUP_LOAD_LEVEL_CLOSE":
               (getItemByName("Popup_Editor_LoadLevel") as UIPopUpRovio).close();
               break;
            case "POPUP_THEMESELECT_CLOSE":
               (getItemByName("Popup_Editor_ThemeSelect") as UIPopUpRovio).close();
               break;
            case "POPUP_LEVELEXTEND_CLOSE":
               (getItemByName("Popup_Editor_LevelExtend") as UIPopUpRovio).close();
               break;
            case "POPUP_PUBLISH_LEVEL_CLOSE":
               (getItemByName("Popup_Editor_PublishLevel") as UIPopUpRovio).close();
               break;
            case "POPUP_CAMERA_CONFIRMATION_CLOSE":
               (getItemByName("Popup_Editor_SetCameraConfirmation") as UIPopUpRovio).close();
               break;
            case "POPUP_SET_CAMERA_CONFIRM":
               (getItemByName("Popup_Editor_SetCameraConfirmation") as UIPopUpRovio).open();
               (getItemByName("MovieClip_SetCameraConfirmation_Thumbnail") as UIMovieClipRovio).changeMovieClip(AngryBirdsSocial.smLevelMain.mLevelEditor.createScreenshotMovieClip());
         }
      }
      
      public function matchTabNameWithCategoryName(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < INVENTORY_CATAGORIES.length)
         {
            if(param1.toUpperCase() == "TAB_" + (INVENTORY_CATAGORIES[_loc2_] as String).toUpperCase())
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      override public function setRepeaterVisibleTab(param1:String, param2:String) : void
      {
         var _loc3_:UIRepeaterRovio = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         super.setRepeaterVisibleTab(param1,param2);
         if(param1.toUpperCase() == "REPEATER_TABS")
         {
            _loc3_ = getItemByName(param1) as UIRepeaterRovio;
            _loc4_ = _loc3_.getButtonGroupByName(param2).mLastSelectedButtonName;
            if((_loc5_ = this.matchTabNameWithCategoryName(_loc4_)) != -1)
            {
               (mStateBase as StateLevelEditor).tabCatagorySelected(INVENTORY_CATAGORIES[_loc5_]);
               this.setRepeaterVisibleTab("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
            }
         }
      }
      
      public function switchRotateAndDeleteButtons(param1:Boolean) : void
      {
         var _loc2_:Boolean = this.mShowDeleteAndRotateTools;
         if((getItemByName("Button_ToolRotate") as UIButtonRovio).mVisibility != _loc2_)
         {
            setItemVisibility("Button_ToolRotate",_loc2_);
            setItemVisibility("Button_ToolDelete",_loc2_);
         }
         _loc2_ = !param1 && !this.mShowDeleteAndRotateTools;
         if((getItemByName("Button_ToolRotateAll") as UIButtonRovio).mVisibility != _loc2_)
         {
            setItemVisibility("Button_ToolRotateAll",_loc2_);
            setItemVisibility("Button_ToolDeleteAll",_loc2_);
         }
      }
      
      public function toggleDeleteRotateToolStatus() : void
      {
         this.mShowDeleteAndRotateTools = !this.mShowDeleteAndRotateTools;
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         if(param1.toUpperCase() == "Repeater_Tabs".toUpperCase())
         {
            return this.getRepeaterTabDataXML();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.getRepeaterItemsDataXML();
         }
         if(param1.toUpperCase() == "Repeater_ThemeSelection".toUpperCase())
         {
            return this.getRepeaterThemesXML();
         }
         return null;
      }
      
      public function getRepeaterTabDataXML() : Array
      {
         var _loc5_:XML = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc1_:Array = new Array();
         _loc1_[LevelEditor.EDITOR_VIEW_SLINGSHOT] = new Array();
         _loc1_[LevelEditor.EDITOR_VIEW_CASTLE] = new Array();
         var _loc2_:Array = new Array("Tab_Textures","Tab_Birds");
         var _loc3_:Array = new Array("Thumbnail_Texture","Thumbnail_Bird");
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            (_loc5_ = <Button/>).@name = _loc2_[_loc4_] as String;
            _loc5_.@MouseUp = _loc2_[_loc4_] as String;
            _loc6_ = new (_loc7_ = AssetCache.getAssetFromCache(_loc3_[_loc4_]))();
            (_loc1_[LevelEditor.EDITOR_VIEW_SLINGSHOT] as Array).push(new Array(_loc5_,_loc6_));
            _loc4_++;
         }
         _loc2_ = new Array("Tab_Textures","Tab_Pigs","Tab_Wood","Tab_Ice","Tab_Stone","Tab_Snow","Tab_Misc");
         _loc3_ = new Array("Thumbnail_Texture","Thumbnail_Pig","Thumbnail_Wood","Thumbnail_Ice","Thumbnail_Stone","Thumbnail_Snow","Thumbnail_Misc");
         _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            (_loc5_ = <Button/>).@name = _loc2_[_loc4_] as String;
            _loc5_.@MouseUp = _loc2_[_loc4_] as String;
            _loc6_ = new (_loc7_ = AssetCache.getAssetFromCache(_loc3_[_loc4_]))();
            (_loc1_[LevelEditor.EDITOR_VIEW_CASTLE] as Array).push(new Array(_loc5_,_loc6_));
            _loc4_++;
         }
         return _loc1_;
      }
      
      public function getRepeaterItemsDataXML() : Array
      {
         var _loc3_:XML = null;
         var _loc4_:MovieClip = null;
         var _loc5_:Class = null;
         var _loc6_:LevelItem = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < INVENTORY_CATAGORIES.length)
         {
            _loc1_[_loc2_] = new Array();
            _loc7_ = LevelItems.getItemsByCategory(INVENTORY_CATAGORIES[_loc2_] as String);
            _loc8_ = 0;
            while(_loc8_ < _loc7_.length)
            {
               _loc3_ = <Button/>;
               _loc3_.@name = _loc7_[_loc8_] as String;
               _loc3_.@MouseDown = _loc7_[_loc8_] as String;
               _loc4_ = new (_loc5_ = AssetCache.getAssetFromCache(_loc7_[_loc8_]))();
               _loc4_ = ViewLevelEditor.getThumbnailOutOfLevelObjectRenderer(_loc4_);
               if((_loc6_ = LevelItems.getItem(_loc7_[_loc8_])) && _loc6_.mThumbnailScale != 1)
               {
                  _loc4_.scaleX = _loc6_.mThumbnailScale;
                  _loc4_.scaleY = _loc6_.mThumbnailScale;
               }
               (_loc1_[_loc2_] as Array).push(new Array(_loc3_,_loc4_));
               _loc8_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getRepeaterThemesXML() : Array
      {
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc5_:LevelItem = null;
         var _loc7_:LevelThemeBackground = null;
         var _loc8_:String = null;
         var _loc9_:Class = null;
         var _loc10_:MovieClip = null;
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         var _loc4_:Class = AssetCache.getAssetFromCache("ThemeSelect_Component");
         var _loc6_:int = 0;
         while(_loc6_ < LevelThemeBackgrounds.mBackgrounds.length)
         {
            _loc8_ = (_loc7_ = LevelThemeBackgrounds.mBackgrounds[_loc6_] as LevelThemeBackground).mName;
            _loc2_ = <Button/>;
            _loc2_.@name = _loc8_;
            _loc2_.@MouseUp = _loc8_;
            _loc3_ = new _loc4_();
            _loc10_ = new (_loc9_ = AssetCache.getAssetFromCache(_loc7_.mIconName))();
            _loc3_.addChildAt(_loc10_,0);
            _loc5_ = LevelItems.getItem(_loc8_);
            _loc3_.TextField_Cost.text = "x" + _loc7_.getCost();
            _loc1_[0].push(new Array(_loc2_,null,_loc3_));
            _loc6_++;
         }
         return _loc1_;
      }
      
      public function updateExtensionUi() : void
      {
         var _loc1_:int = AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelExtension + 1;
         (getItemByName("MovieClip_LevelExtend_Image") as UIMovieClipRovio).StopAt(_loc1_);
         (getItemByName("Container_LevelExtend_Extension1") as UIContainerRovio).setVisibility(_loc1_ == 1);
         (getItemByName("Container_LevelExtend_Extension2") as UIContainerRovio).setVisibility(_loc1_ == 2);
         (getItemByName("Container_LevelExtend_Extension3") as UIContainerRovio).setVisibility(_loc1_ == 3);
         setText("x" + AngryBirdsSocial.smLevelMain.mLevelEditor.getExtensionCost(),"TextField_LevelExtend_Cost" + _loc1_);
      }
      
      public function updateUI() : void
      {
         var _loc10_:UIMovieClipRovio = null;
         var _loc11_:String = null;
         var _loc12_:UIMovieClipRovio = null;
         var _loc1_:String = !!AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelCompleted ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED;
         if((getItemByName("Button_PublishLevel") as UIComponentInteractiveRovio).mComponentState != _loc1_)
         {
            (getItemByName("Button_PublishLevel") as UIComponentInteractiveRovio).setComponentState(_loc1_);
         }
         _loc1_ = !!AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelCompleted ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE;
         if((getItemByName("Button_TestPlay") as UIComponentInteractiveRovio).mComponentState != _loc1_)
         {
            (getItemByName("Button_TestPlay") as UIComponentInteractiveRovio).setComponentState(_loc1_);
         }
         _loc1_ = !!AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelSaved ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE;
         if((getItemByName("Button_Save") as UIComponentInteractiveRovio).mComponentState != _loc1_)
         {
            (getItemByName("Button_Save") as UIComponentInteractiveRovio).setComponentState(_loc1_);
         }
         _loc1_ = !!AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelAutoCamera ? UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE : UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT;
         if((getItemByName("Button_Camera") as UIComponentInteractiveRovio).mComponentState != _loc1_)
         {
            (getItemByName("Button_Camera") as UIComponentInteractiveRovio).setComponentState(_loc1_);
         }
         _loc1_ = !!AngryBirdsSocial.smLevelMain.mLevelEditor.mPhysicsEnabled ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE;
         if((getItemByName("Button_ToolDoPhysics") as UIComponentInteractiveRovio).mComponentState != _loc1_)
         {
            (getItemByName("Button_ToolDoPhysics") as UIComponentInteractiveRovio).setComponentState(_loc1_);
         }
         var _loc2_:* = AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelExtension > 0;
         if((getItemByName("Button_ZoomIn") as UIComponentRovio).mVisibility != _loc2_)
         {
            (getItemByName("Button_ZoomIn") as UIComponentRovio).setVisibility(_loc2_);
         }
         if((getItemByName("Button_ZoomOut") as UIComponentRovio).mVisibility != _loc2_)
         {
            (getItemByName("Button_ZoomOut") as UIComponentRovio).setVisibility(_loc2_);
         }
         if((getItemByName("Button_Camera") as UIComponentRovio).mVisibility != _loc2_)
         {
            (getItemByName("Button_Camera") as UIComponentRovio).setVisibility(_loc2_);
         }
         if((getItemByName("Button_Hand") as UIComponentRovio).mVisibility != _loc2_)
         {
            (getItemByName("Button_Hand") as UIComponentRovio).setVisibility(_loc2_);
         }
         var _loc3_:Boolean = _loc2_ && !this.mShowOnlyOneButtonForGoToBirdPigView;
         if((getItemByName("Button_ViewBird") as UIComponentRovio).mVisibility != _loc3_)
         {
            (getItemByName("Button_ViewBird") as UIComponentRovio).setVisibility(_loc3_);
         }
         var _loc4_:Boolean = _loc2_ && !this.mShowOnlyOneButtonForGoToBirdPigView;
         if((getItemByName("Button_ViewPig") as UIComponentRovio).mVisibility != _loc4_)
         {
            (getItemByName("Button_ViewPig") as UIComponentRovio).setVisibility(_loc4_);
         }
         var _loc5_:Boolean = (!_loc2_ || this.mShowOnlyOneButtonForGoToBirdPigView) && AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE;
         if((getItemByName("Button_ViewBird_BirdAlone") as UIComponentRovio).mVisibility != _loc5_)
         {
            (getItemByName("Button_ViewBird_BirdAlone") as UIComponentRovio).setVisibility(_loc5_);
         }
         var _loc6_:Boolean = (!_loc2_ || this.mShowOnlyOneButtonForGoToBirdPigView) && AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_SLINGSHOT;
         if((getItemByName("Button_ViewPig_PigAlone") as UIComponentRovio).mVisibility != _loc6_)
         {
            (getItemByName("Button_ViewPig_PigAlone") as UIComponentRovio).setVisibility(_loc6_);
         }
         var _loc7_:Number = AngryBirdsSocial.smLevelMain.mLevelEditor.calculateBlockCount();
         var _loc8_:Number = AngryBirdsSocial.smLevelMain.mLevelEditor.getMaxBlockCount();
         this.setText(_loc7_ + "/" + _loc8_,"Textfield_BlockLimit");
         var _loc9_:Number = 1;
         if(_loc7_ < _loc8_ / 2)
         {
            _loc9_ = 1;
         }
         else if(_loc7_ < _loc8_)
         {
            _loc9_ = 2;
         }
         else
         {
            _loc9_ = 3;
         }
         if((this.getItemByName("MovieClip_BlockLimit_Bg") as UIMovieClipRovio).getCurrentFrame() != _loc9_)
         {
            (this.getItemByName("MovieClip_BlockLimit_Bg") as UIMovieClipRovio).StopAt(_loc9_);
            (this.getItemByName("Container_Editor_BlockLimit") as UIContainerRovio).setVisibility(_loc9_ != 1);
         }
         if((getItemByName("Container_CameraDropDown") as UIContainerRovio).mVisibility)
         {
            if((_loc10_ = getItemByName("MovieClip_CameraDropdown_Hitarea") as UIMovieClipRovio).mClip.mouseX < 0 || _loc10_.mClip.mouseX > _loc10_.width || _loc10_.mClip.mouseY < 0 || _loc10_.mClip.mouseY > _loc10_.height)
            {
               (getItemByName("Container_CameraDropDown") as UIContainerRovio).setVisibility(false);
            }
            _loc11_ = !!AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelAutoCamera ? "Button_CameraDropdown_Autocamera" : "Button_CameraDropdown_SetCamera";
            if(this.mButtonGroupCameraDropdown.mLastSelectedButtonName != _loc11_)
            {
               this.mButtonGroupCameraDropdown.buttonSelected(_loc11_);
            }
         }
         if((getItemByName("Container_FileDropDown") as UIContainerRovio).mVisibility)
         {
            if((_loc12_ = getItemByName("MovieClip_FileDropdown_Hitarea") as UIMovieClipRovio).mClip.mouseX < 0 || _loc12_.mClip.mouseX > _loc12_.width || _loc12_.mClip.mouseY < 0 || _loc12_.mClip.mouseY > _loc12_.height)
            {
               (getItemByName("Container_FileDropDown") as UIContainerRovio).setVisibility(false);
            }
         }
      }
   }
}
