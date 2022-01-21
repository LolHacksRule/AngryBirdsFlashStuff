package §9!$§
{
   import §#!q§.§`q§;
   import §+$§.§[!a§;
   import §3<§.§-2§;
   import §7!N§.§0-§;
   import §7E§.§ =§;
   import §<l§.§@0§;
   import §[h§.§ !&§;
   import §[h§.§ set§;
   import §[h§.§@!%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §@!%§
   {
      
      public static const §2!R§:String = "StateHighScores";
      
      public static const §3!K§:String = "StateDisableHighScores";
      
      public static const §!!k§:String = "StateLoadingLevelHighScores";
      
      public static const §0!D§:String = "2-9";
      
      public static const §9!J§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8");
      
      public static const §+!m§:Array = ["1","2","1","2","3","1","2","3"];
      
      public static const §0X§:int = 10;
      
      public static const §2!d§:int = 5;
      
      public static const §7!-§:uint = 16711680;
       
      
      private var §4!a§:String = null;
      
      private var §0!?§:Array;
      
      private var §@=§:int = 2;
      
      private var §],§:String = null;
      
      private var §;t§:Array;
      
      private var §in§:§ !&§;
      
      private var §"!F§:MovieClip = null;
      
      private var §@<§:Number = 0;
      
      private var §?d§:int = 0;
      
      private var §,!c§:Boolean = false;
      
      private var §+!l§:Array;
      
      public var §,-§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         this.§+!l§ = [];
         super();
         this.reset();
      }
      
      public function §91§() : void
      {
         this.§,-§ = !this.§,-§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§9`§ = null;
         this.§0!?§ = [];
         this.§@=§ = 0;
         for each(_loc1_ in §9!J§)
         {
            _loc2_ = new §9`§(_loc1_);
            this.§0!?§.push(_loc2_);
         }
         this.§],§ = null;
         this.§"!F§ = null;
         this.§@<§ = 0;
         this.§?d§ = 0;
         this.§,!c§ = false;
      }
      
      public function § w§(param1:XML, param2:§ !&§, param3:§-2§, param4:§ =§, param5:MovieClip = null) : void
      {
         this.§in§ = new § !&§(param1,param2,param3,param5);
         this.§+!l§ = this.§in§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §?J§(param1:Boolean) : void
      {
         this.§in§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§in§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§in§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§in§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§in§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableLoginButton(param1:Boolean = true) : void
      {
         this.§in§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§in§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§in§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§in§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§in§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§in§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§in§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§in§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§in§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§in§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§in§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§in§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function §@W§(param1:Boolean = true) : void
      {
         this.§in§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§in§.getItemByName("Button_Language_Chinese").setEnabled(param1);
         if(param1)
         {
            this.§in§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§in§.getItemByName("Button_Language_English").setVisibility(true);
            this.§in§.getItemByName("Button_Language_Chinese").mClip.alpha = 1;
            this.§in§.getItemByName("Button_Language_Chinese").setVisibility(true);
            this.§in§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 1;
            this.§in§.getItemByName("MovieClip_Language_Selected_China").setVisibility(true);
            this.§in§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 1;
            this.§in§.getItemByName("MovieClip_Language_Selected_English").setVisibility(true);
         }
         else
         {
            this.§in§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§in§.getItemByName("Button_Language_Chinese").mClip.alpha = 0.6;
            this.§in§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 0.6;
            this.§in§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §65§(param1:Boolean = true) : void
      {
         this.§in§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§in§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§in§.getItemByName("Button_Mute").setVisibility(true);
            this.§in§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§in§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§in§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§in§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §6,§() : void
      {
         var _loc1_:Boolean = false;
         if(§`q§.§9$§.getLanguage() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§in§.getItemByName("MovieClip_Language_Selected_China").setVisibility(!_loc1_);
         this.§in§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function getScoreLoaderById(param1:String) : §9`§
      {
         var _loc2_:§9`§ = null;
         for each(_loc2_ in this.§0!?§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         var _loc4_:§9`§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§9!J§[this.§@a§(this.§@=§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§9!J§[this.§0!c§(this.§@=§)]);
               break;
            case "UP":
               if((_loc4_ = this.getScoreLoaderById(this.§],§)) != null)
               {
                  _loc4_.§+A§();
                  this.§7!e§(this.§],§,false);
                  break;
               }
               break;
            case "DOWN":
               if(_loc4_ = this.getScoreLoaderById(this.§],§))
               {
                  _loc4_.§7&§();
                  this.§7!e§(this.§],§,false);
                  break;
               }
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §2!R§:
               this.§in§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§in§.getItemByName("TextField_Level_Num") as § set§).§ !K§.text = "";
               this.§in§.setObjectToFront(this.§in§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§in§.setObjectToFront(this.§in§.getItemByName("Container_Highscores"));
               this.§in§.setObjectToFront(this.§in§.getItemByName("Container_Sidebar_Buttons"));
               this.§in§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§in§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§in§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§in§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§in§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§in§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§in§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§in§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§in§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§in§.getItemByName("TextField_MyScoreNumber").setVisibility(true);
               this.§in§.getItemByName("TextField_MyScoreName").setVisibility(true);
               if(§0-§.§-5§(this.§],§))
               {
                  this.§],§ = "2-3";
               }
               this.loadScoreTable(this.§],§,param2);
               break;
            case §3!K§:
               this.§in§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§in§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§in§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§in§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§in§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§in§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§in§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§in§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§in§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§in§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§in§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§in§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHighScoreTab(false);
               break;
            case §!!k§:
               this.§in§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§in§.setObjectToFront(this.§in§.getItemByName("MovieClip_LoadingHiScores"));
               this.§in§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§in§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§in§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§in§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§in§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§in§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§in§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§in§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§in§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§in§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§in§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHelpButton(false);
               this.enableLoginButton(false);
               this.enableLogOutButton(false);
               this.enableHighScoreTab(false);
               this.§@W§(false);
               this.§65§(false);
         }
         this.§4!a§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§in§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
         }
         else
         {
            this.§in§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
         }
      }
      
      private function §@a§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§9!J§.length - 1)
         {
            param1 = 2;
         }
         return param1;
      }
      
      private function §0!c§(param1:int) : int
      {
         param1--;
         if(param1 < 2)
         {
            param1 = HighscoreSidebar.§9!J§.length - 1;
         }
         return param1;
      }
      
      public function §!p§(param1:§9`§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §0-§.§6!&§)
         {
            _loc4_ = param1.§[`§;
            do
            {
               _loc3_++;
               param1.§7&§();
               _loc5_ = param1.§7%§;
               _loc6_ = 0;
               while(_loc6_ < §0X§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §0X§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §0-§.§6!&§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §2!d§)
                  {
                     _loc2_ = true;
                     param1.§+A§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §7!e§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §9!J§)
         {
            if(_loc3_ == param1 && !§0-§.§-5§(param1))
            {
               this.§],§ = param1;
               this.§0l§(param1);
               (this.§in§.getItemByName("TextField_MyScoreNumber") as § set§).§ !K§.text = "" + §9!_§.§1!?§.§<!d§(param1);
               break;
            }
         }
         if(this.§in§)
         {
            _loc5_ = this.§in§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§9`§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§5!I§)
         {
            if(_loc4_.§[`§)
            {
               if(param2)
               {
                  this.§!p§(_loc4_);
               }
               this.§6y§(_loc4_.§[`§,_loc4_.§7%§);
               this.§0!I§();
               this.§?J§(true);
               this.§in§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§in§.setObjectToFront(this.§in§.getItemByName("Container_Highscores"));
               this.§"!4§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§61§.§0K§,this.§=]§);
         }
      }
      
      private function §"!4§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               this.§in§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§in§.getItemByName("MovieClip_Mc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               this.§in§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§in§.getItemByName("MovieClip_Mc").setVisibility(false);
            }
            levelNameString = "-" + HighscoreSidebar.§+!m§[int(levelNum) - 1];
            (this.§in§.getItemByName("TextField_Level_Num") as § set§).§ !K§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §=]§(param1:Event) : void
      {
         var _loc2_:§9`§ = param1.currentTarget as §9`§;
         _loc2_.removeEventListener(§61§.§0K§,this.§=]§);
         this.§],§ = _loc2_.levelId;
         var _loc3_:String = this.§],§;
         this.§"!4§(_loc3_);
         this.§!p§(_loc2_);
         this.§6y§(_loc2_.§[`§,_loc2_.§7%§);
         this.§0!I§();
         this.§2P§();
         this.§?J§(true);
         this.§in§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§in§.setObjectToFront(this.§in§.getItemByName("Container_Highscores"));
         this.§7!e§(this.§],§);
      }
      
      private function §0!I§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §0-§.§6!&§;
         if(this.§4!a§ == §2!R§)
         {
            for each(_loc2_ in §9!J§)
            {
               if(_loc2_ == this.§],§ && !§0-§.§-5§(_loc2_))
               {
                  this.§0l§(this.§],§);
                  (this.§in§.getItemByName("TextField_MyScoreNumber") as § set§).§ !K§.text = "" + §9!_§.§1!?§.§<!d§(this.§],§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§#v§(param1);
      }
      
      private function §2P§(param1:Boolean = true) : void
      {
         this.§?d§ = 0;
         this.§,!c§ = param1;
         this.§@<§ = 0;
      }
      
      private function §#v§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§in§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§in§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§,!c§)
         {
            if(this.§"!F§)
            {
               this.§"!F§.filters = [new GlowFilter(16777215,1,32,8,this.§@<§,5,false,false)];
               for each(_loc4_ in this.§+!l§)
               {
                  this.§"!F§.filters.push(_loc4_);
               }
            }
            if(int((this.§in§.getItemByName("TextField_MyScoreNumber") as § set§).§ !K§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§@<§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§@<§,3,false,false)];
               for each(_loc4_ in this.§+!l§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§?d§ > 3)
            {
               this.§@<§ = 0;
               this.§?d§ = 0;
               this.§"!F§ = null;
               this.§,!c§ = false;
            }
            if(this.§?d§ % 2 == 0)
            {
               this.§@<§ += param1 / 200;
               if(this.§@<§ > 5.5)
               {
                  this.§@<§ = 5.5;
                  ++this.§?d§;
               }
            }
            else
            {
               this.§@<§ -= param1 / 200;
               if(this.§@<§ < 0)
               {
                  this.§@<§ = 0;
                  ++this.§?d§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§+!l§;
            _loc3_.filters = this.§+!l§;
            if(this.§"!F§)
            {
               this.§"!F§.filters = this.§+!l§;
            }
         }
      }
      
      private function §6y§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§;t§ = param1;
         if(!this.§in§)
         {
            return;
         }
         var _loc4_:Class = §@0§.§5+§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§in§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§"!F§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §0X§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §0X§;
            try
            {
               _loc10_ = param1[_loc8_];
            }
            catch(e:Error)
            {
            }
            (_loc9_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
            if(_loc10_)
            {
               if(§0-§.§6!&§ && _loc10_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc9_.TextField_Name.text = _loc10_.nickName;
               _loc9_.TextField_Points.text = _loc10_.score;
               if(_loc3_)
               {
                  _loc9_.TextField_Rank.textColor = §7!-§;
                  _loc9_.TextField_Name.textColor = §7!-§;
                  _loc9_.TextField_Points.textColor = §7!-§;
                  this.§"!F§ = _loc9_;
               }
            }
            else
            {
               _loc9_.TextField_Name.text = "";
               _loc9_.TextField_Points.text = "0";
            }
            _loc9_.y = _loc6_;
            _loc6_ += 19;
            _loc5_.addChild(_loc9_);
            _loc7_++;
         }
      }
      
      public function §0l§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§9!J§)
         {
            if(_loc3_ == param1)
            {
               this.§@=§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§9`§ = null;
         for each(_loc4_ in this.§0!?§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§=!A§(param2) == false)
               {
                  if(param3)
                  {
                     this.§?J§(false);
                     this.§in§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§in§.setObjectToFront(this.§in§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§6y§(_loc4_.§[`§,_loc4_.§7%§);
                     this.§0!I§();
                     this.§7!e§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§?J§(false);
                  this.§in§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§in§.setObjectToFront(this.§in§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§61§.§0K§,this.§=]§);
                  break;
               }
            }
         }
      }
      
      public function §<e§() : void
      {
         var _loc1_:§9`§ = null;
         for each(_loc1_ in this.§0!?§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§ !&§ = null;
         this.§?J§(false);
         if(this.§in§)
         {
            _loc1_ = this.§in§.getItemByName("HighscoreSidebar") as § !&§;
            this.§in§.clear();
            this.§in§ = null;
         }
      }
      
      public function get §#U§() : int
      {
         return this.§@=§;
      }
      
      public function set container(param1:§ !&§) : void
      {
         this.§in§ = param1;
      }
      
      public function get container() : § !&§
      {
         return this.§in§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§],§;
      }
      
      public function get §!U§() : String
      {
         return this.§4!a§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§],§ = param1;
      }
   }
}
