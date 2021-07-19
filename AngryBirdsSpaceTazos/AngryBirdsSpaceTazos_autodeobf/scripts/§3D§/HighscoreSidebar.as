package §3D§
{
   import § !Y§.§&$§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §7!0§.§";§;
   import §7!B§.§@!^§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §>!@§:String = "StateHighScores";
      
      public static const §9"§:String = "StateOverall";
      
      public static const §[x§:String = "StateDisableHighScores";
      
      public static const §`!9§:String = "StateLoadingLevelHighScores";
      
      public static const TOP_OVERALL_SCORES_EPISODE_1:String = "TopOverallScoresEpisode1";
      
      public static const TOP_OVERALL_SCORES_EPISODE_2:String = "TopOverallScoresEpisode2";
      
      public static const TOP_OVERALL_SCORES_EPISODE_3:String = "TopOverallScoresEpisode3";
      
      public static const §?2§:String = "credits_level";
      
      public static const §#;§:Array = new Array("1-1","1-2","1-3","2-1","2-2","2-3","3-1","3-2","3-3");
      
      public static const § true§:Array = ["I","II","III","IV","V","VI","VII","VIII","IX"];
      
      public static const §!]§:int = 3;
      
      public static const §0!I§:int = 10;
      
      public static const §-!-§:int = 5;
      
      public static const §!"E§:uint = 16711680;
       
      
      private var §']§:String = null;
      
      private var §]"<§:Array;
      
      private var §@!-§:int = 0;
      
      private var §@@§:String = null;
      
      private var §%-§:Array;
      
      private var §[S§:§ ",§;
      
      private var §["'§:MovieClip = null;
      
      private var §="&§:Number = 0;
      
      private var §'!V§:int = 0;
      
      private var §"">§:Boolean = false;
      
      private var §^2§:Array;
      
      public var §=";§:Boolean = false;
      
      private var §9I§:Boolean = true;
      
      private var § 0§:String;
      
      private var mDefaultEpisodeNameImagePosition1:Number;
      
      private var mDefaultEpisodeNameImagePosition2:Number;
      
      private var mDefaultEpisodeNameImagePosition3:Number;
      
      private var §package§:Boolean;
      
      private var §<!;§:Boolean;
      
      private var §0"0§:Number;
      
      public function HighscoreSidebar()
      {
         this.§^2§ = [];
         super();
         this.reset();
      }
      
      public function §;D§() : void
      {
         this.§=";§ = !this.§=";§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§"!g§ = null;
         this.§]"<§ = [];
         this.§@!-§ = 0;
         for each(_loc1_ in §#;§)
         {
            _loc2_ = new §"!g§(_loc1_);
            this.§]"<§.push(_loc2_);
         }
         _loc2_ = new §"!g§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1);
         this.§]"<§.push(_loc2_);
         _loc2_ = new §"!g§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2);
         this.§]"<§.push(_loc2_);
         _loc2_ = new §"!g§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3);
         this.§]"<§.push(_loc2_);
         this.§@@§ = TOP_OVERALL_SCORES_EPISODE_1;
         this.§["'§ = null;
         this.§="&§ = 0;
         this.§'!V§ = 0;
         this.§"">§ = false;
         this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         this.§0"0§ = 0;
      }
      
      public function §=y§(param1:§ ",§) : void
      {
         this.§[S§ = param1;
         this.§^2§ = this.§[S§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.mDefaultEpisodeNameImagePosition1 = this.§[S§.getItemByName("MovieClip_Moon").x;
         this.mDefaultEpisodeNameImagePosition2 = this.§[S§.getItemByName("MovieClip_Mc").x;
         this.mDefaultEpisodeNameImagePosition3 = this.§[S§.getItemByName("MovieClip_Ep3").x;
         this.changeState(this.§']§);
      }
      
      private function §;"&§(param1:Boolean) : void
      {
         this.§[S§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §4"1§(param1:Boolean = true) : void
      {
         this.§[S§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§[S§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§[S§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§[S§.getItemByName("Button_Credits").visible)
         {
            this.§[S§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§package§ = param1;
      }
      
      public function §2E§(param1:Boolean = true) : void
      {
         this.§[S§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§[S§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§[S§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§[S§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function §0!s§(param1:Boolean = true) : void
      {
         this.§[S§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§[S§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§[S§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§[S§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §@Z§(param1:Boolean = true) : void
      {
         this.§[S§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§[S§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§[S§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§[S§.getItemByName("Button_Tutorial").visible)
         {
            this.§[S§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§<!;§ = param1;
      }
      
      public function §^!Z§(param1:Boolean = true) : void
      {
         this.§[S§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§[S§.getItemByName("Button_Language_Spanish").setEnabled(param1);
         if(param1)
         {
            this.§[S§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§[S§.getItemByName("Button_Language_English").setVisibility(true);
            this.§[S§.getItemByName("Button_Language_Spanish").mClip.alpha = 1;
            this.§[S§.getItemByName("Button_Language_Spanish").setVisibility(true);
            this.§[S§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 1;
            this.§[S§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(true);
            this.§[S§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 1;
            this.§[S§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(true);
         }
         else
         {
            this.§[S§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§[S§.getItemByName("Button_Language_Spanish").mClip.alpha = 0.6;
            this.§[S§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 0.6;
            this.§[S§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §<[§(param1:Boolean = true) : void
      {
         this.§[S§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§[S§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§[S§.getItemByName("Button_Mute").setVisibility(true);
            this.§[S§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§[S§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§[S§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§[S§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §"!r§() : void
      {
         var _loc1_:Boolean = false;
         if(§&$§.§[!1§.§^!2§() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§[S§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(!_loc1_);
         this.§[S§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function §`"#§(param1:Boolean) : void
      {
         this.§[S§.getItemByName("Button_Selected_Levels").setVisibility(!param1);
         this.§[S§.getItemByName("Button_Selected_Overall").setVisibility(param1);
      }
      
      public function §?b§(param1:String) : §"!g§
      {
         var _loc2_:§"!g§ = null;
         for each(_loc2_ in this.§]"<§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §0!H§(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:§"!g§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.changeState(§>!@§);
               this.§,^§(HighscoreSidebar.§#;§[this.§@!-§]);
               break;
            case "BUTTON_OVERALL":
               this.changeState(§9"§);
               this.§,^§(this.§ 0§);
               break;
            case "RIGHT":
               if(this.§']§ == §9"§)
               {
                  this.§,^§(this.§+!`§());
               }
               else
               {
                  this.§,^§(HighscoreSidebar.§#;§[this.§5!F§(this.§@!-§)]);
               }
               break;
            case "LEFT":
               if(this.§']§ == §9"§)
               {
                  this.§,^§(this.§0!§());
               }
               else
               {
                  this.§,^§(HighscoreSidebar.§#;§[this.§7!&§(this.§@!-§)]);
               }
               break;
            case "UP":
               if(this.§']§ == §9"§)
               {
                  if((_loc4_ = this.§?b§(this.§ 0§)) != null)
                  {
                     _loc4_.§4!S§();
                     this.§-§(this.§ 0§,false);
                  }
               }
               else if((_loc4_ = this.§?b§(this.§@@§)) != null)
               {
                  _loc4_.§4!S§();
                  this.§-§(this.§@@§,false);
               }
               break;
            case "DOWN":
               if(this.§']§ == §9"§)
               {
                  if(_loc4_ = this.§?b§(this.§ 0§))
                  {
                     _loc4_.§case §();
                     this.§-§(this.§ 0§,false);
                  }
               }
               else if(_loc4_ = this.§?b§(this.§@@§))
               {
                  _loc4_.§case §();
                  this.§-§(this.§@@§,false);
               }
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         this.§']§ = param1;
         switch(param1)
         {
            case §>!@§:
               this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§[S§.getItemByName("TextField_Level_Num") as §&!>§).§ !'§.text = "";
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Board_Selection"));
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Highscores"));
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Sidebar_Buttons"));
               this.§[S§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§[S§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§[S§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§[S§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§[S§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§[S§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§[S§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§[S§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§[S§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§;a§();
               this.§`"#§(false);
               this.§,^§(this.§@@§,param2);
               break;
            case §9"§:
               this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§[S§.getItemByName("TextField_Level_Num") as §&!>§).§ !'§.text = "";
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Board_Selection"));
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Highscores"));
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Sidebar_Buttons"));
               this.§[S§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§[S§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§[S§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§[S§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§[S§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§[S§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§[S§.getItemByName("TextField_Level_Num").setVisibility(false);
               this.§[S§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§[S§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§;a§();
               this.§`"#§(true);
               this.§,^§(this.§ 0§,param2);
               break;
            case §[x§:
               this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§[S§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§[S§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§[S§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§[S§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§[S§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§[S§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§[S§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§[S§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§[S§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§-!2§();
               this.§<"0§(false);
               break;
            case §`!9§:
               this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("MovieClip_LoadingHiScores"));
               this.§[S§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§[S§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§[S§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§[S§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§[S§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§[S§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§[S§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§[S§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§[S§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§-!2§();
               this.§@Z§(false);
               this.§2E§(false);
               this.§0!s§(false);
               this.§<"0§(false);
               this.§^!Z§(false);
               this.§<[§(false);
         }
      }
      
      public function §<"0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[S§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§[S§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §5!F§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§#;§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §7!&§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§#;§.length - 1;
         }
         return param1;
      }
      
      private function §+!`§() : String
      {
         if(this.§ 0§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
         {
            this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
         }
         else if(this.§ 0§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
         {
            this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
         }
         else if(this.§ 0§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
         {
            this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         }
         return this.§ 0§;
      }
      
      private function §0!§() : String
      {
         if(this.§ 0§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
         {
            this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
         }
         else if(this.§ 0§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
         {
            this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         }
         else if(this.§ 0§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
         {
            this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
         }
         return this.§ 0§;
      }
      
      public function §^D§(param1:§"!g§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §@!^§.§2j§)
         {
            _loc4_ = param1.§-W§;
            do
            {
               _loc3_++;
               param1.§case §();
               _loc5_ = param1.§-s§;
               _loc6_ = 0;
               while(_loc6_ < §0!I§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §0!I§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §@!^§.§2j§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §-!-§)
                  {
                     _loc2_ = true;
                     param1.§4!S§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §-§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §#;§)
         {
            if(_loc3_ == param1 && !§@!^§.§5u§(param1))
            {
               this.§@@§ = param1;
               this.§ !9§(param1);
               this.§0"0§ = (§ !g§.§;!'§ as §`Y§).§]]§.§ !o§(param1);
               this.§6!,§();
               break;
            }
         }
         if(this.§']§ == §9"§)
         {
            this.§%"H§();
         }
         if(this.§[S§)
         {
            _loc5_ = this.§[S§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§"!g§;
         if((_loc4_ = this.§?b§(param1)) == null)
         {
            return;
         }
         if(_loc4_.§;!Q§)
         {
            if(_loc4_.§-W§)
            {
               if(param2)
               {
                  this.§^D§(_loc4_);
               }
               this.§%!i§(_loc4_.§-W§,_loc4_.§-s§);
               this.§%"H§();
               this.§;"&§(true);
               this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Highscores"));
               this.§ n§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§?3§.§]!f§,this.§5"9§);
         }
      }
      
      private function § n§(param1:String) : void
      {
         var episodeNum:int = 0;
         var levelNumInEpisode:int = 0;
         var levelNum:int = 0;
         var levelNameString:String = null;
         var positionFixX:Number = NaN;
         var levelName:String = param1;
         try
         {
            episodeNum = int(levelName.charAt(0)) - 1;
            levelNumInEpisode = int(levelName.substring(2));
            levelNum = levelNumInEpisode + §!]§ * episodeNum;
            if(levelName == "1-1" || levelName == "1-2" || levelName == "1-3" || levelName == TOP_OVERALL_SCORES_EPISODE_1)
            {
               this.§[S§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§[S§.getItemByName("MovieClip_Mc").setVisibility(true);
               this.§[S§.getItemByName("MovieClip_Ep3").setVisibility(false);
            }
            else if(levelName == "2-1" || levelName == "2-2" || levelName == "2-3" || levelName == TOP_OVERALL_SCORES_EPISODE_2)
            {
               this.§[S§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§[S§.getItemByName("MovieClip_Mc").setVisibility(false);
               this.§[S§.getItemByName("MovieClip_Ep3").setVisibility(false);
            }
            else if(levelName == "3-1" || levelName == "3-2" || levelName == "3-3" || levelName == TOP_OVERALL_SCORES_EPISODE_3)
            {
               this.§[S§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§[S§.getItemByName("MovieClip_Mc").setVisibility(false);
               this.§[S§.getItemByName("MovieClip_Ep3").setVisibility(true);
            }
            if(this.§']§ == §>!@§)
            {
               this.§[S§.getItemByName("MovieClip_Moon").x = this.mDefaultEpisodeNameImagePosition1;
               this.§[S§.getItemByName("MovieClip_Mc").x = this.mDefaultEpisodeNameImagePosition2;
               this.§[S§.getItemByName("MovieClip_Ep3").x = this.mDefaultEpisodeNameImagePosition3;
            }
            else
            {
               positionFixX = 12;
               this.§[S§.getItemByName("MovieClip_Moon").x = this.mDefaultEpisodeNameImagePosition1 + positionFixX;
               this.§[S§.getItemByName("MovieClip_Mc").x = this.mDefaultEpisodeNameImagePosition2 + positionFixX;
               this.§[S§.getItemByName("MovieClip_Ep3").x = this.mDefaultEpisodeNameImagePosition3 + positionFixX;
            }
            levelNameString = "- " + HighscoreSidebar.§ true§[int(levelNum) - 1];
            (this.§[S§.getItemByName("TextField_Level_Num") as §&!>§).§ !'§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §5"9§(param1:Event) : void
      {
         var _loc2_:§"!g§ = param1.currentTarget as §"!g§;
         _loc2_.removeEventListener(§?3§.§]!f§,this.§5"9§);
         this.§@@§ = _loc2_.levelId;
         var _loc3_:String = this.§@@§;
         this.§ n§(_loc3_);
         this.§^D§(_loc2_);
         this.§%!i§(_loc2_.§-W§,_loc2_.§-s§);
         this.§%"H§();
         this.§@!9§();
         this.§;"&§(true);
         this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Highscores"));
         this.§-§(this.§@@§);
      }
      
      private function §%"H§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §@!^§.§2j§;
         if(_loc1_.name)
         {
            (this.§[S§.getItemByName("TextField_MyScoreName") as §&!>§).§ !'§.text = _loc1_.name + ": " + this.§0"0§;
         }
         if(this.§']§ == §>!@§)
         {
            for each(_loc2_ in §#;§)
            {
               if(_loc2_ == this.§@@§ && !§@!^§.§5u§(_loc2_))
               {
                  this.§ !9§(this.§@@§);
                  this.§0"0§ = (§ !g§.§;!'§ as §`Y§).§]]§.§ !o§(this.§@@§);
                  this.§6!,§();
                  break;
               }
            }
         }
         else if(this.§']§ == §9"§)
         {
            if(this.§ 0§ == TOP_OVERALL_SCORES_EPISODE_1)
            {
               this.§0"0§ = §@!^§.§2j§.episodeScore1;
               this.§6!,§();
            }
            else if(this.§ 0§ == TOP_OVERALL_SCORES_EPISODE_2)
            {
               this.§0"0§ = §@!^§.§2j§.episodeScore2;
               this.§6!,§();
            }
            else if(this.§ 0§ == TOP_OVERALL_SCORES_EPISODE_3)
            {
               this.§0"0§ = §@!^§.§2j§.episodeScore3;
               this.§6!,§();
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§,a§(param1);
      }
      
      private function §@!9§(param1:Boolean = true) : void
      {
         this.§'!V§ = 0;
         this.§"">§ = param1;
         this.§="&§ = 0;
      }
      
      private function §,a§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§[S§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§[S§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§"">§)
         {
            if(this.§["'§)
            {
               this.§["'§.filters = [new GlowFilter(16777215,1,32,8,this.§="&§,5,false,false)];
               for each(_loc4_ in this.§^2§)
               {
                  this.§["'§.filters.push(_loc4_);
               }
            }
            if(int((this.§[S§.getItemByName("TextField_MyScoreNumber") as §&!>§).§ !'§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§="&§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§="&§,3,false,false)];
               for each(_loc4_ in this.§^2§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§'!V§ > 3)
            {
               this.§="&§ = 0;
               this.§'!V§ = 0;
               this.§["'§ = null;
               this.§"">§ = false;
            }
            if(this.§'!V§ % 2 == 0)
            {
               this.§="&§ += param1 / 200;
               if(this.§="&§ > 5.5)
               {
                  this.§="&§ = 5.5;
                  ++this.§'!V§;
               }
            }
            else
            {
               this.§="&§ -= param1 / 200;
               if(this.§="&§ < 0)
               {
                  this.§="&§ = 0;
                  ++this.§'!V§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§^2§;
            _loc3_.filters = this.§^2§;
            if(this.§["'§)
            {
               this.§["'§.filters = this.§^2§;
            }
         }
      }
      
      private function §%!i§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§%-§ = param1;
         if(!this.§[S§)
         {
            return;
         }
         var _loc4_:Class = § !h§.§["3§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§[S§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§["'§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §0!I§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §0!I§;
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
               if(§@!^§.§2j§ && _loc10_.isPlayer)
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
                  _loc9_.TextField_Rank.textColor = §!"E§;
                  _loc9_.TextField_Name.textColor = §!"E§;
                  _loc9_.TextField_Points.textColor = §!"E§;
                  this.§["'§ = _loc9_;
               }
            }
            else
            {
               _loc9_.TextField_Name.text = "-";
               _loc9_.TextField_Points.text = "";
            }
            _loc9_.y = _loc6_;
            _loc6_ += 19;
            _loc5_.addChild(_loc9_);
            _loc7_++;
         }
      }
      
      public function § !9§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§#;§)
         {
            if(_loc3_ == param1)
            {
               this.§@!-§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §,^§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§"!g§ = null;
         for each(_loc4_ in this.§]"<§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§3!l§(param2) == false)
               {
                  if(param3)
                  {
                     this.§;"&§(false);
                     this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§[S§.setObjectToFront(this.§[S§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§%!i§(_loc4_.§-W§,_loc4_.§-s§);
                     this.§%"H§();
                     this.§-§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§;"&§(false);
                  this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§[S§.setObjectToFront(this.§[S§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§?3§.§]!f§,this.§5"9§);
                  break;
               }
            }
         }
      }
      
      public function §!!I§() : void
      {
         var _loc1_:§"!g§ = null;
         for each(_loc1_ in this.§]"<§)
         {
            _loc1_.§;B§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§ ",§ = null;
         this.§;"&§(false);
         if(this.§[S§)
         {
            _loc1_ = this.§[S§.getItemByName("HighscoreSidebar") as § ",§;
            this.§[S§.clear();
            this.§[S§ = null;
         }
      }
      
      public function §@p§(param1:Boolean) : void
      {
         var mySO:§";§ = null;
         var value:Boolean = param1;
         this.§9I§ = value;
         §<!O§.§!p§(this.§9I§);
         try
         {
            mySO = §";§.getLocal(§`Y§.§^"'§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §<!c§() : Boolean
      {
         return this.§9I§;
      }
      
      public function get currentPage() : int
      {
         return this.§@!-§;
      }
      
      public function §39§() : void
      {
         this.§,^§(HighscoreSidebar.§#;§[this.currentPage]);
      }
      
      public function set container(param1:§ ",§) : void
      {
         this.§[S§ = param1;
      }
      
      public function get container() : § ",§
      {
         return this.§[S§;
      }
      
      public function get §^!d§() : String
      {
         return this.§@@§;
      }
      
      public function get §[!X§() : String
      {
         return this.§']§;
      }
      
      public function set §^!d§(param1:String) : void
      {
         this.§@@§ = param1;
      }
      
      public function §?7§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §!]§ * _loc3_;
         return HighscoreSidebar.§ true§[int(_loc5_) - 1];
      }
      
      private function §;a§() : void
      {
         if(§@!^§.§2j§.§8B§)
         {
            this.§6!,§();
            this.§[S§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§-!2§();
         }
      }
      
      private function §-!2§() : void
      {
         this.§[S§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §2" §() : Boolean
      {
         return this.§<!;§;
      }
      
      public function get §%_§() : Boolean
      {
         return this.§package§;
      }
      
      private function §6!,§() : void
      {
         var _loc1_:String = null;
         if(§@!^§.§2j§.name)
         {
            _loc1_ = §@!^§.§2j§.name + ":  " + this.§0"0§;
            (this.§[S§.getItemByName("TextField_MyScoreName") as §&!>§).§ !'§.text = _loc1_;
         }
      }
   }
}
