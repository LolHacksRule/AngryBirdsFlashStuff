package com.angrybirds.states
{
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.states.StateBase;
   import com.rovio.states.transitions.TransitionData;
   
   public class StateBaseLevel extends StateBase
   {
       
      
      protected var mLevelManager:LevelManager;
      
      public function StateBaseLevel(levelManager:LevelManager, initObject:Boolean, name:String, localizationManager:LocalizationManager)
      {
         this.mLevelManager = levelManager;
         super(initObject,name,localizationManager);
      }
      
      public function prepareToLoadNextClassicLevel() : void
      {
         this.mLevelManager.loadLevel(this.mLevelManager.getNextLevelId());
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         AngryBirdsBase.singleton.localizationManager.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsBase.singleton.localizationManager.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(deltaTime:Number) : void
      {
         if(mTransition && mTransitionRunType != TransitionData.TRANSITION_TYPE_NONE && !AngryBirdsBase.singleton.popupManager.isPopupOpen())
         {
            mTransition.run(deltaTime);
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         this.updateUIScale();
      }
      
      protected function updateUIScale() : void
      {
      }
   }
}
