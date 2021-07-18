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
      
      public function StateLevelOfTheDay(param1:Boolean = true, param2:String = "LevelOfTheDayState")
      {
         super(param1,param2);
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
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
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
      
      public function setUserImage(param1:String, param2:UserInfoModel) : void
      {
         var _loc6_:XML = null;
         var _loc3_:UIContainerRovio = mUIView.getItemByName(param1) as UIContainerRovio;
         var _loc4_:* = param1 + "_image";
         var _loc5_:UIMovieClipRovio;
         if((_loc5_ = _loc3_.getItemByName(_loc4_) as UIMovieClipRovio) == null)
         {
            if(!param2)
            {
               return;
            }
            (_loc6_ = <MovieClip/>).@name = _loc4_;
            _loc5_ = new UIMovieClipRovio(_loc6_,_loc3_,param2.getImageAsMovieClip());
            _loc3_.addComponent(_loc5_);
            _loc5_.changeMovieClip(param2.getImageAsMovieClip());
            _loc5_.setVisibility(true);
            return;
         }
         if(param2)
         {
            _loc5_.changeMovieClip(param2.getImageAsMovieClip());
            _loc5_.setVisibility(true);
         }
         else
         {
            _loc5_.setVisibility(false);
         }
      }
      
      public function dailySprintDataResponse(param1:Object) : void
      {
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Object = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         var _loc13_:MovieClip = null;
         var _loc14_:UserInfoModel = null;
         var _loc15_:Number = NaN;
         AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime = getTimer() + param1.timeLeft;
         mUIView.setText(AngryBirdsSocial.generateTimeLeftStr(AngryBirdsSocial.smLevelMain.mLevelOfDayEndTime),"TextField_DailySprint_Countdown");
         mUIView.setText(param1.topPercentage,"TextField_DailySprint_GlobalPercent");
         if(AngryBirdsSocial.USER.loggedIn)
         {
            (mUIView.getItemByName("Container_DailySprint_Player") as UIContainerRovio).mClip.addChild(AngryBirdsSocial.USER_INFO.getImage());
         }
         mUIView.getItemByName("MovieClip_DailySprint_Loading").setVisibility(false);
         mUIView.setText(param1.standing,"TextField_DailySprint_Position");
         var _loc2_:DisplayObject = LevelEditor.decodeImageData(param1.screenShot as String);
         _loc2_.scaleX = 0.5;
         _loc2_.scaleY = 0.5;
         var _loc3_:MovieClip = new MovieClip();
         _loc3_.addChild(_loc2_);
         (mUIView.getItemByName("MovieClip_DailySprint_Image") as UIMovieClipRovio).changeMovieClip(_loc3_);
         if(param1.scores != null)
         {
            (_loc4_ = new Array())[0] = new Array();
            _loc5_ = null;
            _loc6_ = null;
            _loc7_ = 0;
            _loc8_ = 0;
            _loc9_ = 0;
            _loc7_ = 0;
            while(_loc7_ < param1.scores.length)
            {
               if(param1.scores[_loc7_].username == AngryBirdsSocial.USER.name)
               {
                  _loc5_ = param1.scores[_loc7_];
                  _loc8_ = _loc7_ + 1;
                  if(_loc7_ > 0)
                  {
                     _loc6_ = param1.scores[_loc7_ - 1];
                     _loc8_ = _loc7_;
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
               _loc7_++;
            }
            if(_loc5_ == null)
            {
               _loc5_ = {
                  "username":AngryBirdsSocial.USER.name,
                  "score":0,
                  "image":AngryBirdsSocial.USER_INFO.imageUrl,
                  "prize":0
               };
               _loc6_ = param1.scores[param1.scores.length - 1];
               param1.scores.push(_loc5_);
               _loc8_ = param1.scores.length;
               _loc9_ = param1.scores.length - 1;
            }
            _loc7_ = 0;
            while(_loc7_ < param1.scores.length || _loc7_ < 5)
            {
               _loc10_ = param1.scores[_loc7_];
               (_loc11_ = <Button/>).@name = "Friend" + _loc7_;
               _loc11_.@MouseUp = "Friend" + _loc7_;
               _loc12_ = null;
               _loc13_ = new (_loc12_ = AssetCache.getAssetFromCache("Component_LevelOfTheDay_FriendScore"))();
               if(_loc10_ != null)
               {
                  if((_loc14_ = AngryBirdsSocial.getUserInfo(_loc10_.username)) == null)
                  {
                     (_loc14_ = new UserInfoModel()).userName = _loc10_.username;
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
               _loc13_.MovieClip_Medal.gotoAndStop(_loc7_ < 3 ? _loc7_ + 1 : 4);
               (_loc4_[0] as Array).push(new Array(_loc11_,null,_loc13_));
               _loc7_++;
            }
            (mUIView.getItemByName("Repeater_DailySprint_FriendList") as UIRepeaterRovio).loadTabs(_loc4_);
            (mUIView.getItemByName("Repeater_DailySprint_FriendList") as UIRepeaterRovio).setVisibleTab("Repeater_DailySprint_FriendList_Tab_0");
            if(_loc5_ != null)
            {
               mUIView.setText(_loc5_.score.toString(),"TextField_DailySprint_LevelScore");
               mUIView.setText(_loc5_.score.toString(),"TextField_DailySprint_LevelScore_Leading");
               mUIView.setText(_loc5_.prize.toString(),"TextField_DailySprint_PlayerPrize");
               mUIView.setText(_loc5_.prize.toString(),"TextField_DailySprint_PlayerPrize_Leading");
               if(AngryBirdsSocial.USER_INFO)
               {
                  this.setUserImage("Container_DailySprint_Player",AngryBirdsSocial.USER_INFO);
                  this.setUserImage("Container_DailySprint_Player_Leading",AngryBirdsSocial.USER_INFO);
               }
               (mUIView.getItemByName("MovieClip_DailySprint_PlayerMedal") as UIMovieClipRovio).StopAt(_loc8_ < 3 ? int(_loc8_ + 1) : 4);
               (mUIView.getItemByName("MovieClip_DailySprint_PlayerMedal_Leading") as UIMovieClipRovio).StopAt(_loc8_ < 3 ? int(_loc8_ + 1) : 4);
            }
            if(_loc6_ != null)
            {
               mUIView.setText(_loc6_.score.toString(),"TextField_DailySprint_FriendScore");
               mUIView.setText(_loc6_.prize.toString(),"TextField_DailySprint_FriendPrize");
               if(AngryBirdsSocial.getUserInfo(_loc6_.username) != null)
               {
                  this.setUserImage("Container_DailySprint_Friend",AngryBirdsSocial.getUserInfo(_loc6_.username));
               }
               _loc15_ = parseInt(_loc6_.score);
               if(_loc5_ != null)
               {
                  _loc15_ -= parseInt(_loc5_.score);
               }
               mUIView.setText(_loc15_.toString(),"TextField_DailySprint_ScoreNeeded");
               (mUIView.getItemByName("MovieClip_DailySprint_FriendMedal") as UIMovieClipRovio).StopAt(_loc9_ < 3 ? int(_loc9_ + 1) : 4);
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
            (_loc5_ = new Array())[0] = new Array();
            _loc6_ = null;
            _loc7_ = null;
            _loc4_ = 0;
            _loc8_ = 0;
            _loc9_ = 0;
            _loc4_ = 0;
            while(_loc4_ < param1.scores.length)
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
               _loc4_++;
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
               (_loc11_ = <Button/>).@name = "Friend" + _loc4_;
               _loc11_.@MouseUp = "Friend" + _loc4_;
               _loc12_ = null;
               _loc13_ = new (_loc12_ = AssetCache.getAssetFromCache("Component_LevelOfTheDay_FriendScoreWeek"))();
               if(_loc10_ != null)
               {
                  if((_loc14_ = AngryBirdsSocial.getUserInfo(_loc10_.username)) == null)
                  {
                     (_loc14_ = new UserInfoModel()).userName = _loc10_.username;
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
               (mUIView.getItemByName("MovieClip_WeeklyRace_PlayerTrophy") as UIMovieClipRovio).StopAt(_loc8_ < 3 ? int(_loc8_ + 1) : 4);
               (mUIView.getItemByName("MovieClip_WeeklyRace_PlayerTrophy_Leading") as UIMovieClipRovio).StopAt(_loc8_ < 3 ? int(_loc8_ + 1) : 4);
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
               (mUIView.getItemByName("MovieClip_WeeklyRace_FriendTrophy") as UIMovieClipRovio).StopAt(_loc9_ < 3 ? int(_loc9_ + 1) : 4);
            }
         }
         var _loc2_:Array = new Array();
         _loc2_[0] = new Array();
         var _loc3_:Class = AssetCache.getAssetFromCache("Component_LevelOfTheDay_Calendar");
         _loc4_ = 0;
         while(_loc4_ < 7)
         {
            (_loc16_ = new _loc3_()).TextField_Position.text = "";
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
               if((_loc19_ = param1["position-" + _loc4_]) <= 3)
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
            (_loc18_ = <Button/>).@name = "score_" + _loc4_;
            _loc18_.@MouseUp = "score_" + _loc4_;
            _loc2_[0].push(new Array(_loc18_,null,_loc16_));
            _loc4_++;
         }
         (mUIView.getItemByName("Repeater_WeeklyRace_Calendar") as UIRepeaterRovio).loadTabs(_loc2_);
         (mUIView.getItemByName("Repeater_WeeklyRace_Calendar") as UIRepeaterRovio).setVisibleTab("Repeater_WeeklyRace_Calendar_Tab_0");
      }
   }
}
