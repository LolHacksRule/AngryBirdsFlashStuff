package com.angrybirds.states
{
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.states.transitions.TransitionData;
   import com.rovio.states.StateBase;
   
   public class StateBaseLevel extends StateBase
   {
       
      
      protected var mLevelManager:LevelManager;
      
      public function StateBaseLevel(param1:LevelManager, param2:Boolean, param3:String, param4:LocalizationManager)
      {
         this.mLevelManager = param1;
         super(param2,param3,param4);
      }
      
      public function prepareToLoadNextClassicLevel() : void
      {
         this.mLevelManager.loadLevel(this.mLevelManager.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         AngryBirdsBase.singleton.localizationManager.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsBase.singleton.localizationManager.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(mTransition && mTransitionRunType != TransitionData.TRANSITION_TYPE_NONE && !AngryBirdsBase.singleton.popupManager.isPopupOpen())
         {
            mTransition.run(param1);
         }
      }
   }
}
