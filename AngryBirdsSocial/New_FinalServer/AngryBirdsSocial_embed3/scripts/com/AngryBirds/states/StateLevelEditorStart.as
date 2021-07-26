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
      
      public function StateLevelEditorStart(initState:Boolean = false, name:String = "LevelEditorStart")
      {
         super(initState,name);
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
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
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
         (mUIView.getItemByName("Repeater_LevelSelection") as UIRepeaterRovio).clearTabs();
         (mUIView.getItemByName("Repeater_TemplateSelection") as UIRepeaterRovio).resetSelections();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var levelKey:String = null;
         if(eventName.length > 0 && component is UIRepeaterButtonRovio)
         {
            if((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_TemplateSelection")
            {
               StateLevelLoad.prepareToLoadEditorTemplate(eventName);
               this.mNextState = StateLevelLoad.STATE_NAME;
               return;
            }
            if((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection")
            {
               if(eventName.indexOf("PRIVATE") == 0)
               {
                  if(!this.mDeleteModeEnabled)
                  {
                     levelKey = this.mLevelData[eventName].levelKey;
                     StateLevelLoad.prepareToLoadExternalLevel(levelKey);
                     AngryBirdsSocial.smEditorMode = true;
                     AngryBirdsSocial.smReload = true;
                     AngryBirdsSocial.smReloadStateName = StateLevelLoad.STATE_NAME;
                     return;
                  }
                  mUIView.setText("Are you sure tou wnat to delete " + this.mLevelData[eventName].levelName + "?","TextField_ConfirmDelete");
                  mUIView.getItemByName("Popup_EditorStart_DeleteLevel").setVisibility(true);
                  this.mLevelToDelete = this.mLevelData[eventName].levelKey;
               }
               else if(eventName.indexOf("PUBLISHED") == 0)
               {
                  if(this.mDeleteModeEnabled)
                  {
                     mUIView.setText("Are you sure tou wnat to delete " + this.mLevelData[eventName].levelName + "?","TextField_ConfirmDelete");
                     mUIView.getItemByName("Popup_EditorStart_DeleteLevel").setVisibility(true);
                     this.mLevelToDelete = this.mLevelData[eventName].levelKey;
                  }
                  else
                  {
                     mUIView.getItemByName("Popup_EditorStart_LevelStats").setVisibility(true);
                     mUIView.getItemByName("MovieClip_LevelStats_Loading").setVisibility(true);
                     mUIView.getItemByName("TextField_LevelStats").setVisibility(false);
                     AngryBirdsServer.getLevelStats(this.mLevelData[eventName].levelKey,this.levelStatsResponse);
                     Log.log("show stats for level.");
                  }
               }
               else if(eventName.indexOf("LOCKED") == 0)
               {
                  mUIView.getItemByName("Popup_EditorStart_UnlockPlot").setVisibility(true);
                  mUIView.setText("x " + this.getUnlockPlotCost(),"TextField_UnlockPlot_Cost");
               }
               else if(eventName.indexOf("EMPTY") == 0)
               {
                  mUIView.getItemByName("Popup_EditorStart_LoadTemplate").setVisibility(true);
                  mUIView.getItemByName("Popup_EditorStart_LoadLevel").setVisibility(false);
               }
            }
         }
         switch(eventName)
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
      
      public function getLevelsResponse(obj:Object) : void
      {
         this.mLevelDataResponse = obj;
         if(this.mNumSlots != -1)
         {
            this.initLevelsRepeater();
         }
      }
      
      public function initLevelsRepeater() : void
      {
         var clip:MovieClip = null;
         var key:String = null;
         var level:Object = null;
         var but:XML = null;
         var data:String = null;
         var publishedCls:Class = AssetCache.getAssetFromCache("Button_EditorStart_PublishedLevel");
         var privateCls:Class = AssetCache.getAssetFromCache("Button_EditorStart_UnpublishedLevel");
         var freeCls:Class = AssetCache.getAssetFromCache("Button_EditorStart_EmptyPlot");
         var lockedCls:Class = AssetCache.getAssetFromCache("Button_EditorStart_UnlockPlot");
         this.mLevelData = new Array();
         var list:Array = new Array();
         list[0] = new Array();
         var tooltip:String = "";
         var numLevels:int = 0;
         for(var j:Number = 1; j < 100; j++)
         {
            if(this.mLevelDataResponse["level-" + j] == null)
            {
               if(this.mNumSlots < j - 1)
               {
                  this.mNumSlots = j - 1;
               }
               break;
            }
         }
         for(var i:Number = 1; i <= this.mNumSlots + (this.mSlotUnlockCost > 0 ? 1 : 0); i++)
         {
            key = "level-" + i;
            level = this.mLevelDataResponse[key];
            if(level == null)
            {
               if(i <= this.mNumSlots)
               {
                  clip = new freeCls();
                  key = "empty-" + i;
                  tooltip = "Create";
               }
               else
               {
                  clip = new lockedCls();
                  key = "locked-" + i;
                  tooltip = "Unlock";
               }
            }
            else
            {
               numLevels++;
               if(level.published == true)
               {
                  clip = new publishedCls();
                  key = "published-" + i;
                  tooltip = "View stats";
               }
               else
               {
                  clip = new privateCls();
                  key = "private-" + i;
                  tooltip = "Edit";
               }
               clip.TextField_LevelName.text = level.levelName;
               if(level.screenShot != null)
               {
                  data = level.screenShot.toString();
                  clip.addChildAt(LevelEditor.decodeImageData(data),0);
               }
            }
            this.mLevelData[key.toUpperCase()] = level;
            but = <Button/>;
            but.@name = key;
            but.@MouseUp = key;
            but.@Tooltip = tooltip;
            list[0].push(new Array(but,null,clip));
         }
         list[0].sort(this.levelSorter);
         (mUIView.getItemByName("Repeater_LevelSelection") as UIRepeaterRovio).loadTabs(list);
         (mUIView.getItemByName("Repeater_LevelSelection") as UIRepeaterRovio).setVisibleTab("Repeater_LevelSelection_Tab_0");
         mUIView.getItemByName("MovieClip_LoadingIcon").setVisibility(false);
         mUIView.getItemByName("Repeater_LevelSelection").setVisibility(true);
         mUIView.getItemByName("Button_Bulldozer").setVisibility(numLevels != 0);
         this.setDeleteMode(this.mDeleteModeEnabled);
      }
      
      public function getSlotsResponse(obj:Object) : void
      {
         if(obj != null)
         {
            this.mNumSlots = obj.slots;
            if(obj.unlockPrice)
            {
               this.mSlotUnlockCost = obj.unlockPrice;
            }
            else
            {
               this.mSlotUnlockCost = obj["unlock price"];
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
      
      public function unlockPlotResponse(obj:Object) : void
      {
         this.initLevelListLoad();
         this.loadData();
         AngryBirdsSocial.updateMetaGameData();
      }
      
      public function deleteLevel(key:String) : void
      {
         AngryBirdsServer.deleteLevel(key,this.deleteLevelResponse);
      }
      
      public function deleteLevelResponse(obj:Object) : void
      {
         this.initLevelListLoad();
         this.loadData();
      }
      
      public function levelSorter(obj1:Object, obj2:Object) : int
      {
         var tagOrder:Array = ["EMPTY","PRIVATE","PUBLISHED","LOCKED"];
         var name1:String = (obj1[0] as XML).@name.toUpperCase();
         var name2:String = (obj2[0] as XML).@name.toUpperCase();
         var priority1:Number = 3;
         var priority2:Number = 3;
         for(var i:Number = 0; i < tagOrder.length; i++)
         {
            if(name1.indexOf(tagOrder[i]) == 0)
            {
               priority1 = i;
            }
            if(name2.indexOf(tagOrder[i]) == 0)
            {
               priority2 = i;
            }
         }
         return priority1 - priority2;
      }
      
      public function getUnlockPlotCost() : int
      {
         return this.mSlotUnlockCost;
      }
      
      public function setDeleteMode(newMode:Boolean) : void
      {
         var btn:UIButtonRovio = null;
         this.mDeleteModeEnabled = newMode;
         var buttons:UIButtonGroupRovio = (mUIView.getItemByName("Repeater_LevelSelection") as UIRepeaterRovio).getButtonGroupByName("REPEATER_LEVELSELECTION_TAB_0");
         (mUIView.getItemByName("Button_Bulldozer") as UIButtonRovio).setComponentState(!!this.mDeleteModeEnabled ? UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT : UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
         for each(btn in buttons.mButtons)
         {
            if(newMode)
            {
               btn.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
               if(btn.mName.indexOf("private") == 0 || btn.mName.indexOf("published") == 0)
               {
                  btn.setTooltipText("Delete...");
               }
               else
               {
                  btn.setTooltipText("");
               }
            }
            else
            {
               btn.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
               if(btn.mName.indexOf("private") == 0)
               {
                  btn.setTooltipText("Edit");
               }
               else if(btn.mName.indexOf("published") == 0)
               {
                  btn.setTooltipText("View stats");
               }
               else if(btn.mName.indexOf("empty") == 0)
               {
                  btn.setTooltipText("Create");
               }
               else
               {
                  btn.setTooltipText("Unlock");
               }
            }
         }
      }
      
      public function levelStatsResponse(obj:Object) : void
      {
         var key:* = null;
         var tmp:String = "Stats:\n\n";
         var stats:Object = obj.stats;
         for(key in stats)
         {
            tmp += key.toString() + " : " + stats[key] + "\n";
         }
         mUIView.setText(tmp,"TextField_LevelStats");
         mUIView.getItemByName("TextField_LevelStats").setVisibility(true);
         mUIView.getItemByName("MovieClip_LevelStats_Loading").setVisibility(false);
      }
   }
}
