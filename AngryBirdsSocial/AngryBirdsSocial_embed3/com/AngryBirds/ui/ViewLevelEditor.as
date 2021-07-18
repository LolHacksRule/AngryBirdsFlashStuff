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
      
      public function ViewLevelEditor(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      public static function getThumbnailOutOfLevelObjectRenderer(animation:MovieClip) : MovieClip
      {
         if(animation == null)
         {
            return null;
         }
         animation = animation.getChildByName("Animations") as MovieClip;
         animation = animation.getChildByName("Damaged1") as MovieClip;
         if(animation.getChildByName("Neutral"))
         {
            animation = animation.getChildByName("Neutral") as MovieClip;
         }
         return animation;
      }
      
      override public function init(data:XML) : void
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
         var tabs:UIRepeaterRovio = getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         tabs.getButtonGroupByName("Repeater_Tabs_Tab_0").buttonSelected("Tab_Birds");
         tabs.getButtonGroupByName("Repeater_Tabs_Tab_1").buttonSelected("Tab_Pigs");
         this.setRepeaterVisibleTab("Repeater_Tabs","Repeater_Tabs_Tab_1");
         this.mShowDeleteAndRotateTools = true;
         this.switchRotateAndDeleteButtons(true);
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var repeaterName:String = null;
         var tabIndex:int = 0;
         super.listenerEventOccured(eventIndex,eventName,component);
         if(eventName.length > 1 && component is UIComponentRovio && (component as UIComponentRovio).mParentContainer is UIRepeaterTabRovio)
         {
            repeaterName = (((component as UIComponentRovio).mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase();
            if(repeaterName == "REPEATER_TABS")
            {
               tabIndex = this.matchTabNameWithCategoryName(eventName);
               if(tabIndex != -1)
               {
                  (mStateBase as StateLevelEditor).tabCatagorySelected(INVENTORY_CATAGORIES[tabIndex]);
                  this.setRepeaterVisibleTab("Repeater_Items","Repeater_Items_Tab_" + tabIndex);
               }
            }
            else if(repeaterName == "REPEATER_ITEMS")
            {
               (mStateBase as StateLevelEditor).tabMaterialItemSelected(eventName);
            }
            else if(repeaterName == "REPEATER_THEMESELECTION")
            {
               (mStateBase as StateLevelEditor).changeLevelBackgroundActionRequest(eventName);
            }
         }
         switch(eventName)
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
               }
               else
               {
                  MouseCursorController.setCursor("Cursor_Arrow");
               }
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
      
      public function matchTabNameWithCategoryName(tabName:String) : int
      {
         for(var i:int = 0; i < INVENTORY_CATAGORIES.length; i++)
         {
            if(tabName.toUpperCase() == "TAB_" + (INVENTORY_CATAGORIES[i] as String).toUpperCase())
            {
               return i;
            }
         }
         return -1;
      }
      
      override public function setRepeaterVisibleTab(repeaterName:String, tabName:String) : void
      {
         var repeaterTabs:UIRepeaterRovio = null;
         var selectedCategory:String = null;
         var tabIndex:int = 0;
         super.setRepeaterVisibleTab(repeaterName,tabName);
         if(repeaterName.toUpperCase() == "REPEATER_TABS")
         {
            repeaterTabs = getItemByName(repeaterName) as UIRepeaterRovio;
            selectedCategory = repeaterTabs.getButtonGroupByName(tabName).mLastSelectedButtonName;
            tabIndex = this.matchTabNameWithCategoryName(selectedCategory);
            if(tabIndex != -1)
            {
               (mStateBase as StateLevelEditor).tabCatagorySelected(INVENTORY_CATAGORIES[tabIndex]);
               this.setRepeaterVisibleTab("Repeater_Items","Repeater_Items_Tab_" + tabIndex);
            }
         }
      }
      
      public function switchRotateAndDeleteButtons(useDefault:Boolean) : void
      {
         var visible:Boolean = this.mShowDeleteAndRotateTools;
         if((getItemByName("Button_ToolRotate") as UIButtonRovio).mVisibility != visible)
         {
            setItemVisibility("Button_ToolRotate",visible);
            setItemVisibility("Button_ToolDelete",visible);
         }
         visible = !useDefault && !this.mShowDeleteAndRotateTools;
         if((getItemByName("Button_ToolRotateAll") as UIButtonRovio).mVisibility != visible)
         {
            setItemVisibility("Button_ToolRotateAll",visible);
            setItemVisibility("Button_ToolDeleteAll",visible);
         }
      }
      
      public function toggleDeleteRotateToolStatus() : void
      {
         this.mShowDeleteAndRotateTools = !this.mShowDeleteAndRotateTools;
      }
      
      override public function getRepeaterDataXML(repeaterName:String) : Array
      {
         if(repeaterName.toUpperCase() == "Repeater_Tabs".toUpperCase())
         {
            return this.getRepeaterTabDataXML();
         }
         if(repeaterName.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.getRepeaterItemsDataXML();
         }
         if(repeaterName.toUpperCase() == "Repeater_ThemeSelection".toUpperCase())
         {
            return this.getRepeaterThemesXML();
         }
         return null;
      }
      
      public function getRepeaterTabDataXML() : Array
      {
         var but:XML = null;
         var clip:MovieClip = null;
         var c:Class = null;
         var list:Array = new Array();
         list[LevelEditor.EDITOR_VIEW_SLINGSHOT] = new Array();
         list[LevelEditor.EDITOR_VIEW_CASTLE] = new Array();
         var temp:Array = new Array("Tab_Textures","Tab_Birds");
         var temp2:Array = new Array("Thumbnail_Texture","Thumbnail_Bird");
         for(var i:int = 0; i < temp.length; i++)
         {
            but = <Button/>;
            but.@name = temp[i] as String;
            but.@MouseUp = temp[i] as String;
            c = AssetCache.getAssetFromCache(temp2[i]);
            clip = new c();
            (list[LevelEditor.EDITOR_VIEW_SLINGSHOT] as Array).push(new Array(but,clip));
         }
         temp = new Array("Tab_Textures","Tab_Pigs","Tab_Wood","Tab_Ice","Tab_Stone","Tab_Snow","Tab_Misc");
         temp2 = new Array("Thumbnail_Texture","Thumbnail_Pig","Thumbnail_Wood","Thumbnail_Ice","Thumbnail_Stone","Thumbnail_Snow","Thumbnail_Misc");
         for(i = 0; i < temp.length; i++)
         {
            but = <Button/>;
            but.@name = temp[i] as String;
            but.@MouseUp = temp[i] as String;
            c = AssetCache.getAssetFromCache(temp2[i]);
            clip = new c();
            (list[LevelEditor.EDITOR_VIEW_CASTLE] as Array).push(new Array(but,clip));
         }
         return list;
      }
      
      public function getRepeaterItemsDataXML() : Array
      {
         var but:XML = null;
         var clip:MovieClip = null;
         var c:Class = null;
         var levelItem:LevelItem = null;
         var items:Array = null;
         var item:int = 0;
         var list:Array = new Array();
         for(var tab:int = 0; tab < INVENTORY_CATAGORIES.length; tab++)
         {
            list[tab] = new Array();
            items = LevelItems.getItemsByCategory(INVENTORY_CATAGORIES[tab] as String);
            for(item = 0; item < items.length; item++)
            {
               but = <Button/>;
               but.@name = items[item] as String;
               but.@MouseDown = items[item] as String;
               c = AssetCache.getAssetFromCache(items[item]);
               clip = new c();
               clip = ViewLevelEditor.getThumbnailOutOfLevelObjectRenderer(clip);
               levelItem = LevelItems.getItem(items[item]);
               if(levelItem && levelItem.mThumbnailScale != 1)
               {
                  clip.scaleX = levelItem.mThumbnailScale;
                  clip.scaleY = levelItem.mThumbnailScale;
               }
               (list[tab] as Array).push(new Array(but,clip));
            }
         }
         return list;
      }
      
      public function getRepeaterThemesXML() : Array
      {
         var but:XML = null;
         var clip:MovieClip = null;
         var levelItem:LevelItem = null;
         var bgObject:LevelThemeBackground = null;
         var bgName:String = null;
         var imgcls:Class = null;
         var img:MovieClip = null;
         var list:Array = new Array();
         list[0] = new Array();
         var c:Class = AssetCache.getAssetFromCache("ThemeSelect_Component");
         for(var bg:int = 0; bg < LevelThemeBackgrounds.mBackgrounds.length; bg++)
         {
            bgObject = LevelThemeBackgrounds.mBackgrounds[bg] as LevelThemeBackground;
            bgName = bgObject.mName;
            but = <Button/>;
            but.@name = bgName;
            but.@MouseUp = bgName;
            clip = new c();
            imgcls = AssetCache.getAssetFromCache(bgObject.mIconName);
            img = new imgcls();
            clip.addChildAt(img,0);
            levelItem = LevelItems.getItem(bgName);
            clip.TextField_Cost.text = "x" + bgObject.getCost();
            list[0].push(new Array(but,null,clip));
         }
         return list;
      }
      
      public function updateExtensionUi() : void
      {
         var currentExtensionState:int = AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelExtension + 1;
         (getItemByName("MovieClip_LevelExtend_Image") as UIMovieClipRovio).StopAt(currentExtensionState);
         (getItemByName("Container_LevelExtend_Extension1") as UIContainerRovio).setVisibility(currentExtensionState == 1);
         (getItemByName("Container_LevelExtend_Extension2") as UIContainerRovio).setVisibility(currentExtensionState == 2);
         (getItemByName("Container_LevelExtend_Extension3") as UIContainerRovio).setVisibility(currentExtensionState == 3);
         setText("x" + AngryBirdsSocial.smLevelMain.mLevelEditor.getExtensionCost(),"TextField_LevelExtend_Cost" + currentExtensionState);
      }
      
      public function updateUI() : void
      {
         var hitArea:UIMovieClipRovio = null;
         var btnId:String = null;
         var hitAreaFile:UIMovieClipRovio = null;
         var state:String = !!AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelCompleted ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED;
         if((getItemByName("Button_PublishLevel") as UIComponentInteractiveRovio).mComponentState != state)
         {
            (getItemByName("Button_PublishLevel") as UIComponentInteractiveRovio).setComponentState(state);
         }
         state = !!AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelCompleted ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE;
         if((getItemByName("Button_TestPlay") as UIComponentInteractiveRovio).mComponentState != state)
         {
            (getItemByName("Button_TestPlay") as UIComponentInteractiveRovio).setComponentState(state);
         }
         state = !!AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelSaved ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE;
         if((getItemByName("Button_Save") as UIComponentInteractiveRovio).mComponentState != state)
         {
            (getItemByName("Button_Save") as UIComponentInteractiveRovio).setComponentState(state);
         }
         state = !!AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelAutoCamera ? UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE : UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT;
         if((getItemByName("Button_Camera") as UIComponentInteractiveRovio).mComponentState != state)
         {
            (getItemByName("Button_Camera") as UIComponentInteractiveRovio).setComponentState(state);
         }
         state = !!AngryBirdsSocial.smLevelMain.mLevelEditor.mPhysicsEnabled ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE;
         if((getItemByName("Button_ToolDoPhysics") as UIComponentInteractiveRovio).mComponentState != state)
         {
            (getItemByName("Button_ToolDoPhysics") as UIComponentInteractiveRovio).setComponentState(state);
         }
         var expansionButtonsVisible:Boolean = AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelExtension > 0;
         if((getItemByName("Button_ZoomIn") as UIComponentRovio).mVisibility != expansionButtonsVisible)
         {
            (getItemByName("Button_ZoomIn") as UIComponentRovio).setVisibility(expansionButtonsVisible);
         }
         if((getItemByName("Button_ZoomOut") as UIComponentRovio).mVisibility != expansionButtonsVisible)
         {
            (getItemByName("Button_ZoomOut") as UIComponentRovio).setVisibility(expansionButtonsVisible);
         }
         if((getItemByName("Button_Camera") as UIComponentRovio).mVisibility != expansionButtonsVisible)
         {
            (getItemByName("Button_Camera") as UIComponentRovio).setVisibility(expansionButtonsVisible);
         }
         if((getItemByName("Button_Hand") as UIComponentRovio).mVisibility != expansionButtonsVisible)
         {
            (getItemByName("Button_Hand") as UIComponentRovio).setVisibility(expansionButtonsVisible);
         }
         var showViewBird:Boolean = expansionButtonsVisible && !this.mShowOnlyOneButtonForGoToBirdPigView;
         if((getItemByName("Button_ViewBird") as UIComponentRovio).mVisibility != showViewBird)
         {
            (getItemByName("Button_ViewBird") as UIComponentRovio).setVisibility(showViewBird);
         }
         var showViewPig:Boolean = expansionButtonsVisible && !this.mShowOnlyOneButtonForGoToBirdPigView;
         if((getItemByName("Button_ViewPig") as UIComponentRovio).mVisibility != showViewPig)
         {
            (getItemByName("Button_ViewPig") as UIComponentRovio).setVisibility(showViewPig);
         }
         var showViewBirdAlone:Boolean = (!expansionButtonsVisible || this.mShowOnlyOneButtonForGoToBirdPigView) && AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE;
         if((getItemByName("Button_ViewBird_BirdAlone") as UIComponentRovio).mVisibility != showViewBirdAlone)
         {
            (getItemByName("Button_ViewBird_BirdAlone") as UIComponentRovio).setVisibility(showViewBirdAlone);
         }
         var showViewPigAlone:Boolean = (!expansionButtonsVisible || this.mShowOnlyOneButtonForGoToBirdPigView) && AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_SLINGSHOT;
         if((getItemByName("Button_ViewPig_PigAlone") as UIComponentRovio).mVisibility != showViewPigAlone)
         {
            (getItemByName("Button_ViewPig_PigAlone") as UIComponentRovio).setVisibility(showViewPigAlone);
         }
         var numBlocks:Number = AngryBirdsSocial.smLevelMain.mLevelEditor.calculateBlockCount();
         var maxBlocks:Number = AngryBirdsSocial.smLevelMain.mLevelEditor.getMaxBlockCount();
         this.setText(numBlocks + "/" + maxBlocks,"Textfield_BlockLimit");
         var blockBgFrame:Number = 1;
         if(numBlocks < maxBlocks / 2)
         {
            blockBgFrame = 1;
         }
         else if(numBlocks < maxBlocks)
         {
            blockBgFrame = 2;
         }
         else
         {
            blockBgFrame = 3;
         }
         if((this.getItemByName("MovieClip_BlockLimit_Bg") as UIMovieClipRovio).getCurrentFrame() != blockBgFrame)
         {
            (this.getItemByName("MovieClip_BlockLimit_Bg") as UIMovieClipRovio).StopAt(blockBgFrame);
            (this.getItemByName("Container_Editor_BlockLimit") as UIContainerRovio).setVisibility(blockBgFrame != 1);
         }
         if((getItemByName("Container_CameraDropDown") as UIContainerRovio).mVisibility)
         {
            hitArea = getItemByName("MovieClip_CameraDropdown_Hitarea") as UIMovieClipRovio;
            if(hitArea.mClip.mouseX < 0 || hitArea.mClip.mouseX > hitArea.width || hitArea.mClip.mouseY < 0 || hitArea.mClip.mouseY > hitArea.height)
            {
               (getItemByName("Container_CameraDropDown") as UIContainerRovio).setVisibility(false);
            }
            btnId = !!AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelAutoCamera ? "Button_CameraDropdown_Autocamera" : "Button_CameraDropdown_SetCamera";
            if(this.mButtonGroupCameraDropdown.mLastSelectedButtonName != btnId)
            {
               this.mButtonGroupCameraDropdown.buttonSelected(btnId);
            }
         }
         if((getItemByName("Container_FileDropDown") as UIContainerRovio).mVisibility)
         {
            hitAreaFile = getItemByName("MovieClip_FileDropdown_Hitarea") as UIMovieClipRovio;
            if(hitAreaFile.mClip.mouseX < 0 || hitAreaFile.mClip.mouseX > hitAreaFile.width || hitAreaFile.mClip.mouseY < 0 || hitAreaFile.mClip.mouseY > hitAreaFile.height)
            {
               (getItemByName("Container_FileDropDown") as UIContainerRovio).setVisibility(false);
            }
         }
      }
   }
}
