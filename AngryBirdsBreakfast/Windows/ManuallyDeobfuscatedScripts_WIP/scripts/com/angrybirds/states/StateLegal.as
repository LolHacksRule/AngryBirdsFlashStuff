package com.angrybirds.states
{
   import com.rovio.utils.DynamicLanguage;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.AngryBirdsEngine;
   
   public class StateLegal extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LegalState";
       
      
      public function StateLegal(param1:LevelManager, param2:LocalizationManager, param3:Boolean = true, param4:String = "LegalState")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function getViewXML() : XML
      {
         return ViewXMLLibrary.mLibrary.Views.ViewLegal[0];
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
         AngryBirdsEngine.mIsRunning.setVisible(false);
         AngryBirdsBase.singleton.popupManager.closeAllPopups();
         this.updateLocalization();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "AGREE":
               AngryBirdsBase.singleton.setNextState(StateLevelSelection.STATE_NAME);
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "DISAGREE":
               (AngryBirdsBase.singleton as AngryBirdsCustom).setPlayButtonPressed(false);
               (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setLanguageSelected(null);
               AngryBirdsBase.singleton.setNextState(StateLanguageSelection.STATE_NAME);
               SoundEngine.playSound("Menu_Back");
         }
      }
      
      override public function updateLocalization() : void
      {
         DynamicLanguage.instance.updateTextFields(mUIView.container,"LegalState");
      }
   }
}
