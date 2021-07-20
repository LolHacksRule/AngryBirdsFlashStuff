package com.angrybirds.popups
{
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupLayerIndexType;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.angrybirds.states.StateLevelLoadClassic;
   import com.angrybirds.states.StateLevelSelectionCustom;
   import com.angrybirds.popup.tutorial.CustomTutorialMapping;
   import com.angrybirds.popup.tutorial.TutorialPopupManager;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.AngryBirdsEngine;
   import each.XMLFactory;
   
   public class PopupPause extends PopupCustom
   {
      
      private static var sPausePopupBin:Class = PopupPause_sPausePopupBin;
      
      private static const OFFSCREEN_X:Number = 250;
       
      
      private var mMenuTween:ISimpleTween = null;
      
      private var mOriginalMenuX:Number;
      
      private var mLevelName:String;
      
      public function PopupPause(param1:String)
      {
         mUseFadeLayer = true;
         mUseScaleEffect = false;
         super(PopupLayerIndexType.PAUSE_LAYER_INDEX,PopupPriorityType.DEFAULT,this.getViewXML());
         this.mLevelName = param1;
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = XMLFactory.fromOctetStreamClass(sPausePopupBin);
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.mOriginalMenuX = mContainer.getItemByName("Container_PauseMenu").x;
         if(this.mLevelName)
         {
            (mContainer.getItemByName("TextField_LevelName") as UITextFieldRovio).setText(this.mLevelName);
         }
         mCustomContainer.cacheAsBitmap = true;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               mUseFadeLayer = false;
               close();
               StateLevelLoadClassic.prepareToRestartLastLevel();
               AngryBirdsBase.singleton.setNextState(StateLevelLoadClassic.STATE_NAME);
               break;
            case "RESUME_LEVEL":
               this.closePressed();
               break;
            case "MENU":
               SoundEngine.stopSounds();
               AngryBirdsBase.singleton.setNextState(StateLevelSelectionCustom.STATE_NAME);
               mUseFadeLayer = false;
               close();
               break;
            case "MUTE":
               (AngryBirdsBase.singleton as AngryBirdsCustom).toggleSoundsEnabled();
               mContainer.getItemByName("MovieClip_SoundOff").mClip.visible = !(AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
               break;
            case "HELP":
               this.closePauseMenu();
               this.showTutorials();
               break;
            case "FULLSCREEN":
               (AngryBirdsBase.singleton as AngryBirdsCustom).switchFullscreen();
         }
      }
      
      override protected function updateMuteButtonState() : void
      {
         mContainer.getItemByName("MovieClip_SoundOff").mClip.visible = (AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
      }
      
      override protected function closePressed() : void
      {
         this.closePauseMenu();
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:TutorialPopupManager = AngryBirdsBase.singleton.tutorialPopupManager;
         var _loc2_:Vector.<String> = _loc1_.tutorialNameMapping.getTutorialNamesForMapping(CustomTutorialMapping.LEVEL_BIRDS);
         _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,true,null,true,true);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         mUseScaleEffect = false;
         super.show(param1);
         this.openPauseMenu();
         mContainer.getItemByName("MovieClip_SoundOff").mClip.visible = !(AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
      }
      
      private function openPauseMenu() : void
      {
         mContainer.getItemByName("Container_PauseMenu").x = this.mOriginalMenuX - OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         if(this.mMenuTween != null)
         {
            this.mMenuTween.stop();
         }
         this.mMenuTween = TweenManager.instance.createTween(mContainer.getItemByName("Container_PauseMenu"),{"x":this.mOriginalMenuX},null,0.25,TweenManager.EASING_CIRCULAR_OUT);
         this.mMenuTween.onComplete = this.onOpenPauseMenuTweenComplete;
         this.mMenuTween.play();
      }
      
      private function onOpenPauseMenuTweenComplete() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.disableTutorialButtonIfNoBirdsOrPigsLeft();
      }
      
      private function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (mContainer.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(param1);
         (mContainer.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(param1);
         (mContainer.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(param1);
         (mContainer.getItemByName("Button_Help") as UIButtonRovio).setEnabled(param1);
         (mContainer.getItemByName("Button_FullScreen") as UIButtonRovio).setEnabled(param1);
         (mContainer.getItemByName("Button_Mute") as UIButtonRovio).setEnabled(param1);
      }
      
      private function disableTutorialButtonIfNoBirdsOrPigsLeft() : void
      {
         if(!AngryBirdsEngine.smLevelMain.slingshot.birdsAvailable || !AngryBirdsEngine.smLevelMain.objects.isPigsAlive())
         {
            (mContainer.getItemByName("Button_Help") as UIButtonRovio).setEnabled(false,true);
            mContainer.getItemByName("Button_Help").mClip.alpha = 0.6;
         }
         else
         {
            (mContainer.getItemByName("Button_Help") as UIButtonRovio).setEnabled(true,true);
            mContainer.getItemByName("Button_Help").mClip.alpha = 1;
         }
      }
      
      private function closePauseMenu() : void
      {
         if(this.mMenuTween != null)
         {
            this.mMenuTween.stop();
         }
         hide();
         this.mMenuTween = TweenManager.instance.createTween(mContainer.getItemByName("Container_PauseMenu"),{"x":this.mOriginalMenuX - OFFSCREEN_X},null,0.2,TweenManager.EASING_CIRCULAR_IN);
         this.mMenuTween.play();
      }
   }
}
