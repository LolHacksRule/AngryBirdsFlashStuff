package com.AngryBirds.ui
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   
   public class ViewLevelEnd extends UIView
   {
      
      public static const LEVEL_OVER_STATE_FRIEND_SCORES:Number = 0;
      
      public static const LEVEL_OVER_STATE_MORE_LEVELS:Number = 1;
      
      public static const LEVEL_OVER_STATE_RATE_LEVEL:Number = 2;
       
      
      public var mButtonGroupLikeDislike:UIButtonGroupRovio = null;
      
      public var levelUiState:Number = 0;
      
      public function ViewLevelEnd(param1:StateBase)
      {
         super(param1);
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelEnd[0]);
         this.mButtonGroupLikeDislike = new UIButtonGroupRovio(UIButtonGroupRovio.TYPE_EXCLUSIVE_BUTTONS,"LevelEnd_LikeDislike");
         this.mButtonGroupLikeDislike.addButton(getItemByName("Button_Like") as UIButtonRovio);
         this.mButtonGroupLikeDislike.addButton(getItemByName("Button_ThumbDown") as UIButtonRovio);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(param1,param2,param3);
         switch(param2)
         {
            case "FRIEND_SCORES":
               this.setState(LEVEL_OVER_STATE_FRIEND_SCORES);
               break;
            case "RATE_LEVEL":
               this.setState(LEVEL_OVER_STATE_RATE_LEVEL);
               break;
            case "MORE_LEVELS":
               this.setState(LEVEL_OVER_STATE_MORE_LEVELS);
         }
      }
      
      public function setState(param1:Number, param2:Boolean = false) : void
      {
         this.levelUiState = param1;
         getItemByName("Repeater_MoreLevels").setVisibility(this.levelUiState == LEVEL_OVER_STATE_MORE_LEVELS && !param2);
         getItemByName("Repeater_FriendsTab").setVisibility(this.levelUiState == LEVEL_OVER_STATE_FRIEND_SCORES && !param2);
         getItemByName("Container_RateLevel").setVisibility(this.levelUiState == LEVEL_OVER_STATE_RATE_LEVEL && !param2);
         getItemByName("LoadingIconAnimation").setVisibility(param2);
         if(param2)
         {
            (getItemByName("LoadingIconAnimation") as UIMovieClipRovio).PlayAt(1);
         }
      }
   }
}
