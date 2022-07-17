package com.AngryBirds.states
{
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.model.UserInfoModel;
   import com.AngryBirds.ui.ViewLevelEnd;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import flash.display.MovieClip;
   
   public class StateLevelOverVictory extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelOverVictoryState";
       
      
      private var mStatsRequested:Boolean = false;
      
      private var mFriendScoresPressed:Boolean = false;
      
      private var mScoreList:Array = null;
      
      public function StateLevelOverVictory(param1:Boolean = true, param2:String = "LevelOverVictoryState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelEnd(this);
         mUIView.init(null);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.updateScore(AngryBirdsSocial.smLevelMain.mLevelScore);
         this.displayFriendScores();
         MouseCursorController.setCursor("");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Object = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.mFriendScoresPressed)
         {
            this.mFriendScoresPressed = false;
            this.displayFriendScores();
         }
         if(!this.mStatsRequested && AngryBirdsSocial.USER.loggedIn)
         {
            this.mStatsRequested = true;
            _loc3_ = new Object();
            _loc3_.plays = 1;
            AngryBirdsServer.updateStats(_loc3_,this.updateStatsResponse);
            AngryBirdsServer.storeLevelScore(AngryBirdsSocial.smLevelMain.mLevelData.levelID,AngryBirdsSocial.smLevelMain.mLevelScore,this.storeScoreResponse);
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.mStatsRequested = false;
         this.mScoreList = null;
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).clearTabs();
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "REPLAY_LEVEL":
               mNextState = StateLevelLoad.STATE_NAME;
               StateLevelLoad.prepareToRestartLastLevel();
               break;
            case "FRIEND_SCORES":
               this.mFriendScoresPressed = true;
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
            _loc2_ = 0;
            if(param1.score)
            {
               _loc2_ = param1.score;
            }
            this.updateScore(_loc2_);
         }
      }
      
      private function updateScore(param1:int) : void
      {
         mUIView.setText(param1.toString(),"TextField_Score");
      }
      
      public function displayFriendScores() : void
      {
         if(AngryBirdsSocial.FRIENDS_LIST != null && AngryBirdsSocial.FRIENDS_LIST.length > 0)
         {
            AngryBirdsServer.getFriendScoresForLevel(AngryBirdsSocial.smLevelMain.mLevelData.levelID.toString(),this.friendScoreResponseReceived);
         }
         else
         {
            Log.log("NO FRIENDS!");
            this.friendScoreResponseReceived(null);
         }
      }
      
      private function friendScoreResponseReceived(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:UserInfoModel = null;
         var _loc2_:int = 0;
         var _loc3_:Array = new Array();
         if(AngryBirdsSocial.USER_INFO != null)
         {
            (_loc4_ = new Object()).user = AngryBirdsSocial.USER_INFO;
            _loc4_.score = AngryBirdsSocial.smLevelMain.mLevelScoreMax > AngryBirdsSocial.smLevelMain.mLevelScore ? AngryBirdsSocial.smLevelMain.mLevelScoreMax : AngryBirdsSocial.smLevelMain.mLevelScore;
            _loc3_.push(_loc4_);
         }
         if(param1 != null && param1["error"] == null)
         {
            _loc5_ = param1["level_id"];
            while(param1["name_" + _loc2_])
            {
               _loc6_ = new Object();
               _loc3_.push(_loc6_);
               _loc7_ = param1["name_" + _loc2_];
               for each(_loc8_ in AngryBirdsSocial.FRIENDS_LIST)
               {
                  if(_loc8_.userName == _loc7_)
                  {
                     _loc6_.user = _loc8_;
                     _loc6_.score = param1["score_" + _loc2_];
                  }
               }
               _loc2_++;
            }
         }
         if(_loc3_.length > 0)
         {
            _loc3_.sort(this.hiScoreSorter);
            this.mScoreList = _loc3_;
            this.setScoreData();
         }
         else
         {
            Log.log("No scores to display");
         }
      }
      
      private function hiScoreSorter(param1:Object, param2:Object) : Number
      {
         return param2.score - param1.score;
      }
      
      private function setScoreData() : void
      {
         var _loc3_:Object = null;
         var _loc4_:XML = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Class = null;
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < this.mScoreList.length)
         {
            _loc3_ = this.mScoreList[_loc2_];
            (_loc4_ = <Button/>).@name = "Friend" + _loc2_;
            _loc4_.@MouseUp = "Friend" + _loc2_;
            (_loc5_ = new (_loc6_ = AssetCache.getAssetFromCache("FriendRankComponent"))()).Text_Ranking.text = (_loc2_ + 1).toString();
            _loc5_.Text_name.text = _loc3_.user.displayName;
            _loc5_.Text_Score.text = _loc3_.score;
            _loc5_.Container_FriendImage.addChild(_loc3_.user.getImage());
            (_loc1_[0] as Array).push(new Array(_loc4_,_loc5_));
            _loc2_++;
         }
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).loadTabs(_loc1_);
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).setVisibility(true);
         (mUIView.getItemByName("Repeater_FriendsTab") as UIRepeaterRovio).setVisibleTab("Repeater_FriendsTab_Tab_0");
      }
   }
}
