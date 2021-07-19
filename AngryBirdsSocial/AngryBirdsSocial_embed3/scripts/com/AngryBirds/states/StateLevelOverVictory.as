package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.io.AngryBirdsExternalInterface;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.io.StatisticsList;
   import com.AngryBirds.io.StatisticsManager;
   import com.AngryBirds.model.UserInfoModel;
   import com.AngryBirds.ui.ViewLevelEnd;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class StateLevelOverVictory extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelOverVictoryState";
       
      
      private var mStatsRequested:Boolean = false;
      
      private var mScoreList:Array = null;
      
      public var mLevelData:Array = null;
      
      public var mLevelLikeState:String = null;
      
      public var mCurrentPosition:int = 0;
      
      public var mStateSessionId:String = "";
      
      public var mStateSessionStartTime:Number = 0;
      
      public function StateLevelOverVictory(initState:Boolean = true, name:String = "LevelOverVictoryState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelEnd(this);
         mUIView.init(null);
         if(AngryBirdsSocial.RUN_AS_EMBED_PLAYER)
         {
            mUIView.mMovieClip.scaleX = 0.5;
            mUIView.mMovieClip.scaleY = 0.5;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.mStateSessionId = int(Math.random() * 1000000).toString();
         this.mStateSessionStartTime = getTimer();
         AngryBirdsServer.getMoreLevels(this.moreLevelsReceived,true);
         if(AngryBirdsSocial.USER.loggedIn)
         {
            (mUIView as ViewLevelEnd).setState(ViewLevelEnd.LEVEL_OVER_STATE_FRIEND_SCORES,true);
         }
         else
         {
            (mUIView as ViewLevelEnd).setState(ViewLevelEnd.LEVEL_OVER_STATE_MORE_LEVELS,true);
            mUIView.getItemByName("Popup_LevelEnd_LoginPrompt").setVisibility(true);
            this.friendScoreResponseReceived(null);
         }
         this.updateScore(AngryBirdsSocial.smLevelMain.mLevelScore,AngryBirdsSocial.smLevelMain.mLevelScore > AngryBirdsSocial.smLevelMain.mLevelScoreMax);
         MouseCursorController.setCursor("");
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(!this.mStatsRequested && AngryBirdsSocial.USER.loggedIn)
         {
            this.mStatsRequested = true;
            if(AngryBirdsSocial.smLevelMain.mLevelData.levelID != null)
            {
               StatisticsManager.markEvent(StatisticsList.LEVEL_COMPLETED,AngryBirdsSocial.smLevelMain.mLevelData.levelID,null,true);
               AngryBirdsServer.storeLevelScore(AngryBirdsSocial.smLevelMain.mLevelData.levelID,AngryBirdsSocial.smLevelMain.mLevelScore,this.storeScoreResponse);
            }
            if(AngryBirdsSocial.smLevelMain.isLevelOfDay())
            {
               AngryBirdsServer.submitLevelOfDayScore(AngryBirdsSocial.smLevelMain.mLevelData.levelID,AngryBirdsSocial.smLevelMain.mLevelScore,this.submitLevelOfDayScore);
            }
            if(this.mLevelLikeState != null)
            {
               AngryBirdsServer.setCurrentRateLevel(this.submitRateLevelResponse,AngryBirdsSocial.smLevelMain.mLevelData.levelID,this.mLevelLikeState);
            }
            else
            {
               AngryBirdsServer.getCurrentRateLevel(this.levelRatingResponseReceived,AngryBirdsSocial.smLevelMain.mLevelData.levelID);
            }
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.mScoreList = null;
         this.mLevelData = null;
         this.mStatsRequested = false;
         this.mLevelLikeState = null;
         StatisticsManager.uploadPendingEvents();
         super.deActivate();
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
            if((component as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_MoreLevels")
            {
               levelKey = this.mLevelData[eventName].levelKey;
               StateLevelLoad.prepareToLoadExternalLevel(levelKey);
               AngryBirdsExternalInterface.notifyLevelChange(levelKey);
               this.mNextState = StateLevelLoad.STATE_NAME;
               return;
            }
         }
         switch(eventName)
         {
            case "REPLAY_LEVEL":
               mNextState = StateLevelLoad.STATE_NAME;
               StateLevelLoad.prepareToRestartLastLevel();
               StatisticsManager.markEvent(StatisticsList.LEVEL_RESTARTED,AngryBirdsSocial.smLevelMain.mLevelData.levelID,null,true);
               break;
            case "LIKE_LEVEL":
               this.setLikeLevel("like",component);
               break;
            case "DISLIKE_LEVEL":
               this.setLikeLevel("dislike",component);
         }
         if(eventName != null && eventName.length > 0 && (eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP || eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN))
         {
            StatisticsManager.markEvent(StatisticsList.USER_FUNNEL_LEVEL_END,eventName,this.mStateSessionId + "," + (getTimer() - this.mStateSessionStartTime),false);
         }
      }
      
      public function setLikeLevel(newValue:String, component:UIEventListenerRovio) : void
      {
         if(AngryBirdsSocial.USER.loggedIn)
         {
            (mUIView as ViewLevelEnd).mButtonGroupLikeDislike.buttonSelected((component as UIButtonRovio).mName);
            if(this.mLevelLikeState != newValue)
            {
               this.mLevelLikeState = newValue;
               AngryBirdsServer.setCurrentRateLevel(this.submitRateLevelResponse,AngryBirdsSocial.smLevelMain.mLevelData.levelID,newValue);
            }
         }
         else
         {
            AngryBirdsExternalInterface.openLogin();
            this.mLevelLikeState = newValue;
         }
      }
      
      private function updateStatsResponse(response:Object) : void
      {
         if(!mActive)
         {
         }
      }
      
      private function storeScoreResponse(response:Object) : void
      {
         var coins:int = 0;
         if(mActive)
         {
            this.mCurrentPosition = response.score.position;
            AngryBirdsServer.getScoreListForLevel(AngryBirdsSocial.smLevelMain.mLevelData.levelID,this.friendScoreResponseReceived);
            AngryBirdsSocial.updateMetaGameData();
            if(response.rewards)
            {
               coins = parseInt(response.rewards.coin);
               if(coins > 0)
               {
                  (mUIView.getItemByName("MovieClip_LevelEnd_PiggyBank") as UIMovieClipRovio).PlayAt(1);
               }
               else
               {
                  (mUIView.getItemByName("MovieClip_LevelEnd_PiggyBank") as UIMovieClipRovio).StopAt(1);
               }
               mUIView.setText(response.rewards.experience.toString(),"TextField_GoldenEggs");
               mUIView.setText(coins.toString(),"TextField_Coin");
            }
            else
            {
               mUIView.setText("0","TextField_GoldenEggs");
               mUIView.setText("0","TextField_Coin");
            }
         }
      }
      
      private function updateScore(score:int, newRecord:Boolean = false) : void
      {
         if(mActive)
         {
            mUIView.setText(score.toString(),"TextField_Score");
            mUIView.getItemByName("MovieClip_LevelEnd_NewHighScore").setVisibility(newRecord);
         }
      }
      
      private function friendScoreResponseReceived(response:Object) : void
      {
         var myScore:Object = null;
         this.mScoreList = null;
         if(response != null && response.scores != null && response.error == null)
         {
            this.mScoreList = response.scores;
         }
         if(this.mScoreList == null)
         {
            this.mScoreList = new Array();
         }
         if(this.mScoreList.length == 0)
         {
            if(AngryBirdsSocial.USER_INFO != null)
            {
               myScore = new Object();
               myScore.user = AngryBirdsSocial.USER_INFO;
               myScore.score = AngryBirdsSocial.smLevelMain.mLevelScoreMax > AngryBirdsSocial.smLevelMain.mLevelScore ? AngryBirdsSocial.smLevelMain.mLevelScoreMax : AngryBirdsSocial.smLevelMain.mLevelScore;
               myScore.position = 1;
               this.mScoreList.push(myScore);
            }
         }
         if(this.mScoreList.length > 0)
         {
            this.mScoreList.sort(this.hiScoreSorter);
            this.setScoreData();
         }
         if((mUIView as ViewLevelEnd).mLevelEndUIState == ViewLevelEnd.LEVEL_OVER_STATE_FRIEND_SCORES)
         {
            (mUIView as ViewLevelEnd).setState(ViewLevelEnd.LEVEL_OVER_STATE_FRIEND_SCORES,false);
         }
      }
      
      private function hiScoreSorter(obj1:Object, obj2:Object) : Number
      {
         return obj1.position - obj2.position;
      }
      
      private function setScoreData() : void
      {
         var scoreObject:Object = null;
         var but:XML = null;
         var clip:MovieClip = null;
         var c:Class = null;
         var user:UserInfoModel = null;
         var c2:Class = null;
         var listIndex:Number = NaN;
         var list:Array = new Array();
         list[0] = new Array();
         var playerIndex:Number = 0;
         var i:Number = 0;
         while(i < this.mScoreList.length || i < 7)
         {
            scoreObject = this.mScoreList[i];
            but = <Button/>;
            clip = null;
            if(scoreObject != null)
            {
               but.@name = "Friend" + i;
               but.@MouseUp = "Friend" + i;
               c = null;
               if(scoreObject.username == AngryBirdsSocial.USER.name)
               {
                  c = AssetCache.getAssetFromCache("FriendScore_Component_Player");
                  if(playerIndex == 0)
                  {
                     playerIndex = i;
                  }
               }
               else
               {
                  c = AssetCache.getAssetFromCache("FriendScore_Component_Friend");
               }
               clip = new c();
               clip.Text_Ranking.text = scoreObject.position.toString();
               clip.Text_Score.text = scoreObject.score.toString();
               user = AngryBirdsSocial.getUserInfo(scoreObject.username);
               if(user == null)
               {
                  user = new UserInfoModel();
                  user.userName = scoreObject.username;
                  AngryBirdsSocial.addUserInfo(user);
               }
               if(user.getImageUrl() == null)
               {
                  user.imageUrl = scoreObject.image;
               }
               clip.Text_name.text = user.displayName;
               clip.Container_FriendImage.addChild(user.getImage());
            }
            else
            {
               c2 = AssetCache.getAssetFromCache("Button_AddFriends");
               clip = new c2();
               but.@name = "Button_AddFriends";
               but.@MouseUp = "Button_AddFriends";
            }
            (list[0] as Array).push(new Array(but,null,clip));
            i++;
         }
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).loadTabs(list);
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).setVisibleTab("Repeater_FriendsTab_Tab_0");
         if(this.mScoreList.length > 7)
         {
            listIndex = playerIndex - 3;
            if(listIndex < 0)
            {
               listIndex = 0;
            }
            else if(listIndex > this.mScoreList.length - 7)
            {
               listIndex = this.mScoreList.length - 7;
            }
            (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).setPageForTab("Repeater_FriendsTab_Tab_0",listIndex);
         }
      }
      
      public function moreLevelsReceived(obj:Object) : void
      {
         var key:String = null;
         var level:Object = null;
         var but:XML = null;
         var clip:MovieClip = null;
         var c:Class = AssetCache.getAssetFromCache("MoreLevels_Component");
         this.mLevelData = new Array();
         var list:Array = new Array();
         list[0] = new Array();
         var i:Number = 1;
         while(true)
         {
            key = "level-" + i;
            level = obj[key];
            if(level == null)
            {
               break;
            }
            this.mLevelData[key.toUpperCase()] = level;
            but = <Button/>;
            but.@name = key;
            but.@MouseUp = key;
            clip = new c();
            clip.TextField_LevelName.text = level.levelName;
            if(level.screenShot.toString().length > 0)
            {
               clip.addChildAt(LevelEditor.decodeImageData(level.screenShot.toString()),0);
            }
            list[0].push(new Array(but,null,clip));
            i++;
         }
         (mUIView.getItemByName("Repeater_MoreLevels") as UIRepeaterRovio).loadTabs(list);
         (mUIView.getItemByName("Repeater_MoreLevels") as UIRepeaterRovio).setVisibleTab("Repeater_MoreLevels_Tab_0");
         if((mUIView as ViewLevelEnd).mLevelEndUIState == ViewLevelEnd.LEVEL_OVER_STATE_MORE_LEVELS)
         {
            (mUIView as ViewLevelEnd).setState(ViewLevelEnd.LEVEL_OVER_STATE_MORE_LEVELS,false);
         }
      }
      
      public function levelRatingResponseReceived(obj:Object) : void
      {
         if(obj != null)
         {
            this.mLevelLikeState = obj.rate;
         }
         var activeRatingBtn:String = "";
         switch(this.mLevelLikeState)
         {
            case "like":
               activeRatingBtn = "Button_Like";
               break;
            case "dislike":
               activeRatingBtn = "Button_ThumbDown";
               break;
            case "unrated":
               activeRatingBtn = "";
         }
         (mUIView as ViewLevelEnd).mButtonGroupLikeDislike.buttonSelected(activeRatingBtn);
         AngryBirdsExternalInterface.updateLevelInfo(AngryBirdsSocial.smLevelMain.mLevelData.levelID);
      }
      
      public function submitRateLevelResponse(obj:Object) : void
      {
      }
      
      public function submitLevelOfDayScore(obj:Object) : void
      {
      }
      
      public function metaDataReceived(response:Object) : void
      {
      }
   }
}
