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
      
      public function StateLevelOverVictory(param1:Boolean = true, param2:String = "LevelOverVictoryState")
      {
         super(param1,param2);
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
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:String = null;
         if(param2.length > 0 && param3 is UIRepeaterButtonRovio)
         {
            if((param3 as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_MoreLevels")
            {
               _loc4_ = this.mLevelData[param2].levelKey;
               StateLevelLoad.prepareToLoadExternalLevel(_loc4_);
               AngryBirdsExternalInterface.notifyLevelChange(_loc4_);
               this.mNextState = StateLevelLoad.STATE_NAME;
               return;
            }
         }
         switch(param2)
         {
            case "REPLAY_LEVEL":
               mNextState = StateLevelLoad.STATE_NAME;
               StateLevelLoad.prepareToRestartLastLevel();
               StatisticsManager.markEvent(StatisticsList.LEVEL_RESTARTED,AngryBirdsSocial.smLevelMain.mLevelData.levelID,null,true);
               break;
            case "LIKE_LEVEL":
               this.setLikeLevel("like",param3);
               break;
            case "DISLIKE_LEVEL":
               this.setLikeLevel("dislike",param3);
         }
         if(param2 != null && param2.length > 0 && (param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP || param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN))
         {
            StatisticsManager.markEvent(StatisticsList.USER_FUNNEL_LEVEL_END,param2,this.mStateSessionId + "," + (getTimer() - this.mStateSessionStartTime),false);
         }
      }
      
      public function setLikeLevel(param1:String, param2:UIEventListenerRovio) : void
      {
         if(AngryBirdsSocial.USER.loggedIn)
         {
            (mUIView as ViewLevelEnd).mButtonGroupLikeDislike.buttonSelected((param2 as UIButtonRovio).mName);
            if(this.mLevelLikeState != param1)
            {
               this.mLevelLikeState = param1;
               AngryBirdsServer.setCurrentRateLevel(this.submitRateLevelResponse,AngryBirdsSocial.smLevelMain.mLevelData.levelID,param1);
            }
         }
         else
         {
            AngryBirdsExternalInterface.openLogin();
            this.mLevelLikeState = param1;
         }
      }
      
      private function updateStatsResponse(param1:Object) : void
      {
         if(!mActive)
         {
         }
      }
      
      private function storeScoreResponse(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(mActive)
         {
            this.mCurrentPosition = param1.score.position;
            AngryBirdsServer.getScoreListForLevel(AngryBirdsSocial.smLevelMain.mLevelData.levelID,this.friendScoreResponseReceived);
            AngryBirdsSocial.updateMetaGameData();
            if(param1.rewards)
            {
               _loc2_ = parseInt(param1.rewards.coin);
               if(_loc2_ > 0)
               {
                  (mUIView.getItemByName("MovieClip_LevelEnd_PiggyBank") as UIMovieClipRovio).PlayAt(1);
               }
               else
               {
                  (mUIView.getItemByName("MovieClip_LevelEnd_PiggyBank") as UIMovieClipRovio).StopAt(1);
               }
               mUIView.setText(param1.rewards.experience.toString(),"TextField_GoldenEggs");
               mUIView.setText(_loc2_.toString(),"TextField_Coin");
            }
            else
            {
               mUIView.setText("0","TextField_GoldenEggs");
               mUIView.setText("0","TextField_Coin");
            }
         }
      }
      
      private function updateScore(param1:int, param2:Boolean = false) : void
      {
         if(mActive)
         {
            mUIView.setText(param1.toString(),"TextField_Score");
            mUIView.getItemByName("MovieClip_LevelEnd_NewHighScore").setVisibility(param2);
         }
      }
      
      private function friendScoreResponseReceived(param1:Object) : void
      {
         var _loc2_:Object = null;
         this.mScoreList = null;
         if(param1 != null && param1.scores != null && param1.error == null)
         {
            this.mScoreList = param1.scores;
         }
         if(this.mScoreList == null)
         {
            this.mScoreList = new Array();
         }
         if(this.mScoreList.length == 0)
         {
            if(AngryBirdsSocial.USER_INFO != null)
            {
               _loc2_ = new Object();
               _loc2_.user = AngryBirdsSocial.USER_INFO;
               _loc2_.score = AngryBirdsSocial.smLevelMain.mLevelScoreMax > AngryBirdsSocial.smLevelMain.mLevelScore ? AngryBirdsSocial.smLevelMain.mLevelScoreMax : AngryBirdsSocial.smLevelMain.mLevelScore;
               _loc2_.position = 1;
               this.mScoreList.push(_loc2_);
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
      
      private function hiScoreSorter(param1:Object, param2:Object) : Number
      {
         return param1.position - param2.position;
      }
      
      private function setScoreData() : void
      {
         var _loc4_:Object = null;
         var _loc5_:XML = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:UserInfoModel = null;
         var _loc9_:Class = null;
         var _loc10_:Number = NaN;
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         while(_loc3_ < this.mScoreList.length || _loc3_ < 7)
         {
            _loc4_ = this.mScoreList[_loc3_];
            _loc5_ = <Button/>;
            _loc6_ = null;
            if(_loc4_ != null)
            {
               _loc5_.@name = "Friend" + _loc3_;
               _loc5_.@MouseUp = "Friend" + _loc3_;
               _loc7_ = null;
               if(_loc4_.username == AngryBirdsSocial.USER.name)
               {
                  _loc7_ = AssetCache.getAssetFromCache("FriendScore_Component_Player");
                  if(_loc2_ == 0)
                  {
                     _loc2_ = _loc3_;
                  }
               }
               else
               {
                  _loc7_ = AssetCache.getAssetFromCache("FriendScore_Component_Friend");
               }
               (_loc6_ = new _loc7_()).Text_Ranking.text = _loc4_.position.toString();
               _loc6_.Text_Score.text = _loc4_.score.toString();
               if((_loc8_ = AngryBirdsSocial.getUserInfo(_loc4_.username)) == null)
               {
                  (_loc8_ = new UserInfoModel()).userName = _loc4_.username;
                  AngryBirdsSocial.addUserInfo(_loc8_);
               }
               if(_loc8_.getImageUrl() == null)
               {
                  _loc8_.imageUrl = _loc4_.image;
               }
               _loc6_.Text_name.text = _loc8_.displayName;
               _loc6_.Container_FriendImage.addChild(_loc8_.getImage());
            }
            else
            {
               _loc6_ = new (_loc9_ = AssetCache.getAssetFromCache("Button_AddFriends"))();
               _loc5_.@name = "Button_AddFriends";
               _loc5_.@MouseUp = "Button_AddFriends";
            }
            (_loc1_[0] as Array).push(new Array(_loc5_,null,_loc6_));
            _loc3_++;
         }
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).loadTabs(_loc1_);
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).setVisibleTab("Repeater_FriendsTab_Tab_0");
         if(this.mScoreList.length > 7)
         {
            if((_loc10_ = _loc2_ - 3) < 0)
            {
               _loc10_ = 0;
            }
            else if(_loc10_ > this.mScoreList.length - 7)
            {
               _loc10_ = this.mScoreList.length - 7;
            }
            (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).setPageForTab("Repeater_FriendsTab_Tab_0",_loc10_);
         }
      }
      
      public function moreLevelsReceived(param1:Object) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:XML = null;
         var _loc8_:MovieClip = null;
         var _loc2_:Class = AssetCache.getAssetFromCache("MoreLevels_Component");
         this.mLevelData = new Array();
         var _loc3_:Array = new Array();
         _loc3_[0] = new Array();
         var _loc4_:Number = 1;
         while(true)
         {
            _loc5_ = "level-" + _loc4_;
            if((_loc6_ = param1[_loc5_]) == null)
            {
               break;
            }
            this.mLevelData[_loc5_.toUpperCase()] = _loc6_;
            (_loc7_ = <Button/>).@name = _loc5_;
            _loc7_.@MouseUp = _loc5_;
            (_loc8_ = new _loc2_()).TextField_LevelName.text = _loc6_.levelName;
            if(_loc6_.screenShot.toString().length > 0)
            {
               _loc8_.addChildAt(LevelEditor.decodeImageData(_loc6_.screenShot.toString()),0);
            }
            _loc3_[0].push(new Array(_loc7_,null,_loc8_));
            _loc4_++;
         }
         (mUIView.getItemByName("Repeater_MoreLevels") as UIRepeaterRovio).loadTabs(_loc3_);
         (mUIView.getItemByName("Repeater_MoreLevels") as UIRepeaterRovio).setVisibleTab("Repeater_MoreLevels_Tab_0");
         if((mUIView as ViewLevelEnd).mLevelEndUIState == ViewLevelEnd.LEVEL_OVER_STATE_MORE_LEVELS)
         {
            (mUIView as ViewLevelEnd).setState(ViewLevelEnd.LEVEL_OVER_STATE_MORE_LEVELS,false);
         }
      }
      
      public function levelRatingResponseReceived(param1:Object) : void
      {
         if(param1 != null)
         {
            this.mLevelLikeState = param1.rate;
         }
         var _loc2_:String = "";
         switch(this.mLevelLikeState)
         {
            case "like":
               _loc2_ = "Button_Like";
               break;
            case "dislike":
               _loc2_ = "Button_ThumbDown";
               break;
            case "unrated":
               _loc2_ = "";
         }
         (mUIView as ViewLevelEnd).mButtonGroupLikeDislike.buttonSelected(_loc2_);
         AngryBirdsExternalInterface.updateLevelInfo(AngryBirdsSocial.smLevelMain.mLevelData.levelID);
      }
      
      public function submitRateLevelResponse(param1:Object) : void
      {
      }
      
      public function submitLevelOfDayScore(param1:Object) : void
      {
      }
      
      public function metaDataReceived(param1:Object) : void
      {
      }
   }
}
