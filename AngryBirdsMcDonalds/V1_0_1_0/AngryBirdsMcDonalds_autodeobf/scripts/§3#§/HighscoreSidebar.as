package §3#§
{
   import §#Z§.§?R§;
   import §,![§.§'!S§;
   import §,![§.§@o§;
   import §,![§.§[!S§;
   import §-1§.§%#§;
   import §1!D§.§0S§;
   import §9!8§.§0!7§;
   import §?H§.§>!!§;
   import §^5§.§]!,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §@o§
   {
      
      public static const §0C§:String = "StateHighScores";
      
      public static const §-I§:String = "StateDisableHighScores";
      
      public static const §0P§:String = "StateLoadingLevelHighScores";
      
      public static const §"!L§:String = "2-9";
      
      public static const §8t§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8");
      
      public static const §2E§:Array = ["1","2","1","2","3","1","2","3"];
      
      public static const §]`§:int = 10;
      
      public static const §+!K§:int = 5;
      
      public static const §7Z§:uint = 16711680;
       
      
      private var §-!W§:String = null;
      
      private var §0K§:Array;
      
      private var §9!o§:int = 2;
      
      private var §%T§:String = null;
      
      private var §,!U§:Array;
      
      private var §+g§:§[!S§;
      
      private var §;!^§:MovieClip = null;
      
      private var §<y§:Number = 0;
      
      private var §1!^§:int = 0;
      
      private var §+B§:Boolean = false;
      
      private var §^k§:Array;
      
      public var §,&§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         this.§^k§ = [];
         super();
         this.reset();
      }
      
      public function §5!M§() : void
      {
         this.§,&§ = !this.§,&§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§5!J§ = null;
         this.§0K§ = [];
         this.§9!o§ = 0;
         for each(_loc1_ in §8t§)
         {
            _loc2_ = new §5!J§(_loc1_);
            this.§0K§.push(_loc2_);
         }
         this.§%T§ = null;
         this.§;!^§ = null;
         this.§<y§ = 0;
         this.§1!^§ = 0;
         this.§+B§ = false;
      }
      
      public function §>!&§(param1:XML, param2:§[!S§, param3:§0!7§, param4:§]!,§, param5:MovieClip = null) : void
      {
         this.§+g§ = new §[!S§(param1,param2,param3,param5);
         this.§^k§ = this.§+g§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §5!l§(param1:Boolean) : void
      {
         this.§+g§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§+g§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§+g§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§+g§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§+g§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableLoginButton(param1:Boolean = true) : void
      {
         this.§+g§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§+g§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§+g§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§+g§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§+g§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§+g§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§+g§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§+g§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§+g§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§+g§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§+g§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§+g§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function §&!#§(param1:Boolean = true) : void
      {
         this.§+g§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§+g§.getItemByName("Button_Language_Chinese").setEnabled(param1);
         if(param1)
         {
            this.§+g§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§+g§.getItemByName("Button_Language_English").setVisibility(true);
            this.§+g§.getItemByName("Button_Language_Chinese").mClip.alpha = 1;
            this.§+g§.getItemByName("Button_Language_Chinese").setVisibility(true);
            this.§+g§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 1;
            this.§+g§.getItemByName("MovieClip_Language_Selected_China").setVisibility(true);
            this.§+g§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 1;
            this.§+g§.getItemByName("MovieClip_Language_Selected_English").setVisibility(true);
         }
         else
         {
            this.§+g§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§+g§.getItemByName("Button_Language_Chinese").mClip.alpha = 0.6;
            this.§+g§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 0.6;
            this.§+g§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §+!5§(param1:Boolean = true) : void
      {
         this.§+g§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§+g§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§+g§.getItemByName("Button_Mute").setVisibility(true);
            this.§+g§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§+g§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§+g§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§+g§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §!!D§() : void
      {
         var _loc1_:Boolean = false;
         if(§0S§.§>E§.getLanguage() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§+g§.getItemByName("MovieClip_Language_Selected_China").setVisibility(!_loc1_);
         this.§+g§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function getScoreLoaderById(param1:String) : §5!J§
      {
         var _loc2_:§5!J§ = null;
         for each(_loc2_ in this.§0K§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         var _loc4_:§5!J§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§8t§[this.§5!R§(this.§9!o§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§8t§[this.§?! §(this.§9!o§)]);
               break;
            case "UP":
               if((_loc4_ = this.getScoreLoaderById(this.§%T§)) != null)
               {
                  _loc4_.§>S§();
                  this.§1"§(this.§%T§,false);
                  break;
               }
               break;
            case "DOWN":
               if(_loc4_ = this.getScoreLoaderById(this.§%T§))
               {
                  _loc4_.§;8§();
                  this.§1"§(this.§%T§,false);
                  break;
               }
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §0C§:
               this.§+g§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§+g§.getItemByName("TextField_Level_Num") as §'!S§).§'!Z§.text = "";
               this.§+g§.setObjectToFront(this.§+g§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§+g§.setObjectToFront(this.§+g§.getItemByName("Container_Highscores"));
               this.§+g§.setObjectToFront(this.§+g§.getItemByName("Container_Sidebar_Buttons"));
               this.§+g§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§+g§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§+g§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§+g§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§+g§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§+g§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§+g§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§+g§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§+g§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§+g§.getItemByName("TextField_MyScoreNumber").setVisibility(true);
               this.§+g§.getItemByName("TextField_MyScoreName").setVisibility(true);
               if(§>!!§.§8S§(this.§%T§))
               {
                  this.§%T§ = "2-3";
               }
               this.loadScoreTable(this.§%T§,param2);
               break;
            case §-I§:
               this.§+g§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§+g§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§+g§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§+g§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§+g§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§+g§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§+g§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§+g§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§+g§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§+g§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§+g§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§+g§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHighScoreTab(false);
               break;
            case §0P§:
               this.§+g§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§+g§.setObjectToFront(this.§+g§.getItemByName("MovieClip_LoadingHiScores"));
               this.§+g§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§+g§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§+g§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§+g§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§+g§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§+g§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§+g§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§+g§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§+g§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§+g§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§+g§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHelpButton(false);
               this.enableLoginButton(false);
               this.enableLogOutButton(false);
               this.enableHighScoreTab(false);
               this.§&!#§(false);
               this.§+!5§(false);
         }
         this.§-!W§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+g§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
         }
         else
         {
            this.§+g§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
         }
      }
      
      private function §5!R§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§8t§.length - 1)
         {
            param1 = 2;
         }
         return param1;
      }
      
      private function §?! §(param1:int) : int
      {
         param1--;
         if(param1 < 2)
         {
            param1 = HighscoreSidebar.§8t§.length - 1;
         }
         return param1;
      }
      
      public function §]u§(param1:§5!J§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §>!!§.§^!4§)
         {
            _loc4_ = param1.§;`§;
            do
            {
               _loc3_++;
               param1.§;8§();
               _loc5_ = param1.§ !^§;
               _loc6_ = 0;
               while(_loc6_ < §]`§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §]`§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §>!!§.§^!4§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §+!K§)
                  {
                     _loc2_ = true;
                     param1.§>S§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §1"§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §8t§)
         {
            if(_loc3_ == param1 && !§>!!§.§8S§(param1))
            {
               this.§%T§ = param1;
               this.§&!f§(param1);
               (this.§+g§.getItemByName("TextField_MyScoreNumber") as §'!S§).§'!Z§.text = "" + §;!4§.§8'§.§5F§(param1);
               break;
            }
         }
         if(this.§+g§)
         {
            _loc5_ = this.§+g§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§5!J§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§-!b§)
         {
            if(_loc4_.§;`§)
            {
               if(param2)
               {
                  this.§]u§(_loc4_);
               }
               this.§]!D§(_loc4_.§;`§,_loc4_.§ !^§);
               this.§[P§();
               this.§5!l§(true);
               this.§+g§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§+g§.setObjectToFront(this.§+g§.getItemByName("Container_Highscores"));
               this.§,<§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§`?§.§=!_§,this.§9o§);
         }
      }
      
      private function §,<§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               this.§+g§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§+g§.getItemByName("MovieClip_Mc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               this.§+g§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§+g§.getItemByName("MovieClip_Mc").setVisibility(false);
            }
            levelNameString = "-" + HighscoreSidebar.§2E§[int(levelNum) - 1];
            (this.§+g§.getItemByName("TextField_Level_Num") as §'!S§).§'!Z§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §9o§(param1:Event) : void
      {
         var _loc2_:§5!J§ = param1.currentTarget as §5!J§;
         _loc2_.removeEventListener(§`?§.§=!_§,this.§9o§);
         this.§%T§ = _loc2_.levelId;
         var _loc3_:String = this.§%T§;
         this.§,<§(_loc3_);
         this.§]u§(_loc2_);
         this.§]!D§(_loc2_.§;`§,_loc2_.§ !^§);
         this.§[P§();
         this.§[!O§();
         this.§5!l§(true);
         this.§+g§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§+g§.setObjectToFront(this.§+g§.getItemByName("Container_Highscores"));
         this.§1"§(this.§%T§);
      }
      
      private function §[P§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §>!!§.§^!4§;
         if(this.§-!W§ == §0C§)
         {
            for each(_loc2_ in §8t§)
            {
               if(_loc2_ == this.§%T§ && !§>!!§.§8S§(_loc2_))
               {
                  this.§&!f§(this.§%T§);
                  (this.§+g§.getItemByName("TextField_MyScoreNumber") as §'!S§).§'!Z§.text = "" + §;!4§.§8'§.§5F§(this.§%T§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§,%§(param1);
      }
      
      private function §[!O§(param1:Boolean = true) : void
      {
         this.§1!^§ = 0;
         this.§+B§ = param1;
         this.§<y§ = 0;
      }
      
      private function §,%§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§+g§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§+g§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§+B§)
         {
            if(this.§;!^§)
            {
               this.§;!^§.filters = [new GlowFilter(16777215,1,32,8,this.§<y§,5,false,false)];
               for each(_loc4_ in this.§^k§)
               {
                  this.§;!^§.filters.push(_loc4_);
               }
            }
            if(int((this.§+g§.getItemByName("TextField_MyScoreNumber") as §'!S§).§'!Z§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§<y§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§<y§,3,false,false)];
               for each(_loc4_ in this.§^k§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§1!^§ > 3)
            {
               this.§<y§ = 0;
               this.§1!^§ = 0;
               this.§;!^§ = null;
               this.§+B§ = false;
            }
            if(this.§1!^§ % 2 == 0)
            {
               this.§<y§ += param1 / 200;
               if(this.§<y§ > 5.5)
               {
                  this.§<y§ = 5.5;
                  ++this.§1!^§;
               }
            }
            else
            {
               this.§<y§ -= param1 / 200;
               if(this.§<y§ < 0)
               {
                  this.§<y§ = 0;
                  ++this.§1!^§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§^k§;
            _loc3_.filters = this.§^k§;
            if(this.§;!^§)
            {
               this.§;!^§.filters = this.§^k§;
            }
         }
      }
      
      private function §]!D§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§,!U§ = param1;
         if(!this.§+g§)
         {
            return;
         }
         var _loc4_:Class = §?R§.§>e§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§+g§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§;!^§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §]`§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §]`§;
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
               if(§>!!§.§^!4§ && _loc10_.isPlayer)
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
                  _loc9_.TextField_Rank.textColor = §7Z§;
                  _loc9_.TextField_Name.textColor = §7Z§;
                  _loc9_.TextField_Points.textColor = §7Z§;
                  this.§;!^§ = _loc9_;
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
      
      public function §&!f§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§8t§)
         {
            if(_loc3_ == param1)
            {
               this.§9!o§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§5!J§ = null;
         for each(_loc4_ in this.§0K§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§8H§(param2) == false)
               {
                  if(param3)
                  {
                     this.§5!l§(false);
                     this.§+g§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§+g§.setObjectToFront(this.§+g§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§]!D§(_loc4_.§;`§,_loc4_.§ !^§);
                     this.§[P§();
                     this.§1"§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§5!l§(false);
                  this.§+g§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§+g§.setObjectToFront(this.§+g§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§`?§.§=!_§,this.§9o§);
                  break;
               }
            }
         }
      }
      
      public function §]l§() : void
      {
         var _loc1_:§5!J§ = null;
         for each(_loc1_ in this.§0K§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§[!S§ = null;
         this.§5!l§(false);
         if(this.§+g§)
         {
            _loc1_ = this.§+g§.getItemByName("HighscoreSidebar") as §[!S§;
            this.§+g§.clear();
            this.§+g§ = null;
         }
      }
      
      public function get §"!T§() : int
      {
         return this.§9!o§;
      }
      
      public function set container(param1:§[!S§) : void
      {
         this.§+g§ = param1;
      }
      
      public function get container() : §[!S§
      {
         return this.§+g§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§%T§;
      }
      
      public function get §1K§() : String
      {
         return this.§-!W§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§%T§ = param1;
      }
   }
}
