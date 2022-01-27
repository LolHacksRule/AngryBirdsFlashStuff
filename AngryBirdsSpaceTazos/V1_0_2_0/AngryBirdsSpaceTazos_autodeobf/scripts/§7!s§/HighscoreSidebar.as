package §7!s§
{
   import §!i§.§1s§;
   import §!i§.§?"%§;
   import §'#§.§^4§;
   import §4!t§.§95§;
   import §4!x§.§?";§;
   import §6"6§.§40§;
   import §9!G§.§"!S§;
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §`!d§:String = "StateHighScores";
      
      public static const §7>§:String = "StateOverall";
      
      public static const §-@§:String = "StateDisableHighScores";
      
      public static const §[!1§:String = "StateLoadingLevelHighScores";
      
      public static const TOP_OVERALL_SCORES_EPISODE_1:String = "TopOverallScoresEpisode1";
      
      public static const TOP_OVERALL_SCORES_EPISODE_2:String = "TopOverallScoresEpisode2";
      
      public static const TOP_OVERALL_SCORES_EPISODE_3:String = "TopOverallScoresEpisode3";
      
      public static const §=!7§:String = "credits_level";
      
      public static const §<"@§:Array = new Array("1-1","1-2","1-3","2-1","2-2","2-3","3-1","3-2","3-3");
      
      public static const §3!i§:Array = ["I","II","III","IV","V","VI","VII","VIII","IX"];
      
      public static const §'w§:int = 3;
      
      public static const §9!<§:int = 10;
      
      public static const §'!!§:int = 5;
      
      public static const §=B§:uint = 16711680;
       
      
      private var §7k§:String = null;
      
      private var §`"?§:Array;
      
      private var §,Y§:int = 0;
      
      private var §,"B§:String = null;
      
      private var §1-§:Array;
      
      private var §&#§:§1s§;
      
      private var §,=§:MovieClip = null;
      
      private var §2!=§:Number = 0;
      
      private var §^N§:int = 0;
      
      private var §,y§:Boolean = false;
      
      private var §-!;§:Array;
      
      public var §%" §:Boolean = false;
      
      private var §%!B§:Boolean = true;
      
      private var §1"!§:String;
      
      private var mDefaultEpisodeNameImagePosition1:Number;
      
      private var mDefaultEpisodeNameImagePosition2:Number;
      
      private var mDefaultEpisodeNameImagePosition3:Number;
      
      private var §&!#§:Boolean;
      
      private var §0"%§:Boolean;
      
      private var §,U§:Number;
      
      public function HighscoreSidebar()
      {
         this.§-!;§ = [];
         super();
         this.reset();
      }
      
      public function §3!m§() : void
      {
         this.§%" § = !this.§%" §;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§+>§ = null;
         this.§`"?§ = [];
         this.§,Y§ = 0;
         for each(_loc1_ in §<"@§)
         {
            _loc2_ = new §+>§(_loc1_);
            this.§`"?§.push(_loc2_);
         }
         _loc2_ = new §+>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1);
         this.§`"?§.push(_loc2_);
         _loc2_ = new §+>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2);
         this.§`"?§.push(_loc2_);
         _loc2_ = new §+>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3);
         this.§`"?§.push(_loc2_);
         this.§,"B§ = TOP_OVERALL_SCORES_EPISODE_1;
         this.§,=§ = null;
         this.§2!=§ = 0;
         this.§^N§ = 0;
         this.§,y§ = false;
         this.§1"!§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         this.§,U§ = 0;
      }
      
      public function §5"@§(param1:§1s§) : void
      {
         this.§&#§ = param1;
         this.§-!;§ = this.§&#§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.mDefaultEpisodeNameImagePosition1 = this.§&#§.getItemByName("MovieClip_Moon").x;
         this.mDefaultEpisodeNameImagePosition2 = this.§&#§.getItemByName("MovieClip_Mc").x;
         this.mDefaultEpisodeNameImagePosition3 = this.§&#§.getItemByName("MovieClip_Ep3").x;
         this.changeState(this.§7k§);
      }
      
      private function §^"C§(param1:Boolean) : void
      {
         this.§&#§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §;j§(param1:Boolean = true) : void
      {
         this.§&#§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§&#§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§&#§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§&#§.getItemByName("Button_Credits").visible)
         {
            this.§&#§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§&!#§ = param1;
      }
      
      public function §']§(param1:Boolean = true) : void
      {
         this.§&#§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§&#§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§&#§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§&#§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function §0u§(param1:Boolean = true) : void
      {
         this.§&#§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§&#§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§&#§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§&#§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §4!a§(param1:Boolean = true) : void
      {
         this.§&#§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§&#§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§&#§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§&#§.getItemByName("Button_Tutorial").visible)
         {
            this.§&#§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§0"%§ = param1;
      }
      
      public function §;!§(param1:Boolean = true) : void
      {
         this.§&#§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§&#§.getItemByName("Button_Language_Spanish").setEnabled(param1);
         if(param1)
         {
            this.§&#§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§&#§.getItemByName("Button_Language_English").setVisibility(true);
            this.§&#§.getItemByName("Button_Language_Spanish").mClip.alpha = 1;
            this.§&#§.getItemByName("Button_Language_Spanish").setVisibility(true);
            this.§&#§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 1;
            this.§&#§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(true);
            this.§&#§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 1;
            this.§&#§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(true);
         }
         else
         {
            this.§&#§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§&#§.getItemByName("Button_Language_Spanish").mClip.alpha = 0.6;
            this.§&#§.getItemByName("MovieClip_Language_Selected_Spanish").mClip.alpha = 0.6;
            this.§&#§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §9e§(param1:Boolean = true) : void
      {
         this.§&#§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§&#§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§&#§.getItemByName("Button_Mute").setVisibility(true);
            this.§&#§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§&#§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§&#§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§&#§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §2!x§() : void
      {
         var _loc1_:Boolean = false;
         if(§^4§.§<"B§.§+!P§() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§&#§.getItemByName("MovieClip_Language_Selected_Spanish").setVisibility(!_loc1_);
         this.§&#§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function §=i§(param1:Boolean) : void
      {
         this.§&#§.getItemByName("Button_Selected_Levels").setVisibility(!param1);
         this.§&#§.getItemByName("Button_Selected_Overall").setVisibility(param1);
      }
      
      public function §!!>§(param1:String) : §+>§
      {
         var _loc2_:§+>§ = null;
         for each(_loc2_ in this.§`"?§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §6!G§(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:§+>§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.changeState(§`!d§);
               this.§?!`§(HighscoreSidebar.§<"@§[this.§,Y§]);
               break;
            case "BUTTON_OVERALL":
               this.changeState(§7>§);
               this.§?!`§(this.§1"!§);
               break;
            case "RIGHT":
               if(this.§7k§ == §7>§)
               {
                  this.§?!`§(this.§="D§());
               }
               else
               {
                  this.§?!`§(HighscoreSidebar.§<"@§[this.§&!L§(this.§,Y§)]);
               }
               break;
            case "LEFT":
               if(this.§7k§ == §7>§)
               {
                  this.§?!`§(this.§@!V§());
                  break;
               }
               this.§?!`§(HighscoreSidebar.§<"@§[this.§+!x§(this.§,Y§)]);
               break;
            case "UP":
               if(this.§7k§ == §7>§)
               {
                  if((_loc4_ = this.§!!>§(this.§1"!§)) != null)
                  {
                     _loc4_.§<!U§();
                     this.§-!x§(this.§1"!§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.§!!>§(this.§,"B§)) != null)
               {
                  _loc4_.§<!U§();
                  this.§-!x§(this.§,"B§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§7k§ == §7>§)
               {
                  if(_loc4_ = this.§!!>§(this.§1"!§))
                  {
                     _loc4_.§7?§();
                     this.§-!x§(this.§1"!§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.§!!>§(this.§,"B§))
               {
                  _loc4_.§7?§();
                  this.§-!x§(this.§,"B§,false);
                  break;
               }
               break;
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         this.§7k§ = param1;
         switch(param1)
         {
            case §`!d§:
               this.§&#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§&#§.getItemByName("TextField_Level_Num") as §?"%§).§8!o§.text = "";
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Board_Selection"));
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Highscores"));
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Sidebar_Buttons"));
               this.§&#§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§&#§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§&#§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§&#§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§&#§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§&#§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§&#§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§&#§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§&#§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§ i§();
               this.§=i§(false);
               this.§?!`§(this.§,"B§,param2);
               break;
            case §7>§:
               this.§&#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§&#§.getItemByName("TextField_Level_Num") as §?"%§).§8!o§.text = "";
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Board_Selection"));
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Highscores"));
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Sidebar_Buttons"));
               this.§&#§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§&#§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§&#§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§&#§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§&#§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§&#§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§&#§.getItemByName("TextField_Level_Num").setVisibility(false);
               this.§&#§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§&#§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§ i§();
               this.§=i§(true);
               this.§?!`§(this.§1"!§,param2);
               break;
            case §-@§:
               this.§&#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§&#§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§&#§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§&#§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§&#§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§&#§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§&#§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§&#§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§&#§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§&#§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§]"A§();
               this.§!!k§(false);
               break;
            case §[!1§:
               this.§&#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("MovieClip_LoadingHiScores"));
               this.§&#§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§&#§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§&#§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§&#§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§&#§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§&#§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§&#§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§&#§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§&#§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§]"A§();
               this.§4!a§(false);
               this.§']§(false);
               this.§0u§(false);
               this.§!!k§(false);
               this.§;!§(false);
               this.§9e§(false);
         }
      }
      
      public function §!!k§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&#§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§&#§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §&!L§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§<"@§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §+!x§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§<"@§.length - 1;
         }
         return param1;
      }
      
      private function §="D§() : String
      {
         if(this.§1"!§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
         {
            this.§1"!§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
         }
         else if(this.§1"!§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
         {
            this.§1"!§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
         }
         else if(this.§1"!§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
         {
            this.§1"!§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         }
         return this.§1"!§;
      }
      
      private function §@!V§() : String
      {
         if(this.§1"!§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
         {
            this.§1"!§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
         }
         else if(this.§1"!§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
         {
            this.§1"!§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
         }
         else if(this.§1"!§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
         {
            this.§1"!§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
         }
         return this.§1"!§;
      }
      
      public function §!"?§(param1:§+>§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §40§.§1"$§)
         {
            _loc4_ = param1.§;!1§;
            do
            {
               _loc3_++;
               param1.§7?§();
               _loc5_ = param1.§,!C§;
               _loc6_ = 0;
               while(_loc6_ < §9!<§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §9!<§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §40§.§1"$§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §'!!§)
                  {
                     _loc2_ = true;
                     param1.§<!U§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §-!x§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §<"@§)
         {
            if(_loc3_ == param1 && !§40§.§2`§(param1))
            {
               this.§,"B§ = param1;
               this.§"^§(param1);
               this.§,U§ = (§&!h§.§ u§ as §^"=§).§^!7§.§"!w§(param1);
               this.§;!7§();
               break;
            }
         }
         if(this.§7k§ == §7>§)
         {
            this.§4N§();
         }
         if(this.§&#§)
         {
            _loc5_ = this.§&#§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§+>§;
         if((_loc4_ = this.§!!>§(param1)) == null)
         {
            return;
         }
         if(_loc4_.§#"A§)
         {
            if(_loc4_.§;!1§)
            {
               if(param2)
               {
                  this.§!"?§(_loc4_);
               }
               this.§?k§(_loc4_.§;!1§,_loc4_.§,!C§);
               this.§4N§();
               this.§^"C§(true);
               this.§&#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Highscores"));
               this.§^2§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§23§.§?"F§,this.§1!A§);
         }
      }
      
      private function §^2§(param1:String) : void
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
            levelNum = levelNumInEpisode + §'w§ * episodeNum;
            if(levelName == "1-1" || levelName == "1-2" || levelName == "1-3" || levelName == TOP_OVERALL_SCORES_EPISODE_1)
            {
               this.§&#§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§&#§.getItemByName("MovieClip_Mc").setVisibility(true);
               this.§&#§.getItemByName("MovieClip_Ep3").setVisibility(false);
            }
            else if(levelName == "2-1" || levelName == "2-2" || levelName == "2-3" || levelName == TOP_OVERALL_SCORES_EPISODE_2)
            {
               this.§&#§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§&#§.getItemByName("MovieClip_Mc").setVisibility(false);
               this.§&#§.getItemByName("MovieClip_Ep3").setVisibility(false);
            }
            else if(levelName == "3-1" || levelName == "3-2" || levelName == "3-3" || levelName == TOP_OVERALL_SCORES_EPISODE_3)
            {
               this.§&#§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§&#§.getItemByName("MovieClip_Mc").setVisibility(false);
               this.§&#§.getItemByName("MovieClip_Ep3").setVisibility(true);
            }
            if(this.§7k§ == §`!d§)
            {
               this.§&#§.getItemByName("MovieClip_Moon").x = this.mDefaultEpisodeNameImagePosition1;
               this.§&#§.getItemByName("MovieClip_Mc").x = this.mDefaultEpisodeNameImagePosition2;
               this.§&#§.getItemByName("MovieClip_Ep3").x = this.mDefaultEpisodeNameImagePosition3;
            }
            else
            {
               positionFixX = 12;
               this.§&#§.getItemByName("MovieClip_Moon").x = this.mDefaultEpisodeNameImagePosition1 + positionFixX;
               this.§&#§.getItemByName("MovieClip_Mc").x = this.mDefaultEpisodeNameImagePosition2 + positionFixX;
               this.§&#§.getItemByName("MovieClip_Ep3").x = this.mDefaultEpisodeNameImagePosition3 + positionFixX;
            }
            levelNameString = "- " + HighscoreSidebar.§3!i§[int(levelNum) - 1];
            (this.§&#§.getItemByName("TextField_Level_Num") as §?"%§).§8!o§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §1!A§(param1:Event) : void
      {
         var _loc2_:§+>§ = param1.currentTarget as §+>§;
         _loc2_.removeEventListener(§23§.§?"F§,this.§1!A§);
         this.§,"B§ = _loc2_.levelId;
         var _loc3_:String = this.§,"B§;
         this.§^2§(_loc3_);
         this.§!"?§(_loc2_);
         this.§?k§(_loc2_.§;!1§,_loc2_.§,!C§);
         this.§4N§();
         this.§>!>§();
         this.§^"C§(true);
         this.§&#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§&#§.setObjectToFront(this.§&#§.getItemByName("Container_Highscores"));
         this.§-!x§(this.§,"B§);
      }
      
      private function §4N§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §40§.§1"$§;
         if(_loc1_.name)
         {
            (this.§&#§.getItemByName("TextField_MyScoreName") as §?"%§).§8!o§.text = _loc1_.name + ": " + this.§,U§;
         }
         if(this.§7k§ == §`!d§)
         {
            for each(_loc2_ in §<"@§)
            {
               if(_loc2_ == this.§,"B§ && !§40§.§2`§(_loc2_))
               {
                  this.§"^§(this.§,"B§);
                  this.§,U§ = (§&!h§.§ u§ as §^"=§).§^!7§.§"!w§(this.§,"B§);
                  this.§;!7§();
                  break;
               }
            }
         }
         else if(this.§7k§ == §7>§)
         {
            if(this.§1"!§ == TOP_OVERALL_SCORES_EPISODE_1)
            {
               this.§,U§ = §40§.§1"$§.episodeScore1;
               this.§;!7§();
            }
            else if(this.§1"!§ == TOP_OVERALL_SCORES_EPISODE_2)
            {
               this.§,U§ = §40§.§1"$§.episodeScore2;
               this.§;!7§();
            }
            else if(this.§1"!§ == TOP_OVERALL_SCORES_EPISODE_3)
            {
               this.§,U§ = §40§.§1"$§.episodeScore3;
               this.§;!7§();
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§]>§(param1);
      }
      
      private function §>!>§(param1:Boolean = true) : void
      {
         this.§^N§ = 0;
         this.§,y§ = param1;
         this.§2!=§ = 0;
      }
      
      private function §]>§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§&#§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§&#§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§,y§)
         {
            if(this.§,=§)
            {
               this.§,=§.filters = [new GlowFilter(16777215,1,32,8,this.§2!=§,5,false,false)];
               for each(_loc4_ in this.§-!;§)
               {
                  this.§,=§.filters.push(_loc4_);
               }
            }
            if(int((this.§&#§.getItemByName("TextField_MyScoreNumber") as §?"%§).§8!o§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§2!=§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§2!=§,3,false,false)];
               for each(_loc4_ in this.§-!;§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§^N§ > 3)
            {
               this.§2!=§ = 0;
               this.§^N§ = 0;
               this.§,=§ = null;
               this.§,y§ = false;
            }
            if(this.§^N§ % 2 == 0)
            {
               this.§2!=§ += param1 / 200;
               if(this.§2!=§ > 5.5)
               {
                  this.§2!=§ = 5.5;
                  ++this.§^N§;
               }
            }
            else
            {
               this.§2!=§ -= param1 / 200;
               if(this.§2!=§ < 0)
               {
                  this.§2!=§ = 0;
                  ++this.§^N§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§-!;§;
            _loc3_.filters = this.§-!;§;
            if(this.§,=§)
            {
               this.§,=§.filters = this.§-!;§;
            }
         }
      }
      
      private function §?k§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§1-§ = param1;
         if(!this.§&#§)
         {
            return;
         }
         var _loc4_:Class = §2!3§.dynamic("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§&#§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§,=§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §9!<§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §9!<§;
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
               if(§40§.§1"$§ && _loc10_.isPlayer)
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
                  _loc9_.TextField_Rank.textColor = §=B§;
                  _loc9_.TextField_Name.textColor = §=B§;
                  _loc9_.TextField_Points.textColor = §=B§;
                  this.§,=§ = _loc9_;
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
      
      public function §"^§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§<"@§)
         {
            if(_loc3_ == param1)
            {
               this.§,Y§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §?!`§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§+>§ = null;
         for each(_loc4_ in this.§`"?§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§?V§(param2) == false)
               {
                  if(param3)
                  {
                     this.§^"C§(false);
                     this.§&#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§&#§.setObjectToFront(this.§&#§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§?k§(_loc4_.§;!1§,_loc4_.§,!C§);
                     this.§4N§();
                     this.§-!x§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§^"C§(false);
                  this.§&#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§&#§.setObjectToFront(this.§&#§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§23§.§?"F§,this.§1!A§);
                  break;
               }
            }
         }
      }
      
      public function §#!V§() : void
      {
         var _loc1_:§+>§ = null;
         for each(_loc1_ in this.§`"?§)
         {
            _loc1_.§5"1§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§1s§ = null;
         this.§^"C§(false);
         if(this.§&#§)
         {
            _loc1_ = this.§&#§.getItemByName("HighscoreSidebar") as §1s§;
            this.§&#§.clear();
            this.§&#§ = null;
         }
      }
      
      public function §@!a§(param1:Boolean) : void
      {
         var mySO:§?";§ = null;
         var value:Boolean = param1;
         this.§%!B§ = value;
         §"!S§.§#!P§(this.§%!B§);
         try
         {
            mySO = §?";§.getLocal(§^"=§.§1!h§);
            mySO.data.useSounds = value;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public function §?3§() : Boolean
      {
         return this.§%!B§;
      }
      
      public function get currentPage() : int
      {
         return this.§,Y§;
      }
      
      public function §7K§() : void
      {
         this.§?!`§(HighscoreSidebar.§<"@§[this.currentPage]);
      }
      
      public function set container(param1:§1s§) : void
      {
         this.§&#§ = param1;
      }
      
      public function get container() : §1s§
      {
         return this.§&#§;
      }
      
      public function get §6"'§() : String
      {
         return this.§,"B§;
      }
      
      public function get §=!h§() : String
      {
         return this.§7k§;
      }
      
      public function set §6"'§(param1:String) : void
      {
         this.§,"B§ = param1;
      }
      
      public function §^n§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §'w§ * _loc3_;
         return HighscoreSidebar.§3!i§[int(_loc5_) - 1];
      }
      
      private function § i§() : void
      {
         if(§40§.§1"$§.§ !0§)
         {
            this.§;!7§();
            this.§&#§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§]"A§();
         }
      }
      
      private function §]"A§() : void
      {
         this.§&#§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §5"A§() : Boolean
      {
         return this.§0"%§;
      }
      
      public function get §'p§() : Boolean
      {
         return this.§&!#§;
      }
      
      private function §;!7§() : void
      {
         var _loc1_:String = null;
         if(§40§.§1"$§.name)
         {
            _loc1_ = §40§.§1"$§.name + ":  " + this.§,U§;
            (this.§&#§.getItemByName("TextField_MyScoreName") as §?"%§).§8!o§.text = _loc1_;
         }
      }
   }
}
