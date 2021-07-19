package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.ui.ViewLevelEditorStart;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import flash.display.MovieClip;
   
   public class StateLevelEditorStart extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEditorStart";
      
      public static var smOpenWithLevelList:Boolean = false;
       
      
      public var mLoadLevelId:String = "";
      
      public var mLevelData:Array = null;
      
      public var mNumSlots:Number = -1;
      
      public var mSlotUnlockCost:Number = -1;
      
      public var mDeleteModeEnabled:Boolean = false;
      
      public var mLevelToDelete:String = null;
      
      public var mLevelDataResponse:Object = null;
      
      public function StateLevelEditorStart(param1:Boolean = false, param2:String = "LevelEditorStart")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelEditorStart(this);
         mUIView.init(null);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.mLoadLevelId = "";
         this.loadData();
         mUIView.getItemByName("Button_EditorStart_Build").setVisibility(true);
         mUIView.getItemByName("Button_EditorStart_BuildFromScratch").setVisibility(false);
         mUIView.getItemByName("Button_EditorStart_SelectTemplate").setVisibility(false);
         mUIView.getItemByName("Popup_EditorStart_LoadTemplate").setVisibility(false);
         (mUIView.getItemByName("MovieClip_EditorStart_BadPiggiesLogo") as UIMovieClipRovio).PlayAt(1);
         MouseCursorController.setCursor("");
         this.mDeleteModeEnabled = false;
         (mUIView.getItemByName("Button_Bulldozer") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
         if(smOpenWithLevelList)
         {
            this.openLevelList();
         }
         smOpenWithLevelList = false;
      }
      
      public function loadData() : void
      {
         this.mLevelData = null;
         this.mLevelDataResponse = null;
         this.mNumSlots = -1;
         this.mSlotUnlockCost = -1;
         if(AngryBirdsSocial.USER.loggedIn)
         {
            AngryBirdsServer.getLevelsForUser(this.getLevelsResponse);
            AngryBirdsServer.getSlotInfo(this.getSlotsResponse);
         }
         else
         {
            this.mLevelDataResponse = new Object();
            this.getLevelsResponse(new Object());
            this.getSlotsResponse(null);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.mLevelData = null;
         this.mDeleteModeEnabled = false;
         super.deActivate();
         this.mUIView.clearPopups();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:String = null;
         if(param2.length > 0 && param3 is UIRepeaterButtonRovio)
         {
            if((param3 as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_TemplateSelection")
            {
               StateLevelLoad.prepareToLoadEditorTemplate(param2);
               this.mNextState = StateLevelLoad.STATE_NAME;
               return;
            }
            if((param3 as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection")
            {
               if(param2.indexOf("PRIVATE") == 0)
               {
                  if(!this.mDeleteModeEnabled)
                  {
                     _loc4_ = this.mLevelData[param2].levelKey;
                     StateLevelLoad.prepareToLoadExternalLevel(_loc4_);
                     AngryBirdsSocial.smEditorMode = true;
                     AngryBirdsSocial.smReload = true;
                     AngryBirdsSocial.smReloadStateName = StateLevelLoad.STATE_NAME;
                     return;
                  }
                  mUIView.setText("Are you sure tou wnat to delete " + this.mLevelData[param2].levelName + "?","TextField_ConfirmDelete");
                  mUIView.getItemByName("Popup_EditorStart_DeleteLevel").setVisibility(true);
                  this.mLevelToDelete = this.mLevelData[param2].levelKey;
               }
               else if(param2.indexOf("PUBLISHED") == 0)
               {
                  if(this.mDeleteModeEnabled)
                  {
                     mUIView.setText("Are you sure tou wnat to delete " + this.mLevelData[param2].levelName + "?","TextField_ConfirmDelete");
                     mUIView.getItemByName("Popup_EditorStart_DeleteLevel").setVisibility(true);
                     this.mLevelToDelete = this.mLevelData[param2].levelKey;
                  }
                  else
                  {
                     mUIView.getItemByName("Popup_EditorStart_LevelStats").setVisibility(true);
                     mUIView.getItemByName("MovieClip_LevelStats_Loading").setVisibility(true);
                     mUIView.getItemByName("TextField_LevelStats").setVisibility(false);
                     AngryBirdsServer.getLevelStats(this.mLevelData[param2].levelKey,this.levelStatsResponse);
                     Log.log("show stats for level.");
                  }
               }
               else if(param2.indexOf("LOCKED") == 0)
               {
                  mUIView.getItemByName("Popup_EditorStart_UnlockPlot").setVisibility(true);
                  mUIView.setText("x " + this.getUnlockPlotCost(),"TextField_UnlockPlot_Cost");
               }
               else if(param2.indexOf("EMPTY") == 0)
               {
                  mUIView.getItemByName("Popup_EditorStart_LoadTemplate").setVisibility(true);
                  mUIView.getItemByName("Popup_EditorStart_LoadLevel").setVisibility(false);
               }
            }
         }
         switch(param2)
         {
            case "EDITOR_START_BUILD":
               this.openLevelList();
               break;
            case "EDITOR_START_SELECT_TEMPLATE":
               mUIView.getItemByName("Popup_EditorStart_LoadTemplate").setVisibility(true);
               break;
            case "POPUP_LOAD_TEMPLATE_CLOSE":
               mUIView.getItemByName("Popup_EditorStart_LoadTemplate").setVisibility(false);
               mUIView.getItemByName("Popup_EditorStart_LoadLevel").setVisibility(true);
               break;
            case "POPUP_LOAD_LEVEL_CLOSE":
               mUIView.getItemByName("Popup_EditorStart_LoadLevel").setVisibility(false);
               this.setDeleteMode(false);
               break;
            case "EDITOR_START_LOAD_TEMPLATE":
               StateLevelLoad.prepareToLoadEditorTemplate("LEVEL_TEMPLATE_1");
               this.mNextState = StateLevelLoad.STATE_NAME;
               break;
            case "POPUP_LOAD_LEVEL_BULLDOZER":
               this.setDeleteMode(!this.mDeleteModeEnabled);
               (mUIView.getItemByName("Button_Bulldozer") as UIButtonRovio).setComponentState(!!this.mDeleteModeEnabled ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
               break;
            case "POPUP_UNLOCK_PLOT_OK":
               this.unlockPlot();
               this.initLevelListLoad();
               mUIView.getItemByName("Popup_EditorStart_UnlockPlot").setVisibility(false);
               break;
            case "POPUP_UNLOCK_PLOT_CLOSE":
               mUIView.getItemByName("Popup_EditorStart_UnlockPlot").setVisibility(false);
               break;
            case "POPUP_DELETE_LEVEL_DELETE":
               this.deleteLevel(this.mLevelToDelete);
               this.initLevelListLoad();
               mUIView.getItemByName("Popup_EditorStart_DeleteLevel").setVisibility(false);
               break;
            case "POPUP_DELETE_LEVEL_CANCEL":
               this.mLevelToDelete = null;
               mUIView.getItemByName("Popup_EditorStart_DeleteLevel").setVisibility(false);
               break;
            case "POPUP_DELETE_LEVEL_CLOSE":
               this.mLevelToDelete = null;
               mUIView.getItemByName("Popup_EditorStart_DeleteLevel").setVisibility(false);
               break;
            case "POPUP_CLOSE_STATS":
               mUIView.getItemByName("Popup_EditorStart_LevelStats").setVisibility(false);
         }
      }
      
      public function initLevelListLoad() : void
      {
         mUIView.getItemByName("MovieClip_LoadingIcon").setVisibility(true);
         (mUIView.getItemByName("MovieClip_LoadingIcon") as UIMovieClipRovio).PlayAt(1);
         mUIView.getItemByName("Repeater_LevelSelection").setVisibility(false);
      }
      
      public function openLevelList() : void
      {
         if(this.mLevelData == null)
         {
            this.initLevelListLoad();
         }
         else
         {
            mUIView.getItemByName("Repeater_LevelSelection").setVisibility(true);
         }
         mUIView.getItemByName("Popup_EditorStart_LoadLevel").setVisibility(true);
      }
      
      public function getLevelsResponse(param1:Object) : void
      {
         this.mLevelDataResponse = param1;
         if(this.mNumSlots != -1)
         {
            this.initLevelsRepeater();
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var _loc10_:MovieClip = null;
         var _loc11_:String = null;
         var _loc12_:Object = null;
         var _loc13_:XML = null;
         var _loc14_:String = null;
         var _loc1_:Class = AssetCache.getAssetFromCache("Button_EditorStart_PublishedLevel");
         var _loc2_:Class = AssetCache.getAssetFromCache("Button_EditorStart_UnpublishedLevel");
         var _loc3_:Class = AssetCache.getAssetFromCache("Button_EditorStart_EmptyPlot");
         var _loc4_:Class = AssetCache.getAssetFromCache("Button_EditorStart_UnlockPlot");
         this.mLevelData = new Array();
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:String = "";
         var _loc7_:int = 0;
         var _loc8_:Number = 1;
         while(_loc8_ < 100)
         {
            if(this.mLevelDataResponse["level-" + _loc8_] == null)
            {
               if(this.mNumSlots < _loc8_ - 1)
               {
                  this.mNumSlots = _loc8_ - 1;
               }
               break;
            }
            _loc8_++;
         }
         var _loc9_:Number = 1;
         while(_loc9_ <= this.mNumSlots + (this.mSlotUnlockCost > 0 ? 1 : 0))
         {
            _loc11_ = "level-" + _loc9_;
            if((_loc12_ = this.mLevelDataResponse[_loc11_]) == null)
            {
               if(_loc9_ <= this.mNumSlots)
               {
                  _loc10_ = new _loc3_();
                  _loc11_ = "empty-" + _loc9_;
                  _loc6_ = "Create";
               }
               else
               {
                  _loc10_ = new _loc4_();
                  _loc11_ = "locked-" + _loc9_;
                  _loc6_ = "Unlock";
               }
            }
            else
            {
               _loc7_++;
               if(_loc12_.published == true)
               {
                  _loc10_ = new _loc1_();
                  _loc11_ = "published-" + _loc9_;
                  _loc6_ = "View stats";
               }
               else
               {
                  _loc10_ = new _loc2_();
                  _loc11_ = "private-" + _loc9_;
                  _loc6_ = "Edit";
               }
               _loc10_.TextField_LevelName.text = _loc12_.levelName;
               if(_loc12_.screenShot != null)
               {
                  _loc14_ = _loc12_.screenShot.toString();
                  _loc10_.addChildAt(LevelEditor.decodeImageData(_loc14_),0);
               }
            }
            this.mLevelData[_loc11_.toUpperCase()] = _loc12_;
            (_loc13_ = <Button/>).@name = _loc11_;
            _loc13_.@MouseUp = _loc11_;
            _loc13_.@Tooltip = _loc6_;
            _loc5_[0].push(new Array(_loc13_,null,_loc10_));
            _loc9_++;
         }
         _loc5_[0].sort(this.levelSorter);
         (mUIView.getItemByName("Repeater_LevelSelection") as UIRepeaterRovio).loadTabs(_loc5_);
         (mUIView.getItemByName("Repeater_LevelSelection") as UIRepeaterRovio).setVisibleTab("Repeater_LevelSelection_Tab_0");
         mUIView.getItemByName("MovieClip_LoadingIcon").setVisibility(false);
         mUIView.getItemByName("Repeater_LevelSelection").setVisibility(true);
         mUIView.getItemByName("Button_Bulldozer").setVisibility(_loc7_ != 0);
         this.setDeleteMode(this.mDeleteModeEnabled);
      }
      
      public function getSlotsResponse(param1:Object) : void
      {
         if(param1 != null)
         {
            this.mNumSlots = param1.slots;
            if(param1.unlockPrice)
            {
               this.mSlotUnlockCost = param1.unlockPrice;
            }
            else
            {
               this.mSlotUnlockCost = param1["unlock price"];
            }
         }
         else
         {
            this.mNumSlots = 2;
            this.mSlotUnlockCost = -1;
         }
         if(this.mLevelDataResponse != null)
         {
            this.initLevelsRepeater();
         }
      }
      
      public function unlockPlot() : void
      {
         AngryBirdsServer.unlockLevelSlot(this.unlockPlotResponse);
      }
      
      public function unlockPlotResponse(param1:Object) : void
      {
         this.initLevelListLoad();
         this.loadData();
         AngryBirdsSocial.updateMetaGameData();
      }
      
      public function deleteLevel(param1:String) : void
      {
         AngryBirdsServer.deleteLevel(param1,this.deleteLevelResponse);
      }
      
      public function deleteLevelResponse(param1:Object) : void
      {
         this.initLevelListLoad();
         this.loadData();
      }
      
      public function levelSorter(param1:Object, param2:Object) : int
      {
         var _loc3_:Array = ["EMPTY","PRIVATE","PUBLISHED","LOCKED"];
         var _loc4_:String = (param1[0] as XML).@name.toUpperCase();
         var _loc5_:String = (param2[0] as XML).@name.toUpperCase();
         var _loc6_:Number = 3;
         var _loc7_:Number = 3;
         var _loc8_:Number = 0;
         while(_loc8_ < _loc3_.length)
         {
            if(_loc4_.indexOf(_loc3_[_loc8_]) == 0)
            {
               _loc6_ = _loc8_;
            }
            if(_loc5_.indexOf(_loc3_[_loc8_]) == 0)
            {
               _loc7_ = _loc8_;
            }
            _loc8_++;
         }
         return _loc6_ - _loc7_;
      }
      
      public function getUnlockPlotCost() : int
      {
         return this.mSlotUnlockCost;
      }
      
      public function setDeleteMode(param1:Boolean) : void
      {
         var _loc3_:UIButtonRovio = null;
         this.mDeleteModeEnabled = param1;
         var _loc2_:UIButtonGroupRovio = (mUIView.getItemByName("Repeater_LevelSelection") as UIRepeaterRovio).getButtonGroupByName("REPEATER_LEVELSELECTION_TAB_0");
         (mUIView.getItemByName("Button_Bulldozer") as UIButtonRovio).setComponentState(!!this.mDeleteModeEnabled ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
         for each(_loc3_ in _loc2_.mButtons)
         {
            if(param1)
            {
               _loc3_.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
               if(_loc3_.mName.indexOf("private") == 0 || _loc3_.mName.indexOf("published") == 0)
               {
                  _loc3_.setTooltipText("Delete...");
               }
               else
               {
                  _loc3_.setTooltipText("");
               }
            }
            else
            {
               _loc3_.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
               if(_loc3_.mName.indexOf("private") == 0)
               {
                  _loc3_.setTooltipText("Edit");
               }
               else if(_loc3_.mName.indexOf("published") == 0)
               {
                  _loc3_.setTooltipText("View stats");
               }
               else if(_loc3_.mName.indexOf("empty") == 0)
               {
                  _loc3_.setTooltipText("Create");
               }
               else
               {
                  _loc3_.setTooltipText("Unlock");
               }
            }
         }
      }
      
      public function levelStatsResponse(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc2_:String = "Stats:\n\n";
         var _loc3_:Object = param1.stats;
         for(_loc4_ in _loc3_)
         {
            _loc2_ += _loc4_.toString() + " : " + _loc3_[_loc4_] + "\n";
         }
         mUIView.setText(_loc2_,"TextField_LevelStats");
         mUIView.getItemByName("TextField_LevelStats").setVisibility(true);
         mUIView.getItemByName("MovieClip_LevelStats_Loading").setVisibility(false);
      }
   }
}
