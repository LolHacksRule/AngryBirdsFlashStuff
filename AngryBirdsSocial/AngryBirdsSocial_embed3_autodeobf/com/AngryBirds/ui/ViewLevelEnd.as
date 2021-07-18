package com.AngryBirds.ui
{
   import com.AngryBirds.io.AngryBirdsExternalInterface;
   import com.AngryBirds.states.StateLevelOverVictory;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelEnd extends UIView
   {
      
      public static const LEVEL_OVER_STATE_FRIEND_SCORES:Number = 0;
      
      public static const LEVEL_OVER_STATE_MORE_LEVELS:Number = 1;
      
      public static const LEVEL_OVER_STATE_RATE_LEVEL:Number = 2;
       
      
      public var mButtonGroupLikeDislike:UIButtonGroupRovio = null;
      
      public var mButtonGroupTabs:UIButtonGroupRovio = null;
      
      public var mLevelEndUIState:Number = 0;
      
      public function ViewLevelEnd(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      override public function init(data:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelEnd[0]);
         this.mButtonGroupLikeDislike = new UIButtonGroupRovio(UIButtonGroupRovio.TYPE_EXCLUSIVE_BUTTONS,"LevelEnd_LikeDislike");
         this.mButtonGroupLikeDislike.addButton(getItemByName("Button_Like") as UIButtonRovio);
         this.mButtonGroupLikeDislike.addButton(getItemByName("Button_ThumbDown") as UIButtonRovio);
         this.mButtonGroupTabs = new UIButtonGroupRovio(UIButtonGroupRovio.TYPE_EXCLUSIVE_BUTTONS,"LevelEnd_LikeDislike");
         this.mButtonGroupTabs.addButton(getItemByName("Button_LevelEnd_PlayMore") as UIButtonRovio);
         this.mButtonGroupTabs.addButton(getItemByName("Button_LevelEnd_RateLevel") as UIButtonRovio);
         this.mButtonGroupTabs.addButton(getItemByName("Button_LevelEnd_FriendsScores") as UIButtonRovio);
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(eventIndex,eventName,component);
         switch(eventName)
         {
            case "FRIEND_SCORES":
               this.setState(LEVEL_OVER_STATE_FRIEND_SCORES);
               break;
            case "RATE_LEVEL":
               this.setState(LEVEL_OVER_STATE_RATE_LEVEL);
               break;
            case "MORE_LEVELS":
               this.setState(LEVEL_OVER_STATE_MORE_LEVELS,(mStateBase as StateLevelOverVictory).mLevelData == null);
               break;
            case "LOGIN_PROMPT_OK":
               getItemByName("Popup_LevelEnd_LoginPrompt").setVisibility(false);
               AngryBirdsExternalInterface.openRegister();
               break;
            case "LOGIN_PROMPT_CLOSE":
               getItemByName("Popup_LevelEnd_LoginPrompt").setVisibility(false);
         }
      }
      
      public function setState(newState:Number, displayLoadingAnimation:Boolean = false) : void
      {
         this.mLevelEndUIState = newState;
         getItemByName("Repeater_MoreLevels").setVisibility(this.mLevelEndUIState == LEVEL_OVER_STATE_MORE_LEVELS && !displayLoadingAnimation);
         getItemByName("Repeater_FriendsTab").setVisibility(this.mLevelEndUIState == LEVEL_OVER_STATE_FRIEND_SCORES && !displayLoadingAnimation);
         getItemByName("Container_RateLevel").setVisibility(this.mLevelEndUIState == LEVEL_OVER_STATE_RATE_LEVEL && !displayLoadingAnimation);
         getItemByName("LoadingIconAnimation").setVisibility(displayLoadingAnimation);
         if(displayLoadingAnimation)
         {
            (getItemByName("LoadingIconAnimation") as UIMovieClipRovio).PlayAt(1);
         }
         var activeButton:String = "";
         switch(newState)
         {
            case LEVEL_OVER_STATE_MORE_LEVELS:
               activeButton = "Button_LevelEnd_PlayMore";
               break;
            case LEVEL_OVER_STATE_FRIEND_SCORES:
               activeButton = "Button_LevelEnd_FriendsScores";
               break;
            case LEVEL_OVER_STATE_RATE_LEVEL:
               activeButton = "Button_LevelEnd_RateLevel";
         }
         this.mButtonGroupTabs.buttonSelected(activeButton);
      }
      
      override public function deactivateView() : void
      {
         getItemByName("Repeater_MoreLevels").setVisibility(false);
         (getItemByName("Repeater_MoreLevels") as UIRepeaterRovio).clearTabs();
         getItemByName("Repeater_FriendsTab").setVisibility(false);
         (getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).clearTabs();
         getItemByName("Container_RateLevel").setVisibility(false);
         getItemByName("LoadingIconAnimation").setVisibility(false);
      }
   }
}
