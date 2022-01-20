package §5!q§
{
   import §#!1§.§!!X§;
   import §,!C§.§-6§;
   import §,!C§.§0!4§;
   import §,!C§.§3!&§;
   import §,!H§.§ for§;
   import §0$§.§!t§;
   import §7p§.§%g§;
   import §;'§.§6d§;
   import §@-§.§[y§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §0!4§
   {
      
      public static const §<! §:String = "StateHighScores";
      
      public static const §"!n§:String = "StateDisableHighScores";
      
      public static const §]!g§:String = "StateLoadingLevelHighScores";
      
      public static const §7[§:String = "2-9";
      
      public static const §#!#§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8");
      
      public static const §]!-§:Array = ["1","2","1","2","3","1","2","3"];
      
      public static const §,y§:int = 10;
      
      public static const §;-§:int = 5;
      
      public static const §7P§:uint = 16711680;
       
      
      private var §0!>§:String = null;
      
      private var §8!§:Array;
      
      private var §^d§:int = 2;
      
      private var §>!I§:String = null;
      
      private var §[l§:Array;
      
      private var §=d§:§-6§;
      
      private var §'N§:MovieClip = null;
      
      private var §%_§:Number = 0;
      
      private var §2A§:int = 0;
      
      private var §#I§:Boolean = false;
      
      private var §1^§:Array;
      
      public var § !d§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         this.§1^§ = [];
         super();
         this.reset();
      }
      
      public function §,!q§() : void
      {
         this.§ !d§ = !this.§ !d§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§<0§ = null;
         this.§8!§ = [];
         this.§^d§ = 0;
         for each(_loc1_ in §#!#§)
         {
            _loc2_ = new §<0§(_loc1_);
            this.§8!§.push(_loc2_);
         }
         this.§>!I§ = null;
         this.§'N§ = null;
         this.§%_§ = 0;
         this.§2A§ = 0;
         this.§#I§ = false;
      }
      
      public function §"!§(param1:XML, param2:§-6§, param3:§%g§, param4:§ for§, param5:MovieClip = null) : void
      {
         this.§=d§ = new §-6§(param1,param2,param3,param5);
         this.§1^§ = this.§=d§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §1b§(param1:Boolean) : void
      {
         this.§=d§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§=d§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§=d§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§=d§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§=d§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableLoginButton(param1:Boolean = true) : void
      {
         this.§=d§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§=d§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§=d§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§=d§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§=d§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§=d§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§=d§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§=d§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§=d§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§=d§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§=d§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§=d§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function §,!J§(param1:Boolean = true) : void
      {
         this.§=d§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§=d§.getItemByName("Button_Language_Chinese").setEnabled(param1);
         if(param1)
         {
            this.§=d§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§=d§.getItemByName("Button_Language_English").setVisibility(true);
            this.§=d§.getItemByName("Button_Language_Chinese").mClip.alpha = 1;
            this.§=d§.getItemByName("Button_Language_Chinese").setVisibility(true);
            this.§=d§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 1;
            this.§=d§.getItemByName("MovieClip_Language_Selected_China").setVisibility(true);
            this.§=d§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 1;
            this.§=d§.getItemByName("MovieClip_Language_Selected_English").setVisibility(true);
         }
         else
         {
            this.§=d§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§=d§.getItemByName("Button_Language_Chinese").mClip.alpha = 0.6;
            this.§=d§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 0.6;
            this.§=d§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §2!D§(param1:Boolean = true) : void
      {
         this.§=d§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§=d§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§=d§.getItemByName("Button_Mute").setVisibility(true);
            this.§=d§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§=d§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§=d§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§=d§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §+!a§() : void
      {
         var _loc1_:Boolean = false;
         if(§!!X§.§5!!§.getLanguage() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§=d§.getItemByName("MovieClip_Language_Selected_China").setVisibility(!_loc1_);
         this.§=d§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function getScoreLoaderById(param1:String) : §<0§
      {
         var _loc2_:§<0§ = null;
         for each(_loc2_ in this.§8!§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         var _loc4_:§<0§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§#!#§[this.§4,§(this.§^d§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§#!#§[this.§%s§(this.§^d§)]);
               break;
            case "UP":
               if((_loc4_ = this.getScoreLoaderById(this.§>!I§)) != null)
               {
                  _loc4_.§^A§();
                  this.§,e§(this.§>!I§,false);
                  break;
               }
               break;
            case "DOWN":
               if(_loc4_ = this.getScoreLoaderById(this.§>!I§))
               {
                  _loc4_.§^!p§();
                  this.§,e§(this.§>!I§,false);
                  break;
               }
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §<! §:
               this.§=d§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§=d§.getItemByName("TextField_Level_Num") as §3!&§).§>!3§.text = "";
               this.§=d§.setObjectToFront(this.§=d§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§=d§.setObjectToFront(this.§=d§.getItemByName("Container_Highscores"));
               this.§=d§.setObjectToFront(this.§=d§.getItemByName("Container_Sidebar_Buttons"));
               this.§=d§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§=d§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§=d§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§=d§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§=d§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§=d§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§=d§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§=d§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§=d§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§=d§.getItemByName("TextField_MyScoreNumber").setVisibility(true);
               this.§=d§.getItemByName("TextField_MyScoreName").setVisibility(true);
               if(§!t§.§0P§(this.§>!I§))
               {
                  this.§>!I§ = "2-3";
               }
               this.loadScoreTable(this.§>!I§,param2);
               break;
            case §"!n§:
               this.§=d§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§=d§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§=d§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§=d§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§=d§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§=d§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§=d§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§=d§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§=d§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§=d§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§=d§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§=d§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHighScoreTab(false);
               break;
            case §]!g§:
               this.§=d§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§=d§.setObjectToFront(this.§=d§.getItemByName("MovieClip_LoadingHiScores"));
               this.§=d§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§=d§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§=d§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§=d§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§=d§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§=d§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§=d§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§=d§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§=d§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§=d§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§=d§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHelpButton(false);
               this.enableLoginButton(false);
               this.enableLogOutButton(false);
               this.enableHighScoreTab(false);
               this.§,!J§(false);
               this.§2!D§(false);
         }
         this.§0!>§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=d§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
         }
         else
         {
            this.§=d§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
         }
      }
      
      private function §4,§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§#!#§.length - 1)
         {
            param1 = 2;
         }
         return param1;
      }
      
      private function §%s§(param1:int) : int
      {
         param1--;
         if(param1 < 2)
         {
            param1 = HighscoreSidebar.§#!#§.length - 1;
         }
         return param1;
      }
      
      public function §]!B§(param1:§<0§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §!t§.§<1§)
         {
            _loc4_ = param1.§+[§;
            do
            {
               _loc3_++;
               param1.§^!p§();
               _loc5_ = param1.§[!X§;
               _loc6_ = 0;
               while(_loc6_ < §,y§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §,y§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §!t§.§<1§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §;-§)
                  {
                     _loc2_ = true;
                     param1.§^A§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §,e§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §#!#§)
         {
            if(_loc3_ == param1 && !§!t§.§0P§(param1))
            {
               this.§>!I§ = param1;
               this.§;!J§(param1);
               (this.§=d§.getItemByName("TextField_MyScoreNumber") as §3!&§).§>!3§.text = "" + §3![§.§5!6§.§#c§(param1);
               break;
            }
         }
         if(this.§=d§)
         {
            _loc5_ = this.§=d§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§<0§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§>!i§)
         {
            if(_loc4_.§+[§)
            {
               if(param2)
               {
                  this.§]!B§(_loc4_);
               }
               this.§0!#§(_loc4_.§+[§,_loc4_.§[!X§);
               this.§%I§();
               this.§1b§(true);
               this.§=d§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§=d§.setObjectToFront(this.§=d§.getItemByName("Container_Highscores"));
               this.§,!+§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§<!$§.§`!J§,this.§%n§);
         }
      }
      
      private function §,!+§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               this.§=d§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§=d§.getItemByName("MovieClip_Mc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               this.§=d§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§=d§.getItemByName("MovieClip_Mc").setVisibility(false);
            }
            levelNameString = "-" + HighscoreSidebar.§]!-§[int(levelNum) - 1];
            (this.§=d§.getItemByName("TextField_Level_Num") as §3!&§).§>!3§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §%n§(param1:Event) : void
      {
         var _loc2_:§<0§ = param1.currentTarget as §<0§;
         _loc2_.removeEventListener(§<!$§.§`!J§,this.§%n§);
         this.§>!I§ = _loc2_.levelId;
         var _loc3_:String = this.§>!I§;
         this.§,!+§(_loc3_);
         this.§]!B§(_loc2_);
         this.§0!#§(_loc2_.§+[§,_loc2_.§[!X§);
         this.§%I§();
         this.§"-§();
         this.§1b§(true);
         this.§=d§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§=d§.setObjectToFront(this.§=d§.getItemByName("Container_Highscores"));
         this.§,e§(this.§>!I§);
      }
      
      private function §%I§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §!t§.§<1§;
         if(this.§0!>§ == §<! §)
         {
            for each(_loc2_ in §#!#§)
            {
               if(_loc2_ == this.§>!I§ && !§!t§.§0P§(_loc2_))
               {
                  this.§;!J§(this.§>!I§);
                  (this.§=d§.getItemByName("TextField_MyScoreNumber") as §3!&§).§>!3§.text = "" + §3![§.§5!6§.§#c§(this.§>!I§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§^g§(param1);
      }
      
      private function §"-§(param1:Boolean = true) : void
      {
         this.§2A§ = 0;
         this.§#I§ = param1;
         this.§%_§ = 0;
      }
      
      private function §^g§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§=d§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§=d§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§#I§)
         {
            if(this.§'N§)
            {
               this.§'N§.filters = [new GlowFilter(16777215,1,32,8,this.§%_§,5,false,false)];
               for each(_loc4_ in this.§1^§)
               {
                  this.§'N§.filters.push(_loc4_);
               }
            }
            if(int((this.§=d§.getItemByName("TextField_MyScoreNumber") as §3!&§).§>!3§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§%_§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§%_§,3,false,false)];
               for each(_loc4_ in this.§1^§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§2A§ > 3)
            {
               this.§%_§ = 0;
               this.§2A§ = 0;
               this.§'N§ = null;
               this.§#I§ = false;
            }
            if(this.§2A§ % 2 == 0)
            {
               this.§%_§ += param1 / 200;
               if(this.§%_§ > 5.5)
               {
                  this.§%_§ = 5.5;
                  ++this.§2A§;
               }
            }
            else
            {
               this.§%_§ -= param1 / 200;
               if(this.§%_§ < 0)
               {
                  this.§%_§ = 0;
                  ++this.§2A§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§1^§;
            _loc3_.filters = this.§1^§;
            if(this.§'N§)
            {
               this.§'N§.filters = this.§1^§;
            }
         }
      }
      
      private function §0!#§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§[l§ = param1;
         if(!this.§=d§)
         {
            return;
         }
         var _loc4_:Class = §6d§.§=!Y§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§=d§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§'N§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §,y§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §,y§;
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
               if(§!t§.§<1§ && _loc10_.isPlayer)
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
                  _loc9_.TextField_Rank.textColor = §7P§;
                  _loc9_.TextField_Name.textColor = §7P§;
                  _loc9_.TextField_Points.textColor = §7P§;
                  this.§'N§ = _loc9_;
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
      
      public function §;!J§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§#!#§)
         {
            if(_loc3_ == param1)
            {
               this.§^d§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§<0§ = null;
         for each(_loc4_ in this.§8!§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§;!f§(param2) == false)
               {
                  if(param3)
                  {
                     this.§1b§(false);
                     this.§=d§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§=d§.setObjectToFront(this.§=d§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§0!#§(_loc4_.§+[§,_loc4_.§[!X§);
                     this.§%I§();
                     this.§,e§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§1b§(false);
                  this.§=d§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§=d§.setObjectToFront(this.§=d§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§<!$§.§`!J§,this.§%n§);
                  break;
               }
            }
         }
      }
      
      public function §+1§() : void
      {
         var _loc1_:§<0§ = null;
         for each(_loc1_ in this.§8!§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§-6§ = null;
         this.§1b§(false);
         if(this.§=d§)
         {
            _loc1_ = this.§=d§.getItemByName("HighscoreSidebar") as §-6§;
            this.§=d§.clear();
            this.§=d§ = null;
         }
      }
      
      public function get §^t§() : int
      {
         return this.§^d§;
      }
      
      public function set container(param1:§-6§) : void
      {
         this.§=d§ = param1;
      }
      
      public function get container() : §-6§
      {
         return this.§=d§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§>!I§;
      }
      
      public function get §8!&§() : String
      {
         return this.§0!>§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§>!I§ = param1;
      }
   }
}
