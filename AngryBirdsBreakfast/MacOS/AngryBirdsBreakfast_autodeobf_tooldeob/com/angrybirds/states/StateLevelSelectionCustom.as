package com.angrybirds.states
{
   import com.angrybirds.user.UserManager;
   import com.rovio.utils.DynamicLanguage;
   import com.angrybirds.ui.sidebar.HighscoreSidebar;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.popups.PopupLogout;
   import com.angrybirds.AngryBirdsEngine;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelSelectionCustom extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
       
      
      public function StateLevelSelectionCustom(param1:LevelManager, param2:LocalizationManager, param3:LevelItemManager, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function getViewXML() : XML
      {
         return AngryBirdsCustom.changeXMLWitdh(ViewXMLLibrary.mLibrary.Views.ViewLevelSelectionCustom[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(this.getViewXML());
         mUIView.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         UserManager.updateLocalUserData();
         AngryBirdsEngine.smLevelMain.setVisible(false);
         AngryBirdsBase.singleton.popupManager.closeAllPopups();
         this.updateLevelButtonStates();
         mUIView.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         mUIView.getItemByName("MovieClip_SoundOff").mClip.visible = !(AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
         (AngryBirdsBase.singleton as AngryBirdsCustom).playThemeMusic();
         mLevelManager.resetCurrentLevel();
         mLevelManager.resetPreviousLevel();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      private function updateLevelButtonStates() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.LEVEL_ID_LIST.length)
         {
            _loc2_ = mUIView.getItemByName("Button_Level" + _loc1_).mClip;
            _loc2_.TextField_LevelNum.text.mouseEnabled = false;
            if(UserManager.isLevelUnlocked(HighscoreSidebar.LEVEL_ID_LIST[_loc1_ - 1]))
            {
               (mUIView.getItemByName("Button_Level" + _loc1_) as UIButtonRovio).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.LEVEL_NAMES[_loc1_ - 1];
               _loc3_ = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(HighscoreSidebar.LEVEL_ID_LIST[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (mUIView.getItemByName("Button_Level" + _loc1_) as UIButtonRovio).mClip.useHandCursor = false;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.LEVEL_NAMES[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.enterLevel("1-1");
               break;
            case "C1_LEVEL_2":
               this.enterLevel("1-2");
               break;
            case "C1_LEVEL_3":
               this.enterLevel("1-3");
               break;
            case "C1_LEVEL_4":
               this.enterLevel("1-4");
               break;
            case "C1_LEVEL_5":
               this.enterLevel("1-5");
               break;
            case "C1_LEVEL_6":
               this.enterLevel("1-6");
               break;
            case "C1_LEVEL_7":
               this.enterLevel("1-7");
               break;
            case "BUTTON_BACK":
               (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setLanguageSelected(null);
               (AngryBirdsBase.singleton as AngryBirdsCustom).setPlayButtonPressed(false);
               setNextState(StateLanguageSelection.STATE_NAME);
               SoundEngine.playSound("Menu_Back");
               break;
            case "BUTTON_QUIT":
               AngryBirdsBase.singleton.popupManager.openPopup(new PopupLogout());
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "BUTTON_MUTE":
               (AngryBirdsBase.singleton as AngryBirdsCustom).toggleSoundsEnabled();
               this.updateMuteButtonState();
               break;
            case "BUTTON_CREDITS":
               this.enterCredits();
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "BUTTON_FULLSCREEN":
               (AngryBirdsBase.singleton as AngryBirdsCustom).switchFullscreen();
               SoundEngine.playSound("Menu_Confirm");
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               if(!(AngryBirdsBase.singleton as AngryBirdsCustom).isFullScreen())
               {
                  AngryBirdsBase.singleton.popupManager.openPopup(new PopupLogout());
                  SoundEngine.playSound("Menu_Confirm");
               }
         }
      }
      
      override public function updateMuteButtonState() : void
      {
         var _loc1_:Boolean = (AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
         mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!_loc1_);
         SoundEngine.playSound("Menu_Confirm");
      }
      
      private function enterLevel(param1:String) : void
      {
         if(UserManager.isLevelUnlocked(param1))
         {
            mLevelManager.loadLevel(param1);
            setNextState(StateCutScene.STATE_NAME);
            SoundEngine.playSound("Menu_Confirm");
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         DynamicLanguage.instance.updateTextFields(mUIView.container,"StateEpisodeSelection");
      }
      
      private function enterCredits() : void
      {
         var _loc1_:LevelManager = (AngryBirdsBase.singleton as AngryBirdsCustom).levelManager;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.SCROLLABLE_LEVEL_NAME));
         (AngryBirdsBase.singleton as AngryBirdsCustom).setNextState(StateLevelLoadCreditsCustom.STATE_NAME);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
   }
}
