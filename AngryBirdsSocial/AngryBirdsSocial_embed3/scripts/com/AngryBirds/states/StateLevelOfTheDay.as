package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.model.UserInfoModel;
   import com.AngryBirds.ui.ViewLevelOfTheDay;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class StateLevelOfTheDay extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelOfTheDayState";
      
      public static var smInitiatingState:String = null;
       
      
      public var mDailySprintInited:Boolean = false;
      
      public var mDailySprintRequested:Boolean = false;
      
      public var mWeeklyRaceInited:Boolean = false;
      
      public var mWeeklyRaceRequested:Boolean = false;
      
      public var mWeeklyRaceEndTime:Number = -1;
      
      public function StateLevelOfTheDay(initState:Boolean = true, name:String = "LevelOfTheDayState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLevelOfTheDay(this);
         mUIView.init(null);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.mDailySprintInited = false;
         this.mWeeklyRaceInited = false;
         this.mDailySprintRequested = false;
         this.mWeeklyRaceRequested = false;
         this.initDailySprintPopup();
         mUIView.getItemByName("Popup_LevelOfTheDay_DailySprint").setVisibility(true);
         mUIView.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE,"Button_WeeklyRace_WeeklyRace");
         mUIView.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE,"Button_DailySprint_DailySprint");
         MouseCursorController.setCursor("");
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(!this.mDailySprintRequested && mUIView.getItemByName("Popup_LevelOfTheDay_DailySprint").mVisibility)
         {
            AngryBirdsServer.getDailySprintData(this.dailySprintDataResponse);
            this.mDailySprintRequested = true;
         }
         if(!this.mWeeklyRaceRequested && mUIView.getItemByName("Popup_LevelOfTheDay_WeeklyRace").mVisibility)
         {
            AngryBirdsServer.getWeeklyRaceData(this.weeklyRaceDataResponse);
            this.mWeeklyRaceRequested = true;
         }
         this.updateTimeDisplay();
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         mUIView.getItemByName("Popup_LevelOfTheDay_DailySprint").setVisibility(true);
         mUIView.getItemByName("Popup_LevelOfTheDay_WeeklyRace").setVisibility(false);
         (mUIView.getItemByName("Repeater_WeeklyRace_FriendList") as UIRepeaterRovio).clearTabs();
         (mUIView.getItemByName("Repeater_WeeklyRace_Calendar") as UIRepeaterRovio).clearTabs();
         (mUIView.getItemByName("Repeater_DailySprint_FriendList") as UIRepeaterRovio).clearTabs();
         this.setUserImage("Container_DailySprint_Player",null);
         this.setUserImage("Container_DailySprint_Player_Leading",null);
         this.setUserImage("Container_DailySprint_Friend",null);
         this.setUserImage("Container_WeeklyRace_Friend",null);
         this.setUserImage("Container_WeeklyRace_Player",null);
         this.setUserImage("Container_WeeklyRace_Player_Leading",null);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "LEVEL_OF_DAY_CLOSE":
               this.mNextState = smInitiatingState;
               smInitiatingState = null;
               break;
            case "LEVEL_OF_DAY_DAILY_SPRINT":
               if(!mUIView.getItemByName("Popup_LevelOfTheDay_DailySprint").mVisibility)
               {
                  mUIView.getItemByName("Popup_LevelOfTheDay_DailySprint").setVisibility(true);
                  mUIView.getItemByName("Popup_LevelOfTheDay_WeeklyRace").setVisibility(false);
                  if(!this.mDailySprintInited)
                  {
                     this.initDailySprintPopup();
                  }
               }
               break;
            case "LEVEL_OF_DAY_WEEKLY_RACE":
               if(!mUIView.getItemByName("Popup_LevelOfTheDay_WeeklyRace").mVisibility)
               {
                  mUIView.getItemByName("Popup_LevelOfTheDay_DailySprint").setVisibility(false);
                  mUIView.getItemByName("Popup_LevelOfTheDay_WeeklyRace").setVisibility(true);
                  if(!this.mWeeklyRaceInited)
                  {
                     this.initWeeklyRacePopup();
                  }
               }
         }
      }
      
      public function updateTimeDisplay() : void
      {
         if(mUIView.getItemByName("Popup_LevelOfTheDay_DailySprint").mVisibility)
         {
            mUIView.setText(AngryBirdsSocial.generateTimeLeftStr(AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime),"TextField_DailySprint_Countdown");
         }
         else
         {
            mUIView.setText(AngryBirdsSocial.generateTimeLeftStr(this.mWeeklyRaceEndTime),"TextField_WeeklyRace_Countdown");
         }
      }
      
      public function initDailySprintPopup() : void
      {
         mUIView.setText(AngryBirdsSocial.smLevelMain.mLevelOfDayScore.toString(),"TextField_DailySprint_LevelScore");
         mUIView.setText(AngryBirdsSocial.smLevelMain.mLevelData.levelCreator,"TextField_DailySprint_LevelCreator");
         mUIView.setText(AngryBirdsSocial.smLevelMain.mLevelData.levelName,"TextField_DailySprint_LevelName");
         mUIView.setText("-","TextField_DailySprint_ScoreNeeded");
         mUIView.setText("-","TextField_DailySprint_FriendScore");
         mUIView.setText("-","TextField_DailySprint_FriendPrize");
         (mUIView.getItemByName("MovieClip_DailySprint_FriendMedal") as UIMovieClipRovio).StopAt(4);
         (mUIView.getItemByName("MovieClip_DailySprint_PlayerMedal") as UIMovieClipRovio).StopAt(4);
         mUIView.getItemByName("MovieClip_DailySprint_Loading").setVisibility(true);
         (mUIView.getItemByName("MovieClip_DailySprint_Loading") as UIMovieClipRovio).PlayAt(1);
         this.mDailySprintInited = true;
      }
      
      public function setUserImage(containerName:String, user:UserInfoModel) : void
      {
         var tmp:XML = null;
         var container:UIContainerRovio = mUIView.getItemByName(containerName) as UIContainerRovio;
         var imageItemName:String = containerName + "_image";
         var mclip:UIMovieClipRovio = container.getItemByName(imageItemName) as UIMovieClipRovio;
         if(mclip == null)
         {
            if(!user)
            {
               return;
            }
            tmp = <MovieClip/>;
            tmp.@name = imageItemName;
            mclip = new UIMovieClipRovio(tmp,container,user.getImageAsMovieClip());
            container.addComponent(mclip);
            mclip.changeMovieClip(user.getImageAsMovieClip());
            mclip.setVisibility(true);
            return;
         }
         if(user)
         {
            mclip.changeMovieClip(user.getImageAsMovieClip());
            mclip.setVisibility(true);
         }
         else
         {
            mclip.setVisibility(false);
         }
      }
      
      public function dailySprintDataResponse(obj:Object) : void
      {
         var list:Array = null;
         var playerScore:Object = null;
         var targetScore:Object = null;
         var i:Number = NaN;
         var playerPosition:Number = NaN;
         var targetPosition:Number = NaN;
         var scoreObject:Object = null;
         var but:XML = null;
         var c:Class = null;
         var clip:MovieClip = null;
         var u:UserInfoModel = null;
         var scoreNeeded:Number = NaN;
         AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime = getTimer() + obj.timeLeft;
         mUIView.setText(AngryBirdsSocial.generateTimeLeftStr(AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime),"TextField_DailySprint_Countdown");
         mUIView.setText(obj.topPercentage,"TextField_DailySprint_GlobalPercent");
         if(AngryBirdsSocial.USER.loggedIn)
         {
            (mUIView.getItemByName("Container_DailySprint_Player") as UIContainerRovio).mClip.addChild(AngryBirdsSocial.USER_INFO.getImage());
         }
         mUIView.getItemByName("MovieClip_DailySprint_Loading").setVisibility(false);
         mUIView.setText(obj.standing,"TextField_DailySprint_Position");
         var img:DisplayObject = LevelEditor.decodeImageData(obj.screenShot as String);
         img.scaleX = 0.5;
         img.scaleY = 0.5;
         var mc:MovieClip = new MovieClip();
         mc.addChild(img);
         (mUIView.getItemByName("MovieClip_DailySprint_Image") as UIMovieClipRovio).changeMovieClip(mc);
         if(obj.scores != null)
         {
            list = new Array();
            list[0] = new Array();
            playerScore = null;
            targetScore = null;
            i = 0;
            playerPosition = 0;
            targetPosition = 0;
            for(i = 0; i < obj.scores.length; i++)
            {
               if(obj.scores[i].username == AngryBirdsSocial.USER.name)
               {
                  playerScore = obj.scores[i];
                  playerPosition = i + 1;
                  if(i > 0)
                  {
                     targetScore = obj.scores[i - 1];
                     playerPosition = i;
                     mUIView.setText("Next friend to beat","TextField_DailySprint_TargetTitle");
                     mUIView.getItemByName("Container_LevelOfTheDay_DailyLeading").setVisibility(false);
                     mUIView.getItemByName("Container_LevelOfTheDay_DailyTargetScore").setVisibility(true);
                  }
                  else
                  {
                     mUIView.setText("You are in the lead for the today!","TextField_DailySprint_TargetTitle");
                     mUIView.getItemByName("Container_LevelOfTheDay_DailyLeading").setVisibility(true);
                     mUIView.getItemByName("Container_LevelOfTheDay_DailyTargetScore").setVisibility(false);
                  }
               }
            }
            if(playerScore == null)
            {
               playerScore = {
                  "username":AngryBirdsSocial.USER.name,
                  "score":0,
                  "image":AngryBirdsSocial.USER_INFO.imageUrl,
                  "prize":0
               };
               targetScore = obj.scores[obj.scores.length - 1];
               obj.scores.push(playerScore);
               playerPosition = obj.scores.length;
               targetPosition = obj.scores.length - 1;
            }
            i = 0;
            while(i < obj.scores.length || i < 5)
            {
               scoreObject = obj.scores[i];
               but = <Button/>;
               but.@name = "Friend" + i;
               but.@MouseUp = "Friend" + i;
               c = null;
               c = AssetCache.getAssetFromCache("Component_LevelOfTheDay_FriendScore");
               clip = new c();
               if(scoreObject != null)
               {
                  u = AngryBirdsSocial.getUserInfo(scoreObject.username);
                  if(u == null)
                  {
                     u = new UserInfoModel();
                     u.userName = scoreObject.username;
                     AngryBirdsSocial.addUserInfo(u);
                  }
                  if(u.getImageUrl() == null)
                  {
                     u.imageUrl = scoreObject.image;
                  }
                  clip.TextField_FriendScore.text = scoreObject.score.toString();
                  clip.TextField_FriendName.text = u.displayName;
                  clip.MovieClip_FriendImage.addChild(u.getImage());
               }
               else
               {
                  clip.TextField_FriendScore.text = "-";
                  clip.TextField_FriendName.text = "-";
               }
               clip.MovieClip_Medal.gotoAndStop(i < 3 ? i + 1 : 4);
               (list[0] as Array).push(new Array(but,null,clip));
               i++;
            }
            (mUIView.getItemByName("Repeater_DailySprint_FriendList") as UIRepeaterRovio).loadTabs(list);
            (mUIView.getItemByName("Repeater_DailySprint_FriendList") as UIRepeaterRovio).setVisibleTab("Repeater_DailySprint_FriendList_Tab_0");
            if(playerScore != null)
            {
               mUIView.setText(playerScore.score.toString(),"TextField_DailySprint_LevelScore");
               mUIView.setText(playerScore.score.toString(),"TextField_DailySprint_LevelScore_Leading");
               mUIView.setText(playerScore.prize.toString(),"TextField_DailySprint_PlayerPrize");
               mUIView.setText(playerScore.prize.toString(),"TextField_DailySprint_PlayerPrize_Leading");
               if(AngryBirdsSocial.USER_INFO)
               {
                  this.setUserImage("Container_DailySprint_Player",AngryBirdsSocial.USER_INFO);
                  this.setUserImage("Container_DailySprint_Player_Leading",AngryBirdsSocial.USER_INFO);
               }
               (mUIView.getItemByName("MovieClip_DailySprint_PlayerMedal") as UIMovieClipRovio).StopAt(playerPosition < 3 ? int(playerPosition + 1) : int(4));
               (mUIView.getItemByName("MovieClip_DailySprint_PlayerMedal_Leading") as UIMovieClipRovio).StopAt(playerPosition < 3 ? int(playerPosition + 1) : int(4));
            }
            if(targetScore != null)
            {
               mUIView.setText(targetScore.score.toString(),"TextField_DailySprint_FriendScore");
               mUIView.setText(targetScore.prize.toString(),"TextField_DailySprint_FriendPrize");
               if(AngryBirdsSocial.getUserInfo(targetScore.username) != null)
               {
                  this.setUserImage("Container_DailySprint_Friend",AngryBirdsSocial.getUserInfo(targetScore.username));
               }
               scoreNeeded = parseInt(targetScore.score);
               if(playerScore != null)
               {
                  scoreNeeded -= parseInt(playerScore.score);
               }
               mUIView.setText(scoreNeeded.toString(),"TextField_DailySprint_ScoreNeeded");
               (mUIView.getItemByName("MovieClip_DailySprint_FriendMedal") as UIMovieClipRovio).StopAt(targetPosition < 3 ? int(targetPosition + 1) : int(4));
            }
         }
      }
      
      public function initWeeklyRacePopup() : void
      {
         mUIView.getItemByName("MovieClip_WeeklyRace_Loading").setVisibility(true);
         (mUIView.getItemByName("MovieClip_WeeklyRace_Loading") as UIMovieClipRovio).PlayAt(1);
         (mUIView.getItemByName("MovieClip_WeeklyRace_PlayerTrophy") as UIMovieClipRovio).StopAt(4);
         (mUIView.getItemByName("MovieClip_WeeklyRace_FriendTrophy") as UIMovieClipRovio).StopAt(4);
         this.mWeeklyRaceInited = true;
      }
      
      public function weeklyRaceDataResponse(param1:Object) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Object = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         var _loc13_:MovieClip = null;
         var _loc14_:UserInfoModel = null;
         var _loc15_:Number = NaN;
         var _loc16_:MovieClip = null;
         var _loc17_:String = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         this.mWeeklyRaceEndTime = getTimer() + param1.timeLeft;
         mUIView.getItemByName("MovieClip_WeeklyRace_Loading").setVisibility(false);
         if(param1.scores != null)
         {
            _loc5_ = new Array();
            _loc5_[0] = new Array();
            _loc6_ = null;
            _loc7_ = null;
            _loc4_ = 0;
            _loc8_ = 0;
            _loc9_ = 0;
            for(_loc4_ = 0; _loc4_ < param1.scores.length; _loc4_++)
            {
               if(param1.scores[_loc4_].username == AngryBirdsSocial.USER.name)
               {
                  _loc6_ = param1.scores[_loc4_];
                  _loc8_ = _loc4_;
                  if(_loc4_ > 0)
                  {
                     _loc7_ = param1.scores[_loc4_ - 1];
                     _loc9_ = _loc4_ - 1;
                     mUIView.setText("Next friend to beat","TextField_WeeklyRace_TargetTitle");
                     mUIView.getItemByName("Container_LevelOfTheDay_WeeklyLeading").setVisibility(false);
                     mUIView.getItemByName("Container_LevelOfTheDay_WeeklyTargetScore").setVisibility(true);
                  }
                  else
                  {
                     mUIView.setText("You are in the lead for the week!","TextField_WeeklyRace_TargetTitle");
                     mUIView.getItemByName("Container_LevelOfTheDay_WeeklyLeading").setVisibility(true);
                     mUIView.getItemByName("Container_LevelOfTheDay_WeeklyTargetScore").setVisibility(false);
                  }
               }
            }
            if(_loc6_ == null)
            {
               _loc6_ = {
                  "username":AngryBirdsSocial.USER.name,
                  "score":0,
                  "image":AngryBirdsSocial.USER_INFO.imageUrl,
                  "prize":0
               };
               _loc7_ = param1.scores[param1.scores.length - 1];
               param1.scores.push(_loc6_);
               _loc8_ = param1.scores.length;
               _loc9_ = param1.scores.length - 1;
            }
            _loc4_ = 0;
            while(_loc4_ < param1.scores.length || _loc4_ < 5)
            {
               _loc10_ = param1.scores[_loc4_];
               _loc11_ = <Button/>;
               _loc11_.@name = "Friend" + _loc4_;
               _loc11_.@MouseUp = "Friend" + _loc4_;
               _loc12_ = null;
               _loc12_ = AssetCache.getAssetFromCache("Component_LevelOfTheDay_FriendScoreWeek");
               _loc13_ = new _loc12_();
               if(_loc10_ != null)
               {
                  _loc14_ = AngryBirdsSocial.getUserInfo(_loc10_.username);
                  if(_loc14_ == null)
                  {
                     _loc14_ = new UserInfoModel();
                     _loc14_.userName = _loc10_.username;
                     AngryBirdsSocial.addUserInfo(_loc14_);
                  }
                  if(_loc14_.getImageUrl() == null)
                  {
                     _loc14_.imageUrl = _loc10_.image;
                  }
                  _loc13_.TextField_FriendScore.text = _loc10_.score.toString();
                  _loc13_.TextField_FriendName.text = _loc14_.displayName;
                  _loc13_.MovieClip_FriendImage.addChild(_loc14_.getImage());
               }
               else
               {
                  _loc13_.TextField_FriendScore.text = "-";
                  _loc13_.TextField_FriendName.text = "-";
               }
               _loc13_.MovieClip_Medal.gotoAndStop(_loc4_ < 3 ? _loc4_ + 1 : 4);
               (_loc5_[0] as Array).push(new Array(_loc11_,null,_loc13_));
               _loc4_++;
            }
            (mUIView.getItemByName("Repeater_WeeklyRace_FriendList") as UIRepeaterRovio).loadTabs(_loc5_);
            (mUIView.getItemByName("Repeater_WeeklyRace_FriendList") as UIRepeaterRovio).setVisibleTab("Repeater_WeeklyRace_FriendList_Tab_0");
            if(_loc6_ != null)
            {
               mUIView.setText(_loc6_.score.toString(),"TextField_WeeklyRace_LevelScore");
               mUIView.setText(_loc6_.score.toString(),"TextField_WeeklyRace_LevelScore_Leading");
               mUIView.setText(_loc6_.prize.toString(),"TextField_WeeklyRace_PlayerPrize");
               mUIView.setText(_loc6_.prize.toString(),"TextField_WeeklyRace_PlayerPrize_Leading");
               if(AngryBirdsSocial.USER_INFO)
               {
                  this.setUserImage("Container_WeeklyRace_Player",AngryBirdsSocial.USER_INFO);
                  this.setUserImage("Container_WeeklyRace_Player_Leading",AngryBirdsSocial.USER_INFO);
               }
               (mUIView.getItemByName("MovieClip_WeeklyRace_PlayerTrophy") as UIMovieClipRovio).StopAt(_loc8_ < 3 ? int(_loc8_ + 1) : int(4));
               (mUIView.getItemByName("MovieClip_WeeklyRace_PlayerTrophy_Leading") as UIMovieClipRovio).StopAt(_loc8_ < 3 ? int(_loc8_ + 1) : int(4));
            }
            if(_loc7_ != null)
            {
               mUIView.setText(_loc7_.score.toString(),"TextField_WeeklyRace_FriendScore");
               mUIView.setText(_loc7_.prize.toString(),"TextField_WeeklyRace_FriendPrize");
               if(AngryBirdsSocial.getUserInfo(_loc7_.username) != null)
               {
                  this.setUserImage("Container_WeeklyRace_Friend",AngryBirdsSocial.getUserInfo(_loc7_.username));
               }
               _loc15_ = parseInt(_loc7_.score);
               if(_loc6_ != null)
               {
                  _loc15_ -= parseInt(_loc6_.score);
               }
               mUIView.setText(_loc15_.toString(),"TextField_WeeklyRace_ScoreNeeded");
               (mUIView.getItemByName("MovieClip_WeeklyRace_FriendTrophy") as UIMovieClipRovio).StopAt(_loc9_ < 3 ? int(_loc9_ + 1) : int(4));
            }
         }
         var _loc2_:Array = new Array();
         _loc2_[0] = new Array();
         var _loc3_:Class = AssetCache.getAssetFromCache("Component_LevelOfTheDay_Calendar");
         for(_loc4_ = 0; _loc4_ < 7; _loc4_++)
         {
            _loc16_ = new _loc3_();
            _loc16_.TextField_Position.text = "";
            if(param1["level-" + _loc4_] == null)
            {
               _loc16_.MovieClip_CalendarBase.gotoAndStop(1);
            }
            else if(param1["score-" + _loc4_] == null)
            {
               _loc16_.MovieClip_CalendarBase.gotoAndStop(5);
            }
            else if(param1["position-" + _loc4_] != null)
            {
               _loc19_ = param1["position-" + _loc4_];
               if(_loc19_ <= 3)
               {
                  _loc16_.MovieClip_CalendarBase.gotoAndStop(1 + _loc19_);
               }
               else
               {
                  _loc16_.MovieClip_CalendarBase.gotoAndStop(1);
                  _loc16_.TextField_Position.text = _loc19_.toString();
               }
            }
            _loc17_ = "";
            switch(_loc4_)
            {
               case 0:
                  _loc17_ = "Mon";
                  break;
               case 1:
                  _loc17_ = "Tue";
                  break;
               case 2:
                  _loc17_ = "Wed";
                  break;
               case 3:
                  _loc17_ = "Thu";
                  break;
               case 4:
                  _loc17_ = "Fri";
                  break;
               case 5:
                  _loc17_ = "Sat";
                  break;
               case 6:
                  _loc17_ = "Sun";
                  break;
            }
            _loc16_.TextField_Day.text = _loc17_;
            _loc18_ = <Button/>;
            _loc18_.@name = "score_" + _loc4_;
            _loc18_.@MouseUp = "score_" + _loc4_;
            _loc2_[0].push(new Array(_loc18_,null,_loc16_));
         }
         (mUIView.getItemByName("Repeater_WeeklyRace_Calendar") as UIRepeaterRovio).loadTabs(_loc2_);
         (mUIView.getItemByName("Repeater_WeeklyRace_Calendar") as UIRepeaterRovio).setVisibleTab("Repeater_WeeklyRace_Calendar_Tab_0");
      }
   }
}
