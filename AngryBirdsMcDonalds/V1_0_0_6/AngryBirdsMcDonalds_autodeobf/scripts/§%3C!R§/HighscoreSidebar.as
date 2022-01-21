package §<!R§
{
   import § e§.§&!&§;
   import §0;§.§3=§;
   import §31§.§ !A§;
   import §31§.§?![§;
   import §31§.§?S§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §7!Q§.§[!5§;
   import §7!k§.§%!_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §?S§
   {
      
      public static const § each§:String = "StateHighScores";
      
      public static const §!N§:String = "StateDisableHighScores";
      
      public static const §#!^§:String = "StateLoadingLevelHighScores";
      
      public static const §-F§:String = "2-9";
      
      public static const §^7§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8");
      
      public static const §;n§:Array = ["1","2","1","2","3","1","2","3"];
      
      public static const §=d§:int = 10;
      
      public static const §"!7§:int = 5;
      
      public static const §`P§:uint = 16711680;
       
      
      private var §[!I§:String = null;
      
      private var §4B§:Array;
      
      private var §7D§:int = 2;
      
      private var §'S§:String = null;
      
      private var §8! §:Array;
      
      private var §0!h§:§ !A§;
      
      private var §-L§:MovieClip = null;
      
      private var § null§:Number = 0;
      
      private var §9k§:int = 0;
      
      private var §'z§:Boolean = false;
      
      private var §@!T§:Array;
      
      public var §=!3§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         this.§@!T§ = [];
         super();
         this.reset();
      }
      
      public function §7F§() : void
      {
         this.§=!3§ = !this.§=!3§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§!!F§ = null;
         this.§4B§ = [];
         this.§7D§ = 0;
         for each(_loc1_ in §^7§)
         {
            _loc2_ = new §!!F§(_loc1_);
            this.§4B§.push(_loc2_);
         }
         this.§'S§ = null;
         this.§-L§ = null;
         this.§ null§ = 0;
         this.§9k§ = 0;
         this.§'z§ = false;
      }
      
      public function §switch§(param1:XML, param2:§ !A§, param3:§3=§, param4:§1!b§, param5:MovieClip = null) : void
      {
         this.§0!h§ = new § !A§(param1,param2,param3,param5);
         this.§@!T§ = this.§0!h§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §5!"§(param1:Boolean) : void
      {
         this.§0!h§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§0!h§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§0!h§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§0!h§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§0!h§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableLoginButton(param1:Boolean = true) : void
      {
         this.§0!h§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§0!h§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§0!h§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§0!h§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§0!h§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§0!h§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§0!h§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§0!h§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§0!h§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§0!h§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§0!h§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§0!h§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function §'!b§(param1:Boolean = true) : void
      {
         this.§0!h§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§0!h§.getItemByName("Button_Language_Chinese").setEnabled(param1);
         if(param1)
         {
            this.§0!h§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§0!h§.getItemByName("Button_Language_English").setVisibility(true);
            this.§0!h§.getItemByName("Button_Language_Chinese").mClip.alpha = 1;
            this.§0!h§.getItemByName("Button_Language_Chinese").setVisibility(true);
            this.§0!h§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 1;
            this.§0!h§.getItemByName("MovieClip_Language_Selected_China").setVisibility(true);
            this.§0!h§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 1;
            this.§0!h§.getItemByName("MovieClip_Language_Selected_English").setVisibility(true);
         }
         else
         {
            this.§0!h§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§0!h§.getItemByName("Button_Language_Chinese").mClip.alpha = 0.6;
            this.§0!h§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 0.6;
            this.§0!h§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §>L§(param1:Boolean = true) : void
      {
         this.§0!h§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§0!h§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§0!h§.getItemByName("Button_Mute").setVisibility(true);
            this.§0!h§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§0!h§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§0!h§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§0!h§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §2d§() : void
      {
         var _loc1_:Boolean = false;
         if(§&!&§.§+j§.getLanguage() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§0!h§.getItemByName("MovieClip_Language_Selected_China").setVisibility(!_loc1_);
         this.§0!h§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function getScoreLoaderById(param1:String) : §!!F§
      {
         var _loc2_:§!!F§ = null;
         for each(_loc2_ in this.§4B§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         var _loc4_:§!!F§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§^7§[this.§[!0§(this.§7D§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§^7§[this.§9!l§(this.§7D§)]);
               break;
            case "UP":
               if((_loc4_ = this.getScoreLoaderById(this.§'S§)) != null)
               {
                  _loc4_.§2M§();
                  this.§1!G§(this.§'S§,false);
                  break;
               }
               break;
            case "DOWN":
               if(_loc4_ = this.getScoreLoaderById(this.§'S§))
               {
                  _loc4_.§8w§();
                  this.§1!G§(this.§'S§,false);
                  break;
               }
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case § each§:
               this.§0!h§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§0!h§.getItemByName("TextField_Level_Num") as §?![§).§&t§.text = "";
               this.§0!h§.setObjectToFront(this.§0!h§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§0!h§.setObjectToFront(this.§0!h§.getItemByName("Container_Highscores"));
               this.§0!h§.setObjectToFront(this.§0!h§.getItemByName("Container_Sidebar_Buttons"));
               this.§0!h§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§0!h§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§0!h§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§0!h§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§0!h§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§0!h§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§0!h§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§0!h§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§0!h§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§0!h§.getItemByName("TextField_MyScoreNumber").setVisibility(true);
               this.§0!h§.getItemByName("TextField_MyScoreName").setVisibility(true);
               if(§[!5§.§1G§(this.§'S§))
               {
                  this.§'S§ = "2-3";
               }
               this.loadScoreTable(this.§'S§,param2);
               break;
            case §!N§:
               this.§0!h§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§0!h§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§0!h§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§0!h§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§0!h§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§0!h§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§0!h§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§0!h§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§0!h§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§0!h§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§0!h§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§0!h§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHighScoreTab(false);
               break;
            case §#!^§:
               this.§0!h§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§0!h§.setObjectToFront(this.§0!h§.getItemByName("MovieClip_LoadingHiScores"));
               this.§0!h§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§0!h§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§0!h§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§0!h§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§0!h§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§0!h§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§0!h§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§0!h§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§0!h§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§0!h§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§0!h§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHelpButton(false);
               this.enableLoginButton(false);
               this.enableLogOutButton(false);
               this.enableHighScoreTab(false);
               this.§'!b§(false);
               this.§>L§(false);
         }
         this.§[!I§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!h§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
         }
         else
         {
            this.§0!h§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
         }
      }
      
      private function §[!0§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§^7§.length - 1)
         {
            param1 = 2;
         }
         return param1;
      }
      
      private function §9!l§(param1:int) : int
      {
         param1--;
         if(param1 < 2)
         {
            param1 = HighscoreSidebar.§^7§.length - 1;
         }
         return param1;
      }
      
      public function §3!7§(param1:§!!F§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §[!5§.§7!h§)
         {
            _loc4_ = param1.§2`§;
            do
            {
               _loc3_++;
               param1.§8w§();
               _loc5_ = param1.§6!@§;
               _loc6_ = 0;
               while(_loc6_ < §=d§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §=d§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §[!5§.§7!h§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §"!7§)
                  {
                     _loc2_ = true;
                     param1.§2M§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §1!G§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §^7§)
         {
            if(_loc3_ == param1 && !§[!5§.§1G§(param1))
            {
               this.§'S§ = param1;
               this.§@!§(param1);
               (this.§0!h§.getItemByName("TextField_MyScoreNumber") as §?![§).§&t§.text = "" + § 4§.§?H§.§[,§(param1);
               break;
            }
         }
         if(this.§0!h§)
         {
            _loc5_ = this.§0!h§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§!!F§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§3a§)
         {
            if(_loc4_.§2`§)
            {
               if(param2)
               {
                  this.§3!7§(_loc4_);
               }
               this.§4+§(_loc4_.§2`§,_loc4_.§6!@§);
               this.§`E§();
               this.§5!"§(true);
               this.§0!h§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§0!h§.setObjectToFront(this.§0!h§.getItemByName("Container_Highscores"));
               this.§%!n§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§11§.§[t§,this.§ ^§);
         }
      }
      
      private function §%!n§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               this.§0!h§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§0!h§.getItemByName("MovieClip_Mc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               this.§0!h§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§0!h§.getItemByName("MovieClip_Mc").setVisibility(false);
            }
            levelNameString = "-" + HighscoreSidebar.§;n§[int(levelNum) - 1];
            (this.§0!h§.getItemByName("TextField_Level_Num") as §?![§).§&t§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function § ^§(param1:Event) : void
      {
         var _loc2_:§!!F§ = param1.currentTarget as §!!F§;
         _loc2_.removeEventListener(§11§.§[t§,this.§ ^§);
         this.§'S§ = _loc2_.levelId;
         var _loc3_:String = this.§'S§;
         this.§%!n§(_loc3_);
         this.§3!7§(_loc2_);
         this.§4+§(_loc2_.§2`§,_loc2_.§6!@§);
         this.§`E§();
         this.§=Q§();
         this.§5!"§(true);
         this.§0!h§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§0!h§.setObjectToFront(this.§0!h§.getItemByName("Container_Highscores"));
         this.§1!G§(this.§'S§);
      }
      
      private function §`E§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §[!5§.§7!h§;
         if(this.§[!I§ == § each§)
         {
            for each(_loc2_ in §^7§)
            {
               if(_loc2_ == this.§'S§ && !§[!5§.§1G§(_loc2_))
               {
                  this.§@!§(this.§'S§);
                  (this.§0!h§.getItemByName("TextField_MyScoreNumber") as §?![§).§&t§.text = "" + § 4§.§?H§.§[,§(this.§'S§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§4W§(param1);
      }
      
      private function §=Q§(param1:Boolean = true) : void
      {
         this.§9k§ = 0;
         this.§'z§ = param1;
         this.§ null§ = 0;
      }
      
      private function §4W§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§0!h§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§0!h§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§'z§)
         {
            if(this.§-L§)
            {
               this.§-L§.filters = [new GlowFilter(16777215,1,32,8,this.§ null§,5,false,false)];
               for each(_loc4_ in this.§@!T§)
               {
                  this.§-L§.filters.push(_loc4_);
               }
            }
            if(int((this.§0!h§.getItemByName("TextField_MyScoreNumber") as §?![§).§&t§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§ null§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§ null§,3,false,false)];
               for each(_loc4_ in this.§@!T§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§9k§ > 3)
            {
               this.§ null§ = 0;
               this.§9k§ = 0;
               this.§-L§ = null;
               this.§'z§ = false;
            }
            if(this.§9k§ % 2 == 0)
            {
               this.§ null§ += param1 / 200;
               if(this.§ null§ > 5.5)
               {
                  this.§ null§ = 5.5;
                  ++this.§9k§;
               }
            }
            else
            {
               this.§ null§ -= param1 / 200;
               if(this.§ null§ < 0)
               {
                  this.§ null§ = 0;
                  ++this.§9k§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§@!T§;
            _loc3_.filters = this.§@!T§;
            if(this.§-L§)
            {
               this.§-L§.filters = this.§@!T§;
            }
         }
      }
      
      private function §4+§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§8! § = param1;
         if(!this.§0!h§)
         {
            return;
         }
         var _loc4_:Class = §%!_§.§1$§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§0!h§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§-L§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §=d§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §=d§;
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
               if(§[!5§.§7!h§ && _loc10_.isPlayer)
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
                  _loc9_.TextField_Rank.textColor = §`P§;
                  _loc9_.TextField_Name.textColor = §`P§;
                  _loc9_.TextField_Points.textColor = §`P§;
                  this.§-L§ = _loc9_;
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
      
      public function §@!§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§^7§)
         {
            if(_loc3_ == param1)
            {
               this.§7D§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§!!F§ = null;
         for each(_loc4_ in this.§4B§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§,!D§(param2) == false)
               {
                  if(param3)
                  {
                     this.§5!"§(false);
                     this.§0!h§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§0!h§.setObjectToFront(this.§0!h§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§4+§(_loc4_.§2`§,_loc4_.§6!@§);
                     this.§`E§();
                     this.§1!G§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§5!"§(false);
                  this.§0!h§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§0!h§.setObjectToFront(this.§0!h§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§11§.§[t§,this.§ ^§);
                  break;
               }
            }
         }
      }
      
      public function §3!j§() : void
      {
         var _loc1_:§!!F§ = null;
         for each(_loc1_ in this.§4B§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§ !A§ = null;
         this.§5!"§(false);
         if(this.§0!h§)
         {
            _loc1_ = this.§0!h§.getItemByName("HighscoreSidebar") as § !A§;
            this.§0!h§.clear();
            this.§0!h§ = null;
         }
      }
      
      public function get §7V§() : int
      {
         return this.§7D§;
      }
      
      public function set container(param1:§ !A§) : void
      {
         this.§0!h§ = param1;
      }
      
      public function get container() : § !A§
      {
         return this.§0!h§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§'S§;
      }
      
      public function get §56§() : String
      {
         return this.§[!I§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§'S§ = param1;
      }
   }
}
