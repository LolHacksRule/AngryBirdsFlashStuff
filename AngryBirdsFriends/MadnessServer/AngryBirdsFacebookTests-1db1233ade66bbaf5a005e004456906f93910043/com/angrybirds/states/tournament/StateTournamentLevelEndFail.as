package com.angrybirds.states.tournament
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.StateFacebookLevelEndFail;
   import com.angrybirds.tournament.NextLevelButton;
   import com.angrybirds.tournament.TournamentModel;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   
   public class StateTournamentLevelEndFail extends StateFacebookLevelEndFail
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      private var mNextLevelButton:NextLevelButton;
      
      public function StateTournamentLevelEndFail(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "stateTournamentLevelEndFail")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function init() : void
      {
         super.init();
         this.mNextLevelButton = new NextLevelButton(this,UIButtonRovio(mUIView.getItemByName("Button_NextLevel")),TournamentModel.instance,DataModelFriends(AngryBirdsBase.singleton.dataModel).shopListing,DataModelFriends(AngryBirdsBase.singleton.dataModel).virtualCurrencyModel);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         var nextLevel:String = TournamentModel.instance.getNextTournamentLevelId(mLevelManager.currentLevel);
         if(nextLevel)
         {
            this.mNextLevelButton.activate(nextLevel);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.mNextLevelButton.deactivate();
      }
      
      protected function hideAllShareButtons() : void
      {
      }
      
      override protected function getCutSceneState() : String
      {
         return StateTournamentCutScene.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return StateTournamentLevelLoad.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return StateTournamentLevelSelection.STATE_NAME;
      }
      
      override public function prepareToLoadNextClassicLevel() : void
      {
         var nextLevel:String = this.getNextIdentifier();
         if(nextLevel != null && nextLevel != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(nextLevel));
         }
         else
         {
            (mLevelManager as FacebookLevelManager).previousLevel = mLevelManager.currentLevel;
         }
      }
      
      override protected function showButtons() : void
      {
         var nextLevelId:String = this.getNextIdentifier();
         if(!nextLevelId)
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
         }
         else
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).mClip.unlocksIn.visible = !TournamentModel.instance.isLevelOpen(nextLevelId);
         }
         (mUIView.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         nextLevelId = TournamentModel.instance.getNextTournamentLevel(mLevelManager.currentLevel);
         if(nextLevelId)
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (mUIView.getItemByName("Button_Menu") as UIButtonRovio).x = mDefaultButtonPositions[0];
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).x = mDefaultButtonPositions[1];
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).x = mDefaultButtonPositions[2];
         }
         else
         {
            (mUIView.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mUIView.getItemByName("Button_Menu") as UIButtonRovio).x = mDefaultButtonPositions[0];
            (mUIView.getItemByName("Button_Replay") as UIButtonRovio).x = mDefaultButtonPositions[1];
            (mUIView.getItemByName("Button_MightyEagle") as UIButtonRovio).x = mDefaultButtonPositions[2];
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var canStartNextLevel:Boolean = false;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               canStartNextLevel = true;
               if(TournamentModel.instance.isOverlappingTournamentsEnabled())
               {
                  if(TournamentModel.instance.getSecondsLeft() <= 0)
                  {
                     StateOverlappingTournamentsMenu.forceRefreshOverlappingTournamentData();
                     setNextState(StateOverlappingTournamentsMenu.STATE_NAME);
                     canStartNextLevel = false;
                  }
               }
               if(canStartNextLevel)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(eventIndex,eventName,component);
                  }
                  else if(this.mNextLevelButton.canPlay)
                  {
                     super.onUIInteraction(eventIndex,eventName,component);
                  }
                  else if(this.mNextLevelButton.canPurchase)
                  {
                     this.mNextLevelButton.purchase();
                  }
               }
               break;
            case "REPLAY":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               if(TournamentModel.instance.isOverlappingTournamentsEnabled())
               {
                  if(TournamentModel.instance.getSecondsLeft() <= 0)
                  {
                     StateOverlappingTournamentsMenu.forceRefreshOverlappingTournamentData();
                     setNextState(StateOverlappingTournamentsMenu.STATE_NAME);
                  }
                  else
                  {
                     setNextState(this.getLevelLoadState());
                  }
               }
               else
               {
                  setNextState(this.getLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         this.mNextLevelButton.update();
      }
      
      override public function getNextIdentifier() : String
      {
         return TournamentModel.instance.getNextTournamentLevel(mLevelManager.currentLevel);
      }
      
      override protected function getTournamentId() : int
      {
         if(TournamentModel.instance.currentTournament)
         {
            return TournamentModel.instance.currentTournament.id;
         }
         return -1;
      }
   }
}
