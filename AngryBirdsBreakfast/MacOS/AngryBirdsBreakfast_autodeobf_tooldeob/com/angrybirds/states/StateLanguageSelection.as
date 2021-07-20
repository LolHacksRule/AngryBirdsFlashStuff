package com.angrybirds.states
{
   import com.rovio.utils.DynamicLanguage;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.angrybirds.popups.PopupSelectLanguage;
   import com.angrybirds.AngryBirdsEngine;
   
   public class StateLanguageSelection extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LanguageSelectionState";
       
      
      public function StateLanguageSelection(param1:LevelManager, param2:LocalizationManager, param3:LevelItemManager, param4:Boolean = true, param5:String = "LanguageSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = ViewXMLLibrary.mLibrary.Views.ViewLanguageSelection[0];
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
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
         var _loc2_:String = (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.getLanguageSelected();
         if(_loc2_)
         {
            DynamicLanguage.instance.setLanguage(_loc2_);
            mLocalizationManager.setLanguage(_loc2_);
            setNextState(StateLevelSelectionCustom.STATE_NAME);
            return;
         }
         AngryBirdsEngine.smLevelMain.setVisible(false);
         this.updateLocalization();
         AngryBirdsBase.singleton.popupManager.openPopup(new PopupSelectLanguage(mUIView.container));
         (AngryBirdsBase.singleton as AngryBirdsCustom).playThemeMusic();
      }
      
      override public function updateLocalization() : void
      {
         DynamicLanguage.instance.updateTextFields(mUIView.container,"LanguageSelectionState");
      }
      
      private function updateLanguage(param1:String) : void
      {
         DynamicLanguage.instance.setLanguage(param1);
         mLocalizationManager.setLanguage(param1);
         param1 = DynamicLanguage.instance.getLanguage();
         ExternalInterfaceHandler.performCall("language",param1);
      }
   }
}
