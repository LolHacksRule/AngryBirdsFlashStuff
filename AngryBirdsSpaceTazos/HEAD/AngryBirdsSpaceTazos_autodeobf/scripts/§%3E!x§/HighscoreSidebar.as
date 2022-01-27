package §>!x§
{
   import §3!S§.§<5§;
   import §4u§.§!H§;
   import §5"@§.§1!N§;
   import §7!6§.§@Y§;
   import §="<§.§#`§;
   import §="<§.§,"$§;
   import §[z§.§]j§;
   import com.rovio.assets.§1!h§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §!b§:String = "StateHighScores";
      
      public static const §#!V§:String = "StateOverall";
      
      public static const §9P§:String = "StateDisableHighScores";
      
      public static const §#!n§:String = "StateLoadingLevelHighScores";
      
      public static const TOP_OVERALL_SCORES_EPISODE_1:String = "TopOverallScoresEpisode1";
      
      public static const TOP_OVERALL_SCORES_EPISODE_2:String = "TopOverallScoresEpisode2";
      
      public static const TOP_OVERALL_SCORES_EPISODE_3:String = "TopOverallScoresEpisode3";
      
      public static const §<l§:String = "credits_level";
      
      public static const §<" §:Array = new Array("1-1","1-2","1-3","2-1","2-2","2-3","3-1","3-2","3-3");
      
      public static const §9p§:Array = ["I","II","III","IV","V","VI","VII","VIII","IX"];
      
      public static const §72§:int = 3;
      
      public static const §+!X§:int = 10;
      
      public static const §[$§:int = 5;
      
      public static const §?B§:uint = 16711680;
       
      
      private var §5"H§:String = null;
      
      private var §>!d§:Array;
      
      private var §=w§:int = 0;
      
      private var §'!?§:String = null;
      
      private var §[C§:Array;
      
      private var §3!a§:§,"$§;
      
      private var §import§:MovieClip = null;
      
      private var § l§:Number = 0;
      
      private var §?V§:int = 0;
      
      private var §!"1§:Boolean = false;
      
      private var dynamic:Array;
      
      public var §-v§:Boolean = false;
      
      private var §!I§:Boolean = true;
      
      private var §6$§:String;
      
      private var mDefaultEpisodeNameImagePosition1:Number;
      
      private var mDefaultEpisodeNameImagePosition2:Number;
      
      private var mDefaultEpisodeNameImagePosition3:Number;
      
      private var §2g§:Boolean;
      
      private var §[!t§:Boolean;
      
      private var §8!'§:Number;
      
      public function HighscoreSidebar()
      {
         this.dynamic = [];
         super();
         this.reset();
      }
      
      public function §+U§() : void
      {
         this.§-v§ = !this.§-v§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§-![§ = null;
         this.§>!d§ = [];
         this.§=w§ = 0;
         for each(_loc1_ in §<" §)
         {
            _loc2_ = new §-![§(_loc1_);
            this.§>!d§.push(_loc2_);
         }
         _loc2_ = new §-![§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1);
         this.§>!d§.push(_loc2_);
         _loc2_ = new §-![§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2);
         this.§>!d§.push(_loc2_);
         _loc2_ = new §-![§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3);
         this.§>!d§.push(_loc2_);
         this.§'!?§ = TOP_OVERALL_SCORES_EPISODE_1;
         this.§import§ = null;
         this.§ l§ = 0;
         this.§?V§ = 0;
         this.§!"1§ = false;
         this.§6$§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         this.§8!'§ = 0;
      }
      
      public function §[Q§(param1:§,"$§) : void
      {
         this.§3!a§ = param1;
         this.dynamic = this.§3!a§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.mDefaultEpisodeNameImagePosition1 = this.§3!a§.getItemByName("MovieClip_Moon").x;
         this.mDefaultEpisodeNameImagePosition2 = this.§3!a§.getItemByName("MovieClip_Mc").x;
         this.mDefaultEpisodeNameImagePosition3 = this.§3!a§.getItemByName("MovieClip_Ep3").x;
         this.changeState(this.§5"H§);
      }
      
      private function §^D§(param1:Boolean) : void
      {
         this.§3!a§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §,j§(param1:Boolean = true) : void
      {
         this.§3!a§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§3!a§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§3!a§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§3!a§.getItemByName("Button_Credits").visible)
         {
            this.§3!a§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§2g§ = param1;
      }
      
      public function §%"<§(param1:Boolean = true) : void
      {
         this.§3!a§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§3!a§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§3!a§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§3!a§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function §+x§(param1:Boolean = true) : void
      {
         this.§3!a§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§3!a§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§3!a§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§3!a§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §9^§(param1:Boolean = true) : void
      {
         this.§3!a§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§3!a§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§3!a§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§3!a§.getItemByName("Button_Tutorial").visible)
         {
            this.§3!a§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§[!t§ = param1;
      }
      
      public function §#M§(param1:Boolean = true) : void
      {
         this.§3!a§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§3!a§.getItemByName("Button_Language_Spanish").setEnabled(param1);
         if(param1)
         {
            this.§3!a§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§3!a§.getItemByName("Button_Language_English").setVisibility(true);
            this.§3!a§.getItemByName("Button_Language_Spanish").mClip.alpha = 1;
            this.§3!a§.getItemByName("Button_Language_Spanish").setVisibility(true);
            this.§3!a§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 1;
            this.§3!a§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(true);
            this.§3!a§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 1;
            this.§3!a§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(true);
         }
         else
         {
            this.§3!a§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§3!a§.getItemByName("Button_Language_Spanish").mClip.alpha = 0.6;
            this.§3!a§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 0.6;
            this.§3!a§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §#!L§(param1:Boolean = true) : void
      {
         this.§3!a§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§3!a§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§3!a§.getItemByName("Button_Mute").setVisibility(true);
            this.§3!a§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§3!a§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§3!a§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§3!a§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function § 9§() : void
      {
         var _loc1_:Boolean = false;
         if(§!H§.§3R§.§6"-§() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§3!a§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(!_loc1_);
         this.§3!a§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function §;-§(param1:Boolean) : void
      {
         this.§3!a§.getItemByName("Button_Selected_Levels").setVisibility(!param1);
         this.§3!a§.getItemByName("Button_Selected_Overall").setVisibility(param1);
      }
      
      public function §=!q§(param1:String) : §-![§
      {
         var _loc2_:§-![§ = null;
         for each(_loc2_ in this.§>!d§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §;!A§(param1:int, param2:String, param3:§@Y§) : void
      {
         var _loc4_:§-![§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.changeState(§!b§);
               this.§5>§(HighscoreSidebar.§<" §[this.§=w§]);
               break;
            case "BUTTON_OVERALL":
               this.changeState(§#!V§);
               this.§5>§(this.§6$§);
               break;
            case "RIGHT":
               if(this.§5"H§ == §#!V§)
               {
                  this.§5>§(this.§42§());
               }
               else
               {
                  this.§5>§(HighscoreSidebar.§<" §[this.§`z§(this.§=w§)]);
               }
               break;
            case "LEFT":
               if(this.§5"H§ == §#!V§)
               {
                  this.§5>§(this.§@L§());
                  break;
               }
               this.§5>§(HighscoreSidebar.§<" §[this.§7,§(this.§=w§)]);
               break;
            case "UP":
               if(this.§5"H§ == §#!V§)
               {
                  if((_loc4_ = this.§=!q§(this.§6$§)) != null)
                  {
                     _loc4_.§'!m§();
                     this.§#!!§(this.§6$§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.§=!q§(this.§'!?§)) != null)
               {
                  _loc4_.§'!m§();
                  this.§#!!§(this.§'!?§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§5"H§ == §#!V§)
               {
                  if(_loc4_ = this.§=!q§(this.§6$§))
                  {
                     _loc4_.§2!=§();
                     this.§#!!§(this.§6$§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.§=!q§(this.§'!?§))
               {
                  _loc4_.§2!=§();
                  this.§#!!§(this.§'!?§,false);
                  break;
               }
               break;
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         this.§5"H§ = param1;
         switch(param1)
         {
            case §!b§:
               this.§3!a§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§3!a§.getItemByName("TextField_Level_Num") as §#`§).§';§.text = "";
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Board_Selection"));
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Highscores"));
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Sidebar_Buttons"));
               this.§3!a§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§3!a§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§3!a§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§3!a§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§3!a§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§3!a§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§3!a§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§3!a§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§3!a§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§#!c§();
               this.§;-§(false);
               this.§5>§(this.§'!?§,param2);
               break;
            case §#!V§:
               this.§3!a§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§3!a§.getItemByName("TextField_Level_Num") as §#`§).§';§.text = "";
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Board_Selection"));
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Highscores"));
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Sidebar_Buttons"));
               this.§3!a§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§3!a§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§3!a§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§3!a§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§3!a§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§3!a§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§3!a§.getItemByName("TextField_Level_Num").setVisibility(false);
               this.§3!a§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§3!a§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§#!c§();
               this.§;-§(true);
               this.§5>§(this.§6$§,param2);
               break;
            case §9P§:
               this.§3!a§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§3!a§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§3!a§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§3!a§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§3!a§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§3!a§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§3!a§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§3!a§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§3!a§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§3!a§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§ "!§();
               this.§'B§(false);
               break;
            case §#!n§:
               this.§3!a§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("MovieClip_LoadingHiScores"));
               this.§3!a§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§3!a§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§3!a§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§3!a§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§3!a§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§3!a§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§3!a§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§3!a§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§3!a§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§ "!§();
               this.§9^§(false);
               this.§%"<§(false);
               this.§+x§(false);
               this.§'B§(false);
               this.§#M§(false);
               this.§#!L§(false);
         }
      }
      
      public function §'B§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!a§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§3!a§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §`z§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§<" §.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §7,§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§<" §.length - 1;
         }
         return param1;
      }
      
      private function §42§() : String
      {
         if(this.§6$§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
         {
            this.§6$§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
         }
         else if(this.§6$§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
         {
            this.§6$§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
         }
         else if(this.§6$§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
         {
            this.§6$§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         }
         return this.§6$§;
      }
      
      private function §@L§() : String
      {
         if(this.§6$§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
         {
            this.§6$§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
         }
         else if(this.§6$§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
         {
            this.§6$§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         }
         else if(this.§6$§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
         {
            this.§6$§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
         }
         return this.§6$§;
      }
      
      public function §1D§(param1:§-![§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §1!N§.§,!<§)
         {
            _loc4_ = param1.§@Q§;
            do
            {
               _loc3_++;
               param1.§2!=§();
               _loc5_ = param1.§1"=§;
               _loc6_ = 0;
               while(_loc6_ < §+!X§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §+!X§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §1!N§.§,!<§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §[$§)
                  {
                     _loc2_ = true;
                     param1.§'!m§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §#!!§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §<" §)
         {
            if(_loc3_ == param1 && !§1!N§.§'!"§(param1))
            {
               this.§'!?§ = param1;
               this.§4>§(param1);
               this.§8!'§ = (§2&§.§6o§ as §@T§).§'"5§.§]-§(param1);
               this.§&!c§();
               break;
            }
         }
         if(this.§5"H§ == §#!V§)
         {
            this.§4!B§();
         }
         if(this.§3!a§)
         {
            _loc5_ = this.§3!a§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§-![§;
         if((_loc4_ = this.§=!q§(param1)) == null)
         {
            return;
         }
         if(_loc4_.§"!F§)
         {
            if(_loc4_.§@Q§)
            {
               if(param2)
               {
                  this.§1D§(_loc4_);
               }
               this.§6!§(_loc4_.§@Q§,_loc4_.§1"=§);
               this.§4!B§();
               this.§^D§(true);
               this.§3!a§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Highscores"));
               this.§'z§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§2E§.§^f§,this.§;!v§);
         }
      }
      
      private function §'z§(param1:String) : void
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
            levelNum = levelNumInEpisode + §72§ * episodeNum;
            if(levelName == "1-1" || levelName == "1-2" || levelName == "1-3" || levelName == TOP_OVERALL_SCORES_EPISODE_1)
            {
               this.§3!a§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§3!a§.getItemByName("MovieClip_Mc").setVisibility(true);
               this.§3!a§.getItemByName("MovieClip_Ep3").setVisibility(false);
            }
            else if(levelName == "2-1" || levelName == "2-2" || levelName == "2-3" || levelName == TOP_OVERALL_SCORES_EPISODE_2)
            {
               this.§3!a§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§3!a§.getItemByName("MovieClip_Mc").setVisibility(false);
               this.§3!a§.getItemByName("MovieClip_Ep3").setVisibility(false);
            }
            else if(levelName == "3-1" || levelName == "3-2" || levelName == "3-3" || levelName == TOP_OVERALL_SCORES_EPISODE_3)
            {
               this.§3!a§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§3!a§.getItemByName("MovieClip_Mc").setVisibility(false);
               this.§3!a§.getItemByName("MovieClip_Ep3").setVisibility(true);
            }
            if(this.§5"H§ == §!b§)
            {
               this.§3!a§.getItemByName("MovieClip_Moon").x = this.mDefaultEpisodeNameImagePosition1;
               this.§3!a§.getItemByName("MovieClip_Mc").x = this.mDefaultEpisodeNameImagePosition2;
               this.§3!a§.getItemByName("MovieClip_Ep3").x = this.mDefaultEpisodeNameImagePosition3;
            }
            else
            {
               positionFixX = 12;
               this.§3!a§.getItemByName("MovieClip_Moon").x = this.mDefaultEpisodeNameImagePosition1 + positionFixX;
               this.§3!a§.getItemByName("MovieClip_Mc").x = this.mDefaultEpisodeNameImagePosition2 + positionFixX;
               this.§3!a§.getItemByName("MovieClip_Ep3").x = this.mDefaultEpisodeNameImagePosition3 + positionFixX;
            }
            levelNameString = "- " + HighscoreSidebar.§9p§[int(levelNum) - 1];
            (this.§3!a§.getItemByName("TextField_Level_Num") as §#`§).§';§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §;!v§(param1:Event) : void
      {
         var _loc2_:§-![§ = param1.currentTarget as §-![§;
         _loc2_.removeEventListener(§2E§.§^f§,this.§;!v§);
         this.§'!?§ = _loc2_.levelId;
         var _loc3_:String = this.§'!?§;
         this.§'z§(_loc3_);
         this.§1D§(_loc2_);
         this.§6!§(_loc2_.§@Q§,_loc2_.§1"=§);
         this.§4!B§();
         this.§?j§();
         this.§^D§(true);
         this.§3!a§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("Container_Highscores"));
         this.§#!!§(this.§'!?§);
      }
      
      private function §4!B§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §1!N§.§,!<§;
         if(_loc1_.name)
         {
            (this.§3!a§.getItemByName("TextField_MyScoreName") as §#`§).§';§.text = _loc1_.name + ": " + this.§8!'§;
         }
         if(this.§5"H§ == §!b§)
         {
            for each(_loc2_ in §<" §)
            {
               if(_loc2_ == this.§'!?§ && !§1!N§.§'!"§(_loc2_))
               {
                  this.§4>§(this.§'!?§);
                  this.§8!'§ = (§2&§.§6o§ as §@T§).§'"5§.§]-§(this.§'!?§);
                  this.§&!c§();
                  break;
               }
            }
         }
         else if(this.§5"H§ == §#!V§)
         {
            if(this.§6$§ == TOP_OVERALL_SCORES_EPISODE_1)
            {
               this.§8!'§ = §1!N§.§,!<§.episodeScore1;
               this.§&!c§();
            }
            else if(this.§6$§ == TOP_OVERALL_SCORES_EPISODE_2)
            {
               this.§8!'§ = §1!N§.§,!<§.episodeScore2;
               this.§&!c§();
            }
            else if(this.§6$§ == TOP_OVERALL_SCORES_EPISODE_3)
            {
               this.§8!'§ = §1!N§.§,!<§.episodeScore3;
               this.§&!c§();
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§]!y§(param1);
      }
      
      private function §?j§(param1:Boolean = true) : void
      {
         this.§?V§ = 0;
         this.§!"1§ = param1;
         this.§ l§ = 0;
      }
      
      private function §]!y§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§3!a§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§3!a§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§!"1§)
         {
            if(this.§import§)
            {
               this.§import§.filters = [new GlowFilter(16777215,1,32,8,this.§ l§,5,false,false)];
               for each(_loc4_ in this.dynamic)
               {
                  this.§import§.filters.push(_loc4_);
               }
            }
            if(int((this.§3!a§.getItemByName("TextField_MyScoreNumber") as §#`§).§';§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§ l§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§ l§,3,false,false)];
               for each(_loc4_ in this.dynamic)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§?V§ > 3)
            {
               this.§ l§ = 0;
               this.§?V§ = 0;
               this.§import§ = null;
               this.§!"1§ = false;
            }
            if(this.§?V§ % 2 == 0)
            {
               this.§ l§ += param1 / 200;
               if(this.§ l§ > 5.5)
               {
                  this.§ l§ = 5.5;
                  ++this.§?V§;
               }
            }
            else
            {
               this.§ l§ -= param1 / 200;
               if(this.§ l§ < 0)
               {
                  this.§ l§ = 0;
                  ++this.§?V§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.dynamic;
            _loc3_.filters = this.dynamic;
            if(this.§import§)
            {
               this.§import§.filters = this.dynamic;
            }
         }
      }
      
      private function §6!§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§[C§ = param1;
         if(!this.§3!a§)
         {
            return;
         }
         var _loc4_:Class = §1!h§.§4!D§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§3!a§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§import§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §+!X§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §+!X§;
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
               if(§1!N§.§,!<§ && _loc10_.isPlayer)
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
                  _loc9_.TextField_Rank.textColor = §?B§;
                  _loc9_.TextField_Name.textColor = §?B§;
                  _loc9_.TextField_Points.textColor = §?B§;
                  this.§import§ = _loc9_;
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
      
      public function §4>§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§<" §)
         {
            if(_loc3_ == param1)
            {
               this.§=w§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §5>§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§-![§ = null;
         for each(_loc4_ in this.§>!d§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§&"@§(param2) == false)
               {
                  if(param3)
                  {
                     this.§^D§(false);
                     this.§3!a§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§6!§(_loc4_.§@Q§,_loc4_.§1"=§);
                     this.§4!B§();
                     this.§#!!§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§^D§(false);
                  this.§3!a§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§3!a§.setObjectToFront(this.§3!a§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§2E§.§^f§,this.§;!v§);
                  break;
               }
            }
         }
      }
      
      public function §4!o§() : void
      {
         var _loc1_:§-![§ = null;
         for each(_loc1_ in this.§>!d§)
         {
            _loc1_.§+?§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§,"$§ = null;
         this.§^D§(false);
         if(this.§3!a§)
         {
            _loc1_ = this.§3!a§.getItemByName("HighscoreSidebar") as §,"$§;
            this.§3!a§.clear();
            this.§3!a§ = null;
         }
      }
      
      public function §3!J§(param1:Boolean) : void
      {
         var mySO:§]j§ = null;
         var value:Boolean = param1;
         this.§!I§ = value;
         §<5§.§4h§(this.§!I§);
         try
         {
            mySO = §]j§.getLocal(§@T§.§24§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §6"#§() : Boolean
      {
         return this.§!I§;
      }
      
      public function get currentPage() : int
      {
         return this.§=w§;
      }
      
      public function §`"6§() : void
      {
         this.§5>§(HighscoreSidebar.§<" §[this.currentPage]);
      }
      
      public function set container(param1:§,"$§) : void
      {
         this.§3!a§ = param1;
      }
      
      public function get container() : §,"$§
      {
         return this.§3!a§;
      }
      
      public function get §+!K§() : String
      {
         return this.§'!?§;
      }
      
      public function get §-!3§() : String
      {
         return this.§5"H§;
      }
      
      public function set §+!K§(param1:String) : void
      {
         this.§'!?§ = param1;
      }
      
      public function §2T§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §72§ * _loc3_;
         return HighscoreSidebar.§9p§[int(_loc5_) - 1];
      }
      
      private function §#!c§() : void
      {
         if(§1!N§.§,!<§.§=!9§)
         {
            this.§&!c§();
            this.§3!a§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§ "!§();
         }
      }
      
      private function § "!§() : void
      {
         this.§3!a§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §8K§() : Boolean
      {
         return this.§[!t§;
      }
      
      public function get §7"8§() : Boolean
      {
         return this.§2g§;
      }
      
      private function §&!c§() : void
      {
         var _loc1_:String = null;
         if(§1!N§.§,!<§.name)
         {
            _loc1_ = §1!N§.§,!<§.name + ":  " + this.§8!'§;
            (this.§3!a§.getItemByName("TextField_MyScoreName") as §#`§).§';§.text = _loc1_;
         }
      }
   }
}
