package §6"A§
{
   import §!!r§.§&""§;
   import §!"4§.§;";§;
   import §'!n§.§[!I§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §6B§.§?"2§;
   import §>"!§.§@!9§;
   import com.rovio.assets.§>!;§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §,&§:String = "StateHighScores";
      
      public static const §'r§:String = "StateOverall";
      
      public static const §;!e§:String = "StateDisableHighScores";
      
      public static const §4!p§:String = "StateLoadingLevelHighScores";
      
      public static const TOP_OVERALL_SCORES_EPISODE_1:String = "TopOverallScoresEpisode1";
      
      public static const TOP_OVERALL_SCORES_EPISODE_2:String = "TopOverallScoresEpisode2";
      
      public static const TOP_OVERALL_SCORES_EPISODE_3:String = "TopOverallScoresEpisode3";
      
      public static const §-R§:String = "credits_level";
      
      public static const §['§:Array = new Array("1-1","1-2","1-3","2-1","2-2","2-3","3-1","3-2","3-3");
      
      public static const §-!-§:Array = ["I","II","III","IV","V","VI","VII","VIII","IX"];
      
      public static const §>U§:int = 3;
      
      public static const §01§:int = 10;
      
      public static const §9k§:int = 5;
      
      public static const §-!e§:uint = 16711680;
       
      
      private var §2;§:String = null;
      
      private var § !>§:Array;
      
      private var §2I§:int = 0;
      
      private var §;!&§:String = null;
      
      private var §@4§:Array;
      
      private var § 1§:§5!k§;
      
      private var §<6§:MovieClip = null;
      
      private var §-M§:Number = 0;
      
      private var §%"9§:int = 0;
      
      private var §<"'§:Boolean = false;
      
      private var §+%§:Array;
      
      public var §1h§:Boolean = false;
      
      private var §3!4§:Boolean = true;
      
      private var §#6§:String;
      
      private var mDefaultEpisodeNameImagePosition1:Number;
      
      private var mDefaultEpisodeNameImagePosition2:Number;
      
      private var mDefaultEpisodeNameImagePosition3:Number;
      
      private var §7Y§:Boolean;
      
      private var §=5§:Boolean;
      
      private var §%-§:Number;
      
      public function HighscoreSidebar()
      {
         this.§+%§ = [];
         super();
         this.reset();
      }
      
      public function §@a§() : void
      {
         this.§1h§ = !this.§1h§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§8!9§ = null;
         this.§ !>§ = [];
         this.§2I§ = 0;
         for each(_loc1_ in §['§)
         {
            _loc2_ = new §8!9§(_loc1_);
            this.§ !>§.push(_loc2_);
         }
         _loc2_ = new §8!9§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1);
         this.§ !>§.push(_loc2_);
         _loc2_ = new §8!9§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2);
         this.§ !>§.push(_loc2_);
         _loc2_ = new §8!9§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3);
         this.§ !>§.push(_loc2_);
         this.§;!&§ = TOP_OVERALL_SCORES_EPISODE_1;
         this.§<6§ = null;
         this.§-M§ = 0;
         this.§%"9§ = 0;
         this.§<"'§ = false;
         this.§#6§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         this.§%-§ = 0;
      }
      
      public function §^+§(param1:§5!k§) : void
      {
         this.§ 1§ = param1;
         this.§+%§ = this.§ 1§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.mDefaultEpisodeNameImagePosition1 = this.§ 1§.getItemByName("MovieClip_Moon").x;
         this.mDefaultEpisodeNameImagePosition2 = this.§ 1§.getItemByName("MovieClip_Mc").x;
         this.mDefaultEpisodeNameImagePosition3 = this.§ 1§.getItemByName("MovieClip_Ep3").x;
         this.changeState(this.§2;§);
      }
      
      private function §7!9§(param1:Boolean) : void
      {
         this.§ 1§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §^"@§(param1:Boolean = true) : void
      {
         this.§ 1§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§ 1§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§ 1§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§ 1§.getItemByName("Button_Credits").visible)
         {
            this.§ 1§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§7Y§ = param1;
      }
      
      public function §4[§(param1:Boolean = true) : void
      {
         this.§ 1§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§ 1§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§ 1§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§ 1§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function § g§(param1:Boolean = true) : void
      {
         this.§ 1§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§ 1§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§ 1§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§ 1§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §4,§(param1:Boolean = true) : void
      {
         this.§ 1§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§ 1§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§ 1§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§ 1§.getItemByName("Button_Tutorial").visible)
         {
            this.§ 1§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§=5§ = param1;
      }
      
      public function §1!#§(param1:Boolean = true) : void
      {
         this.§ 1§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§ 1§.getItemByName("Button_Language_Spanish").setEnabled(param1);
         if(param1)
         {
            this.§ 1§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§ 1§.getItemByName("Button_Language_English").setVisibility(true);
            this.§ 1§.getItemByName("Button_Language_Spanish").mClip.alpha = 1;
            this.§ 1§.getItemByName("Button_Language_Spanish").setVisibility(true);
            this.§ 1§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 1;
            this.§ 1§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(true);
            this.§ 1§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 1;
            this.§ 1§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(true);
         }
         else
         {
            this.§ 1§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§ 1§.getItemByName("Button_Language_Spanish").mClip.alpha = 0.6;
            this.§ 1§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 0.6;
            this.§ 1§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §[!k§(param1:Boolean = true) : void
      {
         this.§ 1§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§ 1§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§ 1§.getItemByName("Button_Mute").setVisibility(true);
            this.§ 1§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§ 1§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§ 1§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§ 1§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §3A§() : void
      {
         var _loc1_:Boolean = false;
         if(§[!I§.§8!J§.§,"+§() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§ 1§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(!_loc1_);
         this.§ 1§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function §57§(param1:Boolean) : void
      {
         this.§ 1§.getItemByName("Button_Selected_Levels").setVisibility(!param1);
         this.§ 1§.getItemByName("Button_Selected_Overall").setVisibility(param1);
      }
      
      public function §"!b§(param1:String) : §8!9§
      {
         var _loc2_:§8!9§ = null;
         for each(_loc2_ in this.§ !>§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §>!f§(param1:int, param2:String, param3:§?"2§) : void
      {
         var _loc4_:§8!9§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.changeState(§,&§);
               this.§1!'§(HighscoreSidebar.§['§[this.§2I§]);
               break;
            case "BUTTON_OVERALL":
               this.changeState(§'r§);
               this.§1!'§(this.§#6§);
               break;
            case "RIGHT":
               if(this.§2;§ == §'r§)
               {
                  this.§1!'§(this.§!"3§());
               }
               else
               {
                  this.§1!'§(HighscoreSidebar.§['§[this.§&7§(this.§2I§)]);
               }
               break;
            case "LEFT":
               if(this.§2;§ == §'r§)
               {
                  this.§1!'§(this.§@"6§());
                  break;
               }
               this.§1!'§(HighscoreSidebar.§['§[this.§?!m§(this.§2I§)]);
               break;
            case "UP":
               if(this.§2;§ == §'r§)
               {
                  if((_loc4_ = this.§"!b§(this.§#6§)) != null)
                  {
                     _loc4_.§-"A§();
                     this.§[T§(this.§#6§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.§"!b§(this.§;!&§)) != null)
               {
                  _loc4_.§-"A§();
                  this.§[T§(this.§;!&§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§2;§ == §'r§)
               {
                  if(_loc4_ = this.§"!b§(this.§#6§))
                  {
                     _loc4_.§?"G§();
                     this.§[T§(this.§#6§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.§"!b§(this.§;!&§))
               {
                  _loc4_.§?"G§();
                  this.§[T§(this.§;!&§,false);
                  break;
               }
               break;
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         this.§2;§ = param1;
         switch(param1)
         {
            case §,&§:
               this.§ 1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§ 1§.getItemByName("TextField_Level_Num") as §2a§).§%!%§.text = "";
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Board_Selection"));
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Highscores"));
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Sidebar_Buttons"));
               this.§ 1§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§ 1§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§ 1§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§ 1§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§ 1§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§ 1§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§ 1§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§ 1§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§ 1§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§!!!§();
               this.§57§(false);
               this.§1!'§(this.§;!&§,param2);
               break;
            case §'r§:
               this.§ 1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§ 1§.getItemByName("TextField_Level_Num") as §2a§).§%!%§.text = "";
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Board_Selection"));
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Highscores"));
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Sidebar_Buttons"));
               this.§ 1§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§ 1§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§ 1§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§ 1§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§ 1§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§ 1§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§ 1§.getItemByName("TextField_Level_Num").setVisibility(false);
               this.§ 1§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§ 1§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§!!!§();
               this.§57§(true);
               this.§1!'§(this.§#6§,param2);
               break;
            case §;!e§:
               this.§ 1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§ 1§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§ 1§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§ 1§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§ 1§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§ 1§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§ 1§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§ 1§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§ 1§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§ 1§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§>!+§();
               this.§3!l§(false);
               break;
            case §4!p§:
               this.§ 1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("MovieClip_LoadingHiScores"));
               this.§ 1§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§ 1§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§ 1§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§ 1§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§ 1§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§ 1§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§ 1§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§ 1§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§ 1§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§>!+§();
               this.§4,§(false);
               this.§4[§(false);
               this.§ g§(false);
               this.§3!l§(false);
               this.§1!#§(false);
               this.§[!k§(false);
         }
      }
      
      public function §3!l§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ 1§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§ 1§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §&7§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§['§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §?!m§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§['§.length - 1;
         }
         return param1;
      }
      
      private function §!"3§() : String
      {
         if(this.§#6§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
         {
            this.§#6§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
         }
         else if(this.§#6§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
         {
            this.§#6§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
         }
         else if(this.§#6§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
         {
            this.§#6§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         }
         return this.§#6§;
      }
      
      private function §@"6§() : String
      {
         if(this.§#6§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
         {
            this.§#6§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
         }
         else if(this.§#6§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
         {
            this.§#6§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         }
         else if(this.§#6§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
         {
            this.§#6§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
         }
         return this.§#6§;
      }
      
      public function §+!@§(param1:§8!9§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §;";§.§3U§)
         {
            _loc4_ = param1.§%!s§;
            do
            {
               _loc3_++;
               param1.§?"G§();
               _loc5_ = param1.§[^§;
               _loc6_ = 0;
               while(_loc6_ < §01§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §01§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §;";§.§3U§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §9k§)
                  {
                     _loc2_ = true;
                     param1.§-"A§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §[T§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §['§)
         {
            if(_loc3_ == param1 && !§;";§.§@!7§(param1))
            {
               this.§;!&§ = param1;
               this.§^!0§(param1);
               this.§%-§ = (§&"<§.§<!7§ as §["!§).§<!%§.§#!E§(param1);
               this.§,b§();
               break;
            }
         }
         if(this.§2;§ == §'r§)
         {
            this.§"!>§();
         }
         if(this.§ 1§)
         {
            _loc5_ = this.§ 1§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§8!9§;
         if((_loc4_ = this.§"!b§(param1)) == null)
         {
            return;
         }
         if(_loc4_.§-"6§)
         {
            if(_loc4_.§%!s§)
            {
               if(param2)
               {
                  this.§+!@§(_loc4_);
               }
               this.§%n§(_loc4_.§%!s§,_loc4_.§[^§);
               this.§"!>§();
               this.§7!9§(true);
               this.§ 1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Highscores"));
               this.§-"3§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§9!K§.§+!d§,this.§+N§);
         }
      }
      
      private function §-"3§(param1:String) : void
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
            levelNum = levelNumInEpisode + §>U§ * episodeNum;
            if(levelName == "1-1" || levelName == "1-2" || levelName == "1-3" || levelName == TOP_OVERALL_SCORES_EPISODE_1)
            {
               this.§ 1§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§ 1§.getItemByName("MovieClip_Mc").setVisibility(true);
               this.§ 1§.getItemByName("MovieClip_Ep3").setVisibility(false);
            }
            else if(levelName == "2-1" || levelName == "2-2" || levelName == "2-3" || levelName == TOP_OVERALL_SCORES_EPISODE_2)
            {
               this.§ 1§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§ 1§.getItemByName("MovieClip_Mc").setVisibility(false);
               this.§ 1§.getItemByName("MovieClip_Ep3").setVisibility(false);
            }
            else if(levelName == "3-1" || levelName == "3-2" || levelName == "3-3" || levelName == TOP_OVERALL_SCORES_EPISODE_3)
            {
               this.§ 1§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§ 1§.getItemByName("MovieClip_Mc").setVisibility(false);
               this.§ 1§.getItemByName("MovieClip_Ep3").setVisibility(true);
            }
            if(this.§2;§ == §,&§)
            {
               this.§ 1§.getItemByName("MovieClip_Moon").x = this.mDefaultEpisodeNameImagePosition1;
               this.§ 1§.getItemByName("MovieClip_Mc").x = this.mDefaultEpisodeNameImagePosition2;
               this.§ 1§.getItemByName("MovieClip_Ep3").x = this.mDefaultEpisodeNameImagePosition3;
            }
            else
            {
               positionFixX = 12;
               this.§ 1§.getItemByName("MovieClip_Moon").x = this.mDefaultEpisodeNameImagePosition1 + positionFixX;
               this.§ 1§.getItemByName("MovieClip_Mc").x = this.mDefaultEpisodeNameImagePosition2 + positionFixX;
               this.§ 1§.getItemByName("MovieClip_Ep3").x = this.mDefaultEpisodeNameImagePosition3 + positionFixX;
            }
            levelNameString = "- " + HighscoreSidebar.§-!-§[int(levelNum) - 1];
            (this.§ 1§.getItemByName("TextField_Level_Num") as §2a§).§%!%§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §+N§(param1:Event) : void
      {
         var _loc2_:§8!9§ = param1.currentTarget as §8!9§;
         _loc2_.removeEventListener(§9!K§.§+!d§,this.§+N§);
         this.§;!&§ = _loc2_.levelId;
         var _loc3_:String = this.§;!&§;
         this.§-"3§(_loc3_);
         this.§+!@§(_loc2_);
         this.§%n§(_loc2_.§%!s§,_loc2_.§[^§);
         this.§"!>§();
         this.§+!b§();
         this.§7!9§(true);
         this.§ 1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("Container_Highscores"));
         this.§[T§(this.§;!&§);
      }
      
      private function §"!>§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §;";§.§3U§;
         if(_loc1_.name)
         {
            (this.§ 1§.getItemByName("TextField_MyScoreName") as §2a§).§%!%§.text = _loc1_.name + ": " + this.§%-§;
         }
         if(this.§2;§ == §,&§)
         {
            for each(_loc2_ in §['§)
            {
               if(_loc2_ == this.§;!&§ && !§;";§.§@!7§(_loc2_))
               {
                  this.§^!0§(this.§;!&§);
                  this.§%-§ = (§&"<§.§<!7§ as §["!§).§<!%§.§#!E§(this.§;!&§);
                  this.§,b§();
                  break;
               }
            }
         }
         else if(this.§2;§ == §'r§)
         {
            if(this.§#6§ == TOP_OVERALL_SCORES_EPISODE_1)
            {
               this.§%-§ = §;";§.§3U§.episodeScore1;
               this.§,b§();
            }
            else if(this.§#6§ == TOP_OVERALL_SCORES_EPISODE_2)
            {
               this.§%-§ = §;";§.§3U§.episodeScore2;
               this.§,b§();
            }
            else if(this.§#6§ == TOP_OVERALL_SCORES_EPISODE_3)
            {
               this.§%-§ = §;";§.§3U§.episodeScore3;
               this.§,b§();
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§8!^§(param1);
      }
      
      private function §+!b§(param1:Boolean = true) : void
      {
         this.§%"9§ = 0;
         this.§<"'§ = param1;
         this.§-M§ = 0;
      }
      
      private function §8!^§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§ 1§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§ 1§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§<"'§)
         {
            if(this.§<6§)
            {
               this.§<6§.filters = [new GlowFilter(16777215,1,32,8,this.§-M§,5,false,false)];
               for each(_loc4_ in this.§+%§)
               {
                  this.§<6§.filters.push(_loc4_);
               }
            }
            if(int((this.§ 1§.getItemByName("TextField_MyScoreNumber") as §2a§).§%!%§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§-M§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§-M§,3,false,false)];
               for each(_loc4_ in this.§+%§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§%"9§ > 3)
            {
               this.§-M§ = 0;
               this.§%"9§ = 0;
               this.§<6§ = null;
               this.§<"'§ = false;
            }
            if(this.§%"9§ % 2 == 0)
            {
               this.§-M§ += param1 / 200;
               if(this.§-M§ > 5.5)
               {
                  this.§-M§ = 5.5;
                  ++this.§%"9§;
               }
            }
            else
            {
               this.§-M§ -= param1 / 200;
               if(this.§-M§ < 0)
               {
                  this.§-M§ = 0;
                  ++this.§%"9§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§+%§;
            _loc3_.filters = this.§+%§;
            if(this.§<6§)
            {
               this.§<6§.filters = this.§+%§;
            }
         }
      }
      
      private function §%n§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§@4§ = param1;
         if(!this.§ 1§)
         {
            return;
         }
         var _loc4_:Class = §>!;§.§+!u§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§ 1§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§<6§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §01§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §01§;
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
               if(§;";§.§3U§ && _loc10_.isPlayer)
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
                  _loc9_.TextField_Rank.textColor = §-!e§;
                  _loc9_.TextField_Name.textColor = §-!e§;
                  _loc9_.TextField_Points.textColor = §-!e§;
                  this.§<6§ = _loc9_;
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
      
      public function §^!0§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§['§)
         {
            if(_loc3_ == param1)
            {
               this.§2I§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §1!'§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§8!9§ = null;
         for each(_loc4_ in this.§ !>§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§;!j§(param2) == false)
               {
                  if(param3)
                  {
                     this.§7!9§(false);
                     this.§ 1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§%n§(_loc4_.§%!s§,_loc4_.§[^§);
                     this.§"!>§();
                     this.§[T§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§7!9§(false);
                  this.§ 1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§ 1§.setObjectToFront(this.§ 1§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§9!K§.§+!d§,this.§+N§);
                  break;
               }
            }
         }
      }
      
      public function §7m§() : void
      {
         var _loc1_:§8!9§ = null;
         for each(_loc1_ in this.§ !>§)
         {
            _loc1_.§,!h§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§5!k§ = null;
         this.§7!9§(false);
         if(this.§ 1§)
         {
            _loc1_ = this.§ 1§.getItemByName("HighscoreSidebar") as §5!k§;
            this.§ 1§.clear();
            this.§ 1§ = null;
         }
      }
      
      public function §0!p§(param1:Boolean) : void
      {
         var mySO:§&""§ = null;
         var value:Boolean = param1;
         this.§3!4§ = value;
         §@!9§.§7!u§(this.§3!4§);
         try
         {
            mySO = §&""§.getLocal(§["!§.§6!=§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §8O§() : Boolean
      {
         return this.§3!4§;
      }
      
      public function get currentPage() : int
      {
         return this.§2I§;
      }
      
      public function §[l§() : void
      {
         this.§1!'§(HighscoreSidebar.§['§[this.currentPage]);
      }
      
      public function set container(param1:§5!k§) : void
      {
         this.§ 1§ = param1;
      }
      
      public function get container() : §5!k§
      {
         return this.§ 1§;
      }
      
      public function get §+E§() : String
      {
         return this.§;!&§;
      }
      
      public function get §7!2§() : String
      {
         return this.§2;§;
      }
      
      public function set §+E§(param1:String) : void
      {
         this.§;!&§ = param1;
      }
      
      public function §@"§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §>U§ * _loc3_;
         return HighscoreSidebar.§-!-§[int(_loc5_) - 1];
      }
      
      private function §!!!§() : void
      {
         if(§;";§.§3U§.§1T§)
         {
            this.§,b§();
            this.§ 1§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§>!+§();
         }
      }
      
      private function §>!+§() : void
      {
         this.§ 1§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §`!T§() : Boolean
      {
         return this.§=5§;
      }
      
      public function get §<=§() : Boolean
      {
         return this.§7Y§;
      }
      
      private function §,b§() : void
      {
         var _loc1_:String = null;
         if(§;";§.§3U§.name)
         {
            _loc1_ = §;";§.§3U§.name + ":  " + this.§%-§;
            (this.§ 1§.getItemByName("TextField_MyScoreName") as §2a§).§%!%§.text = _loc1_;
         }
      }
   }
}
