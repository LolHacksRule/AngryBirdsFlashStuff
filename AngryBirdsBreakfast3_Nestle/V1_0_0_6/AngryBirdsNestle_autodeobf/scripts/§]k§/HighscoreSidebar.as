package §]K§
{
   import §&<§.§^!#§;
   import §63§.§^!!§;
   import §@!6§.§3!5§;
   import §[!F§.§1c§;
   import §[!F§.§3j§;
   import com.rovio.assets.§<U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §2t§:String = "StateHighScoresLocal";
      
      public static const §^!V§:String = "StateHighScoresGlobal";
      
      public static const §"?§:String = "StateDisableHighScores";
      
      public static const §+G§:String = "StateLoadingLevelHighScores";
      
      public static const §+!W§:String = "credits_level";
      
      public static const §,!S§:Array = new Array("1-1","1-2","1-3","1-4","1-5","2-1","2-2","2-3","2-4","2-5");
      
      public static const §?!'§:Array = ["1","2","3","4","5","6","7","8","9","10"];
      
      public static const §'!H§:int = 5;
      
      public static const §#! §:int = 10;
      
      public static const §5Y§:int = 10;
      
      public static const §#!y§:uint = 3394815;
       
      
      private var §,E§:String = null;
      
      private var §6!g§:Array;
      
      private var §1!q§:int = 0;
      
      private var §["-§:String = null;
      
      private var §'!]§:Array;
      
      private var §[!<§:§3j§;
      
      private var §=5§:MovieClip = null;
      
      private var §@"§:Number = 0;
      
      private var §3!_§:int = 0;
      
      private var §&W§:Boolean = false;
      
      private var §?j§:Array;
      
      public var §5"&§:Boolean = false;
      
      private var §'!C§:Boolean;
      
      private var §6!l§:Boolean;
      
      private var §'k§:Boolean;
      
      private var §&^§:Number;
      
      private var §2F§:Boolean;
      
      public function HighscoreSidebar()
      {
         this.§?j§ = [];
         super();
         this.reset();
      }
      
      public function §0!x§() : void
      {
         this.§5"&§ = !this.§5"&§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§^$§ = null;
         var _loc3_:§^$§ = null;
         this.§6!g§ = [];
         this.§1!q§ = 0;
         for each(_loc1_ in §,!S§)
         {
            _loc2_ = new §^$§(_loc1_,true);
            this.§6!g§.push(_loc2_);
            _loc3_ = new §^$§(_loc1_,false);
            this.§6!g§.push(_loc3_);
         }
         this.§["-§ = §,!S§[0];
         this.§=5§ = null;
         this.§@"§ = 0;
         this.§3!_§ = 0;
         this.§&W§ = false;
         this.§&^§ = 0;
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:§^$§ = null;
         for each(_loc1_ in this.§6!g§)
         {
            _loc1_.removeEventListener(§9!]§.§8!N§,this.§-"#§);
         }
      }
      
      public function §&J§(param1:§3j§) : void
      {
         this.§[!<§ = param1;
         this.§?j§ = this.§[!<§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.§=O§(this.§,E§);
      }
      
      private function §#6§(param1:Boolean) : void
      {
         this.§[!<§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §70§(param1:Boolean = true) : void
      {
         this.§[!<§.getItemByName("Button_Credits").setEnabled(param1,true);
         if(param1)
         {
            this.§[!<§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§[!<§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§[!<§.getItemByName("Button_Credits").visible)
         {
            this.§[!<§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§'!C§ = param1;
      }
      
      public function §94§(param1:Boolean = true) : void
      {
         this.§[!<§.getItemByName("Button_Logout").setEnabled(param1,true);
         this.§'k§ = param1;
         if(param1)
         {
            this.§[!<§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§[!<§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§[!<§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function § !h§(param1:Boolean = true) : void
      {
         this.§[!<§.getItemByName("Button_Tutorial").setEnabled(param1,true);
         if(param1)
         {
            this.§[!<§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§[!<§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§[!<§.getItemByName("Button_Tutorial").visible)
         {
            this.§[!<§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§6!l§ = param1;
      }
      
      public function §'! §(param1:Boolean = true) : void
      {
         this.§[!<§.getItemByName("Button_Mute").setEnabled(param1,true);
         if(param1)
         {
            this.§[!<§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§[!<§.getItemByName("Button_Mute").setVisibility(true);
            this.§[!<§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§[!<§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§[!<§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§[!<§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §-T§(param1:Boolean) : void
      {
      }
      
      public function §7!Y§(param1:String) : §^$§
      {
         var _loc2_:§^$§ = null;
         for each(_loc2_ in this.§6!g§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1 && _loc2_.§%m§ == this.§2F§)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §4!E§(param1:String, param2:Boolean) : §^$§
      {
         var _loc3_:§^$§ = null;
         for each(_loc3_ in this.§6!g§)
         {
            if(_loc3_ != null && _loc3_.levelId == param1 && _loc3_.§%m§ == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §""-§(param1:int, param2:String, param3:§^!#§) : void
      {
         var _loc4_:§^$§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.§=O§(§2t§);
               this.§'!g§(HighscoreSidebar.§,!S§[this.§1!q§]);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "BUTTON_OVERALL":
               this.§=O§(§^!V§);
               this.§'!g§(HighscoreSidebar.§,!S§[this.§1!q§]);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "RIGHT":
               if(this.§,E§ == §^!V§)
               {
                  this.§'!g§(HighscoreSidebar.§,!S§[this.§,!x§(this.§1!q§)]);
               }
               else
               {
                  this.§'!g§(HighscoreSidebar.§,!S§[this.§,!x§(this.§1!q§)]);
               }
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "LEFT":
               if(this.§,E§ == §^!V§)
               {
                  this.§'!g§(HighscoreSidebar.§,!S§[this.§8!r§(this.§1!q§)]);
               }
               else
               {
                  this.§'!g§(HighscoreSidebar.§,!S§[this.§8!r§(this.§1!q§)]);
               }
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "UP":
               if(this.§,E§ == §^!V§)
               {
                  if((_loc4_ = this.§7!Y§(this.§["-§)) != null)
                  {
                     _loc4_.§3!V§();
                     this.§[!c§(this.§["-§,false);
                  }
               }
               else if((_loc4_ = this.§7!Y§(this.§["-§)) != null)
               {
                  _loc4_.§3!V§();
                  this.§[!c§(this.§["-§,false);
               }
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "DOWN":
               if(this.§,E§ == §^!V§)
               {
                  if(_loc4_ = this.§7!Y§(this.§["-§))
                  {
                     _loc4_.§4"§();
                     this.§[!c§(this.§["-§,false);
                  }
               }
               else if(_loc4_ = this.§7!Y§(this.§["-§))
               {
                  _loc4_.§4"§();
                  this.§[!c§(this.§["-§,false);
               }
               §3!5§.§<!9§("Menu_Confirm");
         }
      }
      
      public function §=O§(param1:String, param2:Boolean = false) : void
      {
         this.§,E§ = param1;
         switch(param1)
         {
            case §2t§:
               this.§2F§ = true;
               this.§[!<§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§[!<§.getItemByName("TextField_Level_Num") as §1c§).§ e§.text = "";
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Board_Selection"));
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Highscores"));
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Sidebar_Buttons"));
               this.§[!<§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§[!<§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§[!<§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§[!<§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§[!<§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§[!<§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§[!<§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§[!<§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§6!9§();
               this.§-T§(false);
               this.§'!g§(this.§["-§,param2);
               break;
            case §^!V§:
               this.§2F§ = false;
               this.§[!<§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§[!<§.getItemByName("TextField_Level_Num") as §1c§).§ e§.text = "";
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Board_Selection"));
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Highscores"));
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Sidebar_Buttons"));
               this.§[!<§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§[!<§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§[!<§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§[!<§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§[!<§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§[!<§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§[!<§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§[!<§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§6!9§();
               this.§-T§(true);
               this.§'!g§(this.§["-§,param2);
               break;
            case §"?§:
               this.§[!<§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§[!<§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§[!<§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§[!<§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§[!<§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§[!<§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§[!<§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§[!<§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§[!<§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§92§();
               this.§2&§(false);
               break;
            case §+G§:
               this.§[!<§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("MovieClip_LoadingHiScores"));
               this.§[!<§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§[!<§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§[!<§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§[!<§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§[!<§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§[!<§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§[!<§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§[!<§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§92§();
               this.§ !h§(false);
               this.§94§(false);
               this.§2&§(false);
               this.§'! §(false);
         }
      }
      
      public function §2&§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[!<§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§[!<§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §,!x§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§,!S§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §8!r§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§,!S§.length - 1;
         }
         return param1;
      }
      
      public function §3!K§(param1:§^$§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §^!!§.§]!P§)
         {
            _loc4_ = param1.§?!s§;
            do
            {
               _loc3_++;
               param1.§4"§();
               _loc5_ = param1.§@!'§;
               _loc6_ = 0;
               while(_loc6_ < §#! §)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §#! §;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §^!!§.§]!P§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §5Y§)
                  {
                     _loc2_ = true;
                     param1.§3!V§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §[!c§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §,!S§)
         {
            if(_loc3_ == param1 && !§^!!§.§ !R§(param1))
            {
               this.§["-§ = param1;
               this.§^!H§(param1);
               this.§&^§ = (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§&!d§(param1);
               this.§2!t§();
               break;
            }
         }
         if(this.§,E§ == §^!V§)
         {
            this.§5!!§();
         }
         if(this.§[!<§)
         {
            _loc5_ = this.§[!<§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§^$§;
         if((_loc4_ = this.§7!Y§(param1)) == null)
         {
            return;
         }
         if(_loc4_.ready)
         {
            if(_loc4_.§?!s§)
            {
               if(param2)
               {
                  this.§3!K§(_loc4_);
               }
               this.§!z§(_loc4_.§?!s§,_loc4_.§@!'§);
               this.§5!!§();
               this.§#6§(true);
               this.§[!<§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Highscores"));
               this.§#f§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§9!]§.§8!N§,this.§-"#§);
         }
      }
      
      private function §#f§(param1:String) : void
      {
         var episodeNum:int = 0;
         var levelNumInEpisode:int = 0;
         var levelNum:int = 0;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            episodeNum = int(levelName.charAt(0)) - 1;
            levelNumInEpisode = int(levelName.substring(2));
            levelNum = levelNumInEpisode + §'!H§ * episodeNum;
            levelNameString = HighscoreSidebar.§?!'§[int(levelNum) - 1];
            (this.§[!<§.getItemByName("TextField_Level_Num") as §1c§).§ e§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §-"#§(param1:Event) : void
      {
         var _loc2_:§^$§ = param1.currentTarget as §^$§;
         _loc2_.removeEventListener(§9!]§.§8!N§,this.§-"#§);
         this.§["-§ = _loc2_.levelId;
         var _loc3_:String = this.§["-§;
         this.§#f§(_loc3_);
         this.§3!K§(_loc2_);
         this.§!z§(_loc2_.§?!s§,_loc2_.§@!'§);
         this.§5!!§();
         this.§#!L§();
         this.§#6§(true);
         this.§[!<§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("Container_Highscores"));
         this.§[!c§(this.§["-§);
      }
      
      private function §5!!§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §^!!§.§]!P§;
         if(_loc1_.name)
         {
            (this.§[!<§.getItemByName("TextField_MyScoreName") as §1c§).§ e§.text = _loc1_.name + ":  " + this.§&^§;
         }
         if(this.§,E§ == §2t§)
         {
            for each(_loc2_ in §,!S§)
            {
               if(_loc2_ == this.§["-§ && !§^!!§.§ !R§(_loc2_))
               {
                  this.§^!H§(this.§["-§);
                  this.§&^§ = (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§&!d§(this.§["-§);
                  this.§2!t§();
                  break;
               }
            }
         }
         else if(this.§,E§ == §^!V§)
         {
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§[!h§(param1);
      }
      
      private function §#!L§(param1:Boolean = true) : void
      {
         this.§3!_§ = 0;
         this.§&W§ = param1;
         this.§@"§ = 0;
      }
      
      private function §[!h§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§[!<§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§[!<§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§&W§)
         {
            if(this.§=5§)
            {
               this.§=5§.filters = [new GlowFilter(16777215,1,32,8,this.§@"§,5,false,false)];
               for each(_loc4_ in this.§?j§)
               {
                  this.§=5§.filters.push(_loc4_);
               }
            }
            if(int((this.§[!<§.getItemByName("TextField_MyScoreNumber") as §1c§).§ e§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§@"§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§@"§,3,false,false)];
               for each(_loc4_ in this.§?j§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§3!_§ > 3)
            {
               this.§@"§ = 0;
               this.§3!_§ = 0;
               this.§=5§ = null;
               this.§&W§ = false;
            }
            if(this.§3!_§ % 2 == 0)
            {
               this.§@"§ += param1 / 200;
               if(this.§@"§ > 5.5)
               {
                  this.§@"§ = 5.5;
                  ++this.§3!_§;
               }
            }
            else
            {
               this.§@"§ -= param1 / 200;
               if(this.§@"§ < 0)
               {
                  this.§@"§ = 0;
                  ++this.§3!_§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§?j§;
            _loc3_.filters = this.§?j§;
            if(this.§=5§)
            {
               this.§=5§.filters = this.§?j§;
            }
         }
      }
      
      private function §!z§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc3_:Boolean = false;
         this.§'!]§ = param1;
         if(!this.§[!<§)
         {
            return;
         }
         var _loc4_:Class = §<U§.§5"0§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§[!<§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§=5§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §#! §)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §#! §;
            try
            {
               _loc10_ = param1[_loc8_];
            }
            catch(e:Error)
            {
            }
            _loc9_ = new _loc4_();
            if(_loc8_ + 1 < 100)
            {
               _loc9_.TextField_Rank.text = _loc8_ + 1 + ".";
            }
            else
            {
               _loc9_.TextField_Rank.text = (_loc8_ + 1 + ".").slice(1,4);
            }
            if(_loc10_)
            {
               if(§^!!§.§]!P§ && _loc10_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc11_ = _loc10_.nickName;
               _loc12_ = "";
               _loc12_ = this.§&!"§(_loc11_);
               _loc11_ = this.§5!v§(_loc11_);
               _loc9_.TextField_Name.text = _loc11_;
               _loc9_.TextField_CountryCode.text = _loc12_;
               _loc9_.TextField_Points.text = _loc10_.score;
               if(_loc3_)
               {
                  _loc9_.TextField_Rank.textColor = §#!y§;
                  _loc9_.TextField_Name.textColor = §#!y§;
                  _loc9_.TextField_Points.textColor = §#!y§;
                  _loc9_.TextField_CountryCode.textColor = §#!y§;
                  this.§=5§ = _loc9_;
               }
            }
            else
            {
               _loc9_.TextField_Name.text = "-";
               _loc9_.TextField_Points.text = "";
               _loc9_.TextField_CountryCode.text = "";
            }
            _loc9_.y = _loc6_;
            _loc6_ += 19;
            _loc5_.addChild(_loc9_);
            _loc7_++;
         }
      }
      
      private function §5!v§(param1:String) : String
      {
         if(!this.§2F§)
         {
            param1 = param1.slice(0,param1.length - 2);
         }
         return param1;
      }
      
      private function §&!"§(param1:String) : String
      {
         var _loc2_:String = "";
         if(!this.§2F§ && param1.charAt(param1.length - 2) != "X")
         {
            _loc2_ = param1.slice(param1.length - 2,param1.length);
         }
         return _loc2_;
      }
      
      public function §^!H§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§,!S§)
         {
            if(_loc3_ == param1)
            {
               this.§1!q§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §'!g§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§^$§ = null;
         for each(_loc4_ in this.§6!g§)
         {
            if(_loc4_.levelId == param1 && _loc4_.§%m§ == this.§2F§)
            {
               if(_loc4_.§]<§(param2) == false)
               {
                  if(param3)
                  {
                     this.§#6§(false);
                     this.§[!<§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§!z§(_loc4_.§?!s§,_loc4_.§@!'§);
                     this.§5!!§();
                     this.§[!c§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§#6§(false);
                  this.§[!<§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§[!<§.setObjectToFront(this.§[!<§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§9!]§.§8!N§,this.§-"#§);
                  break;
               }
            }
         }
      }
      
      public function §<J§() : void
      {
         var _loc1_:§^$§ = null;
         for each(_loc1_ in this.§6!g§)
         {
            _loc1_.§0!m§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§3j§ = null;
         this.§#6§(false);
         if(this.§[!<§)
         {
            _loc1_ = this.§[!<§.getItemByName("HighscoreSidebar") as §3j§;
            this.§[!<§.clear();
            this.§[!<§ = null;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§1!q§;
      }
      
      public function §8@§() : void
      {
         this.§'!g§(HighscoreSidebar.§,!S§[this.currentPage]);
      }
      
      public function set container(param1:§3j§) : void
      {
         this.§[!<§ = param1;
      }
      
      public function get container() : §3j§
      {
         return this.§[!<§;
      }
      
      public function get §>"5§() : String
      {
         return this.§["-§;
      }
      
      public function get §7d§() : String
      {
         return this.§,E§;
      }
      
      public function set §>"5§(param1:String) : void
      {
         this.§["-§ = param1;
      }
      
      public function §1E§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §'!H§ * _loc3_;
         return HighscoreSidebar.§?!'§[int(_loc5_) - 1];
      }
      
      private function §6!9§() : void
      {
         if(§^!!§.§]!P§.§9!Z§)
         {
            this.§2!t§();
            this.§[!<§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§92§();
         }
      }
      
      private function §92§() : void
      {
         this.§[!<§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §,I§() : Boolean
      {
         return this.§6!l§;
      }
      
      public function get §>"'§() : Boolean
      {
         return this.§'!C§;
      }
      
      public function §[w§() : Boolean
      {
         return this.§'k§;
      }
      
      private function §2!t§() : void
      {
         var _loc1_:String = null;
         if(§^!!§.§]!P§.name)
         {
            _loc1_ = §^!!§.§]!P§.name + ":  " + this.§&^§;
            (this.§[!<§.getItemByName("TextField_MyScoreName") as §1c§).§ e§.text = _loc1_;
         }
      }
   }
}
