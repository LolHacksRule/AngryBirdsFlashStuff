package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.LevelPlayer.LevelParticle;
   import com.AngryBirds.ui.ViewLevelEditor;
   import com.AngryBirds.ui.ViewLevelEditorTestPlay;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIPopUpRovio;
   import com.rovio.ui.Views.UIView;
   import flash.events.KeyboardEvent;
   
   public class StateLevelEditor extends StateBase
   {
      
      public static const STATE_NAME:String = "EditorMainState";
       
      
      public var mEditorPlayView:UIView = null;
      
      public function StateLevelEditor(param1:Boolean = true, param2:String = "EditorMainState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         Log.log("LevelEditor::init()");
         mUIView = new ViewLevelEditor(this);
         mUIView.init(null);
         this.mEditorPlayView = new ViewLevelEditorTestPlay(this);
         this.mEditorPlayView.init(null);
         this.mEditorPlayView.deactivateView();
         this.addAlternateView(this.mEditorPlayView);
      }
      
      override public function activate() : void
      {
         addChildAt(AngryBirdsSocial.smLevelMain,0);
         super.activate();
         MouseCursorController.setCursor("Cursor_Hand_Arrow");
         AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_SELECT);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!AngryBirdsSocial.smLevelMain.update(param1,AngryBirdsSocial.smLevelMain.mLevelEditor.mPhysicsEnabled))
         {
            _loc3_ = false;
            if(!AngryBirdsSocial.smLevelMain.mLevelObjects.isPigsAlive())
            {
               _loc3_ = true;
            }
            this.setActiveView("MAIN_VIEW");
            AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_SELECT);
            this.goToCastleView();
            AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelCompleted = _loc3_;
         }
         (mUIView as ViewLevelEditor).updateUI();
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         removeChild(AngryBirdsSocial.smLevelMain);
         this.mUIView.clearPopups();
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:UIMovieClipRovio = null;
         switch(param2)
         {
            case "TOOL_SELECT":
               AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_SELECT);
               break;
            case "TOOL_CAMERA":
               AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_CAMERA);
               break;
            case "TOOL_ROTATE":
               AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_ROTATE_NEW);
               break;
            case "ACTION_ROTATE_SELECTED":
               if(AngryBirdsSocial.smLevelMain.mLevelEditor.mSelectedTool == LevelEditor.SELECTED_TOOL_SELECT && AngryBirdsSocial.smLevelMain.mLevelEditor.mSelectedObjects.length > 0)
               {
                  AngryBirdsSocial.smLevelMain.mLevelEditor.addAction(LevelEditor.ACTION_SELECTED_ROTATE_NEW,0,0,"");
               }
               break;
            case "TOOL_DELETE":
               AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_DELETE);
               break;
            case "ACTION_DELETE_SELECTED":
               if(AngryBirdsSocial.smLevelMain.mLevelEditor.mSelectedTool == LevelEditor.SELECTED_TOOL_SELECT && AngryBirdsSocial.smLevelMain.mLevelEditor.mSelectedObjects.length > 0)
               {
                  AngryBirdsSocial.smLevelMain.mLevelEditor.addAction(LevelEditor.ACTION_SELECTED_DELETE,0,0,"");
               }
               break;
            case "DO_PHYSICS":
               if(AngryBirdsSocial.smLevelMain.mLevelEditor.mSelectedTool != LevelEditor.SELECTED_TOOL_PLAY)
               {
                  AngryBirdsSocial.smLevelMain.mLevelEditor.togglePhysics();
               }
               break;
            case "ACTION_UNDO":
               if(AngryBirdsSocial.smLevelMain.mLevelEditor.mSelectedTool != LevelEditor.SELECTED_TOOL_PLAY)
               {
                  Log.log("UNDO");
                  AngryBirdsSocial.smLevelMain.mLevelEditor.addAction(LevelEditor.ACTION_UNDO,0,0,"");
               }
               break;
            case "TOP_BAR_BIRD_VIEW":
               this.goToSlingshotView();
               break;
            case "TOP_BAR_PIG_VIEW":
               this.goToCastleView();
               break;
            case "TOP_BAR_ZOOM_IN":
               AngryBirdsSocial.smLevelMain.mLevelCamera.adjustManualScale(true);
               break;
            case "TOP_BAR_ZOOM_OUT":
               AngryBirdsSocial.smLevelMain.mLevelCamera.adjustManualScale(false);
               break;
            case "TOP_BAR_OPEN_CAMERA_POPUP":
               break;
            case "PUBLISH":
               if((_loc4_ = AngryBirdsSocial.smLevelMain.mLevelEditor.checkLevelValidity()) != "")
               {
                  AngryBirdsSocial.smLevelMain.addFloatingText(_loc4_,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2 - 10,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 + 5,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
                  (_loc6_ = mUIView.getItemByName("Movieclip_TestPlayHighlight") as UIMovieClipRovio).PlayAt(2);
               }
               else if(AngryBirdsSocial.smLevelMain.mLevelEditor.mSelectedTool != LevelEditor.SELECTED_TOOL_PLAY)
               {
                  this.goToCastleView();
                  AngryBirdsSocial.smLevelMain.mLevelCamera.updateCamera(99999,null);
                  (mUIView.getItemByName("Popup_Editor_PublishLevel") as UIPopUpRovio).open();
                  (mUIView.getItemByName("MovieClip_PublishLevel_LevelThumbnail") as UIMovieClipRovio).changeMovieClip(AngryBirdsSocial.smLevelMain.mLevelEditor.createScreenshotMovieClip());
                  mUIView.setText("x " + AngryBirdsSocial.smLevelMain.mLevelEditor.calculateLevelCost(),"TextField_PublishLevel_LevelCost");
                  if(AngryBirdsSocial.USER_INFO.displayName.length > 0)
                  {
                     mUIView.setText(AngryBirdsSocial.USER_INFO.displayName + "\'s level","TextField_PublishLevel_LevelName");
                  }
               }
               break;
            case "OPEN_FILE_DROP_DOWN":
               break;
            case "PLAY_LEVEL":
               if((_loc5_ = AngryBirdsSocial.smLevelMain.mLevelEditor.checkLevelValidity(false)) != "")
               {
                  AngryBirdsSocial.smLevelMain.addFloatingText(_loc5_,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionXB2 - 10,AngryBirdsSocial.smLevelMain.mLevelEditor.mMousePositionYB2 + 5,1500,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,0);
               }
               else
               {
                  AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView = LevelEditor.EDITOR_VIEW_CASTLE;
                  this.setActiveView("TEST_PLAY_VIEW");
                  AngryBirdsSocial.smLevelMain.mLevelEditor.updateAutoCameraCoordinates();
                  AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_PLAY);
               }
               break;
            case "STOP_TEST_PLAY":
               AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView = LevelEditor.EDITOR_VIEW_CASTLE;
               this.setActiveView("MAIN_VIEW");
               AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_SELECT);
               this.goToCastleView();
               break;
            case "DROPDOWN_CAMERA_SET_CAMERA":
               AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_CAMERA);
               this.mUIView.setItemVisibility("Container_CameraDropDown",false);
               this.setDefineCameraMode(true);
               break;
            case "DROPDOWN_CAMERA_AUTO_CAMERA":
               this.mUIView.setItemVisibility("Container_CameraDropDown",false);
               AngryBirdsSocial.smLevelMain.mLevelEditor.setAutoCamera(true);
               if(AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE)
               {
                  this.goToCastleView();
               }
               else
               {
                  this.goToSlingshotView();
               }
               Log.log("Switching auto camera...");
               break;
            case "DROPDOWN_FILE_SAVE":
               this.mUIView.setItemVisibility("Container_FileDropDown",false);
               AngryBirdsSocial.smLevelMain.mLevelEditor.createLevelXML("Default placeholder level",true);
               (this.mUIView.getItemByName("Popup_Editor_LevelSaved") as UIPopUpRovio).open();
               AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelSaved = true;
               break;
            case "DROPDOWN_FILE_LOAD_LEVEL":
               this.mUIView.setItemVisibility("Container_FileDropDown",false);
               (this.mUIView.getItemByName("Popup_Editor_LoadLevel") as UIPopUpRovio).open();
               break;
            case "DROPDOWN_FILE_NEW_LEVEL":
               this.mUIView.setItemVisibility("Container_FileDropDown",false);
               mNextState = StateLevelEditorStart.STATE_NAME;
               break;
            case "POPUP_SET_CAMERA_CONFIRM":
               break;
            case "POPUP_SET_CAMERA_ZOOM_OUT":
               AngryBirdsSocial.smLevelMain.mLevelCamera.adjustManualScale(false);
               break;
            case "POPUP_SET_CAMERA_ZOOM_IN":
               AngryBirdsSocial.smLevelMain.mLevelCamera.adjustManualScale(true);
               break;
            case "POPUP_SET_CAMERA_CLOSE":
               this.setDefineCameraMode(false);
               break;
            case "POPUP_CAMERA_CONFIRMATION_CLOSE":
               break;
            case "POPUP_CAMERA_CONFIRMATION_CONFIRM":
               AngryBirdsSocial.smLevelMain.mLevelEditor.setAutoCamera(false);
               if(AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE)
               {
                  AngryBirdsSocial.smLevelMain.mLevelCamera.setCameraCastle();
                  this.goToCastleView();
               }
               else
               {
                  AngryBirdsSocial.smLevelMain.mLevelCamera.setCameraSlingshot();
                  this.goToSlingshotView();
               }
               (this.mUIView.getItemByName("Popup_Editor_SetCameraConfirmation") as UIPopUpRovio).close();
               this.setDefineCameraMode(false);
               break;
            case "POPUP_PUBLISH_LEVEL_PUBLISH":
               (this.mUIView.getItemByName("Popup_Editor_PublishLevel") as UIPopUpRovio).close();
               AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelName = mUIView.getText("TextField_PublishLevel_LevelName");
               if(AngryBirdsSocial.USER.name)
               {
                  AngryBirdsSocial.smLevelMain.mLevelEditor.publishLevel();
               }
               else
               {
                  AngryBirdsSocial.smLevelMain.mLevelEditor.createLevelXML(AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelName);
               }
               (this.mUIView.getItemByName("Popup_Editor_LevelPublished") as UIPopUpRovio).open();
               mUIView.setText(AngryBirdsSocial.smLevelMain.mLevelEditor.mLevelName + " is now public","TextField_LevelPublished_LevelName");
               break;
            case "POPUP_PUBLISH_LEVEL_CLOSE":
               break;
            case "POPUP_LEVEL_PUBLISHED_CLOSE":
               break;
            case "POPUP_LEVEL_PUBLISHED_PLAY":
               (this.mUIView.getItemByName("Popup_Editor_LevelPublished") as UIPopUpRovio).close();
               break;
            case "POPUP_LEVEL_PUBLISHED_SHARE":
               (this.mUIView.getItemByName("Popup_Editor_LevelPublished") as UIPopUpRovio).close();
               break;
            case "POPUP_LEVEL_SAVED_CLOSE":
               break;
            case "POPUP_LOAD_LEVEL_CLOSE":
               break;
            case "EDITOR_REPEATER_ITEMS_MOUSEOVER":
               break;
            case "EDITOR_REPEATER_TABS_MOUSEOVER":
               break;
            case "BOTTOM_EXTEND_LEVEL":
               break;
            case "BOTTOM_SELECT_THEME":
               break;
            case "POPUP_THEMESELECT_CLOSE":
               break;
            case "POPUP_LEVELEXTEND_CONFIRM":
               (mUIView.getItemByName("Popup_Editor_LevelExtend") as UIPopUpRovio).close();
               AngryBirdsSocial.smLevelMain.mLevelCamera.setLevelExtension(AngryBirdsSocial.smLevelMain.mLevelCamera.mLevelExtension + 1);
               if(AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_CASTLE)
               {
                  this.goToCastleView();
               }
               else if(AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView == LevelEditor.EDITOR_VIEW_SLINGSHOT)
               {
                  this.goToSlingshotView();
               }
               AngryBirdsSocial.smLevelMain.addFloatingText("Level Expanded!",AngryBirdsSocial.smLevelMain.mLevelCamera.mXcenterB2target,AngryBirdsSocial.smLevelMain.mLevelCamera.mYcenterB2target,3000,LevelParticle.PARTICLE_MATERIAL_TEXT_WHITE,0,-1);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!this.isPopUpVisible())
         {
            AngryBirdsSocial.smLevelMain.keyDown(param1);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!this.isPopUpVisible())
         {
            AngryBirdsSocial.smLevelMain.keyUp(param1);
         }
      }
      
      public function isPopUpVisible() : Boolean
      {
         return mUIView.hasVisiblePopup();
      }
      
      public function tabCatagorySelected(param1:String) : void
      {
         AngryBirdsSocial.smLevelMain.mLevelEditor.catagorySelected(param1);
      }
      
      public function tabMaterialItemSelected(param1:String) : void
      {
         AngryBirdsSocial.smLevelMain.mLevelEditor.materialSelected(param1);
      }
      
      public function changeLevelBackgroundActionRequest(param1:String) : void
      {
         AngryBirdsSocial.smLevelMain.mLevelEditor.addAction(LevelEditor.ACTION_SWITCH_BACKGROUND,0,0,param1);
      }
      
      private function setDefineCameraMode(param1:Boolean) : void
      {
         this.mUIView.setItemVisibility("Container_Toolbar",!param1);
         this.mUIView.setItemVisibility("Container_Bottom",!param1);
         this.mUIView.setItemVisibility("Container_EditorTop",!param1);
         var _loc2_:UIPopUpRovio = this.mUIView.getItemByName("Popup_Editor_CameraSettingView") as UIPopUpRovio;
         if(param1)
         {
            _loc2_.open();
         }
         else
         {
            _loc2_.close();
         }
      }
      
      public function setActiveView(param1:String) : void
      {
         switch(param1)
         {
            case "MAIN_VIEW":
               this.mUIView.activateView();
               this.mEditorPlayView.deactivateView();
               break;
            case "TEST_PLAY_VIEW":
               this.mUIView.deactivateView();
               this.mEditorPlayView.activateView();
         }
      }
      
      public function goToCastleView() : void
      {
         AngryBirdsSocial.smLevelMain.mLevelEditor.updateAutoCameraCoordinates();
         AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView = LevelEditor.EDITOR_VIEW_CASTLE;
         AngryBirdsSocial.smLevelMain.mLevelCamera.goToCastleView(true);
         (mUIView as ViewLevelEditor).setRepeaterVisibleTab("Repeater_Tabs","Repeater_Tabs_Tab_" + LevelEditor.EDITOR_VIEW_CASTLE);
         AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_SELECT);
      }
      
      public function goToSlingshotView() : void
      {
         AngryBirdsSocial.smLevelMain.mLevelEditor.updateAutoCameraCoordinates();
         AngryBirdsSocial.smLevelMain.mLevelEditor.mEditorView = LevelEditor.EDITOR_VIEW_SLINGSHOT;
         AngryBirdsSocial.smLevelMain.mLevelCamera.goToBirdView(true);
         (mUIView as ViewLevelEditor).setRepeaterVisibleTab("Repeater_Tabs","Repeater_Tabs_Tab_" + LevelEditor.EDITOR_VIEW_SLINGSHOT);
         AngryBirdsSocial.smLevelMain.mLevelEditor.setSelectedTool(LevelEditor.SELECTED_TOOL_SELECT);
      }
   }
}
