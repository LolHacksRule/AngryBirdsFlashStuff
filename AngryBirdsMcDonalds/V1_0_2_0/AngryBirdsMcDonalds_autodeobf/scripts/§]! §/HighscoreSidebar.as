package §]! §
{
   import § v§.§!!^§;
   import §"%§.§,!n§;
   import §6!Q§.§ !"§;
   import §7!d§.§'!5§;
   import §;!j§.§[!<§;
   import §>G§.§7!?§;
   import §>G§.§]!W§;
   import §>G§.§]f§;
   import §@`§.§>!S§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §7!?§
   {
      
      public static const §=j§:String = "StateHighScores";
      
      public static const §3!%§:String = "StateDisableHighScores";
      
      public static const §<$§:String = "StateLoadingLevelHighScores";
      
      public static const §!!b§:String = "2-9";
      
      public static const §!!E§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8");
      
      public static const §9r§:Array = ["1","2","1","2","3","1","2","3"];
      
      public static const §`![§:int = 10;
      
      public static const §"^§:int = 5;
      
      public static const §5!h§:uint = 16711680;
       
      
      private var §7a§:String = null;
      
      private var §3!Y§:Array;
      
      private var §9!`§:int = 2;
      
      private var include:String = null;
      
      private var §33§:Array;
      
      private var §<O§:§]f§;
      
      private var §;C§:MovieClip = null;
      
      private var §"!C§:Number = 0;
      
      private var §1?§:int = 0;
      
      private var §]!]§:Boolean = false;
      
      private var §<!0§:Array;
      
      public var §;+§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         this.§<!0§ = [];
         super();
         this.reset();
      }
      
      public function §6!m§() : void
      {
         this.§;+§ = !this.§;+§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§"!=§ = null;
         this.§3!Y§ = [];
         this.§9!`§ = 0;
         for each(_loc1_ in §!!E§)
         {
            _loc2_ = new §"!=§(_loc1_);
            this.§3!Y§.push(_loc2_);
         }
         this.include = null;
         this.§;C§ = null;
         this.§"!C§ = 0;
         this.§1?§ = 0;
         this.§]!]§ = false;
      }
      
      public function §`!n§(param1:XML, param2:§]f§, param3:§>!S§, param4:§ !"§, param5:MovieClip = null) : void
      {
         this.§<O§ = new §]f§(param1,param2,param3,param5);
         this.§<!0§ = this.§<O§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §4O§(param1:Boolean) : void
      {
         this.§<O§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§<O§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§<O§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§<O§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§<O§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableLoginButton(param1:Boolean = true) : void
      {
         this.§<O§.getItemByName("Button_Login").setEnabled(param1);
         if(param1)
         {
            this.§<O§.getItemByName("Button_Login").mClip.alpha = 1;
            this.§<O§.getItemByName("Button_Login").setVisibility(true);
         }
         else
         {
            this.§<O§.getItemByName("Button_Login").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§<O§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§<O§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§<O§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§<O§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§<O§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§<O§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§<O§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§<O§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function §?§(param1:Boolean = true) : void
      {
         this.§<O§.getItemByName("Button_Language_English").setEnabled(param1);
         this.§<O§.getItemByName("Button_Language_Chinese").setEnabled(param1);
         if(param1)
         {
            this.§<O§.getItemByName("Button_Language_English").mClip.alpha = 1;
            this.§<O§.getItemByName("Button_Language_English").setVisibility(true);
            this.§<O§.getItemByName("Button_Language_Chinese").mClip.alpha = 1;
            this.§<O§.getItemByName("Button_Language_Chinese").setVisibility(true);
            this.§<O§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 1;
            this.§<O§.getItemByName("MovieClip_Language_Selected_China").setVisibility(true);
            this.§<O§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 1;
            this.§<O§.getItemByName("MovieClip_Language_Selected_English").setVisibility(true);
         }
         else
         {
            this.§<O§.getItemByName("Button_Language_English").mClip.alpha = 0.6;
            this.§<O§.getItemByName("Button_Language_Chinese").mClip.alpha = 0.6;
            this.§<O§.getItemByName("MovieClip_Language_Selected_China").mClip.alpha = 0.6;
            this.§<O§.getItemByName("MovieClip_Language_Selected_English").mClip.alpha = 0.6;
         }
      }
      
      public function §%'§(param1:Boolean = true) : void
      {
         this.§<O§.getItemByName("Button_Mute").setEnabled(param1);
         if(param1)
         {
            this.§<O§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§<O§.getItemByName("Button_Mute").setVisibility(true);
            this.§<O§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§<O§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§<O§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§<O§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §?!9§() : void
      {
         var _loc1_:Boolean = false;
         if(§[!<§.§'!S§.getLanguage() == "en")
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         this.§<O§.getItemByName("MovieClip_Language_Selected_China").setVisibility(!_loc1_);
         this.§<O§.getItemByName("MovieClip_Language_Selected_English").setVisibility(_loc1_);
      }
      
      public function getScoreLoaderById(param1:String) : §"!=§
      {
         var _loc2_:§"!=§ = null;
         for each(_loc2_ in this.§3!Y§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         var _loc4_:§"!=§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§!!E§[this.§&N§(this.§9!`§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§!!E§[this.§!v§(this.§9!`§)]);
               break;
            case "UP":
               if((_loc4_ = this.getScoreLoaderById(this.include)) != null)
               {
                  _loc4_.§2!h§();
                  this.§#C§(this.include,false);
                  break;
               }
               break;
            case "DOWN":
               if(_loc4_ = this.getScoreLoaderById(this.include))
               {
                  _loc4_.§@p§();
                  this.§#C§(this.include,false);
                  break;
               }
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §=j§:
               this.§<O§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§<O§.getItemByName("TextField_Level_Num") as §]!W§).§^!m§.text = "";
               this.§<O§.setObjectToFront(this.§<O§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§<O§.setObjectToFront(this.§<O§.getItemByName("Container_Highscores"));
               this.§<O§.setObjectToFront(this.§<O§.getItemByName("Container_Sidebar_Buttons"));
               this.§<O§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§<O§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§<O§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§<O§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§<O§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§<O§.getItemByName("TextField_Leaderboards").setVisibility(true);
               this.§<O§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§<O§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§<O§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§<O§.getItemByName("TextField_MyScoreNumber").setVisibility(true);
               this.§<O§.getItemByName("TextField_MyScoreName").setVisibility(true);
               if(§!!^§.§use§(this.include))
               {
                  this.include = "2-3";
               }
               this.loadScoreTable(this.include,param2);
               break;
            case §3!%§:
               this.§<O§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§<O§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§<O§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§<O§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§<O§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§<O§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§<O§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§<O§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§<O§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§<O§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§<O§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§<O§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHighScoreTab(false);
               break;
            case §<$§:
               this.§<O§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§<O§.setObjectToFront(this.§<O§.getItemByName("MovieClip_LoadingHiScores"));
               this.§<O§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§<O§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§<O§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§<O§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§<O§.getItemByName("TextField_Leaderboards").setVisibility(false);
               this.§<O§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§<O§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§<O§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§<O§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§<O§.getItemByName("TextField_MyScoreNumber").setVisibility(false);
               this.§<O§.getItemByName("TextField_MyScoreName").setVisibility(false);
               this.enableHelpButton(false);
               this.enableLoginButton(false);
               this.enableLogOutButton(false);
               this.enableHighScoreTab(false);
               this.§?§(false);
               this.§%'§(false);
         }
         this.§7a§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<O§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
         }
         else
         {
            this.§<O§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
         }
      }
      
      private function §&N§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§!!E§.length - 1)
         {
            param1 = 2;
         }
         return param1;
      }
      
      private function §!v§(param1:int) : int
      {
         param1--;
         if(param1 < 2)
         {
            param1 = HighscoreSidebar.§!!E§.length - 1;
         }
         return param1;
      }
      
      public function §,!d§(param1:§"!=§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §!!^§.§,!a§)
         {
            _loc4_ = param1.§"!Q§;
            do
            {
               _loc3_++;
               param1.§@p§();
               _loc5_ = param1.§7!W§;
               _loc6_ = 0;
               while(_loc6_ < §`![§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §`![§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §!!^§.§,!a§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §"^§)
                  {
                     _loc2_ = true;
                     param1.§2!h§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §#C§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §!!E§)
         {
            if(_loc3_ == param1 && !§!!^§.§use§(param1))
            {
               this.include = param1;
               this.§0!X§(param1);
               (this.§<O§.getItemByName("TextField_MyScoreNumber") as §]!W§).§^!m§.text = "" + §'j§.§%g§.§?K§(param1);
               break;
            }
         }
         if(this.§<O§)
         {
            _loc5_ = this.§<O§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§"!=§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§!S§)
         {
            if(_loc4_.§"!Q§)
            {
               if(param2)
               {
                  this.§,!d§(_loc4_);
               }
               this.§2!'§(_loc4_.§"!Q§,_loc4_.§7!W§);
               this.§-,§();
               this.§4O§(true);
               this.§<O§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§<O§.setObjectToFront(this.§<O§.getItemByName("Container_Highscores"));
               this.§!l§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§7!i§.§`K§,this.§>!P§);
         }
      }
      
      private function §!l§(param1:String) : void
      {
         var levelNum:String = null;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            levelNum = levelName.substring(2);
            if(levelName == "2-3" || levelName == "2-4" || levelName == "2-5")
            {
               this.§<O§.getItemByName("MovieClip_Moon").setVisibility(false);
               this.§<O§.getItemByName("MovieClip_Mc").setVisibility(true);
            }
            else if(levelName == "2-6" || levelName == "2-7" || levelName == "2-8")
            {
               this.§<O§.getItemByName("MovieClip_Moon").setVisibility(true);
               this.§<O§.getItemByName("MovieClip_Mc").setVisibility(false);
            }
            levelNameString = "-" + HighscoreSidebar.§9r§[int(levelNum) - 1];
            (this.§<O§.getItemByName("TextField_Level_Num") as §]!W§).§^!m§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §>!P§(param1:Event) : void
      {
         var _loc2_:§"!=§ = param1.currentTarget as §"!=§;
         _loc2_.removeEventListener(§7!i§.§`K§,this.§>!P§);
         this.include = _loc2_.levelId;
         var _loc3_:String = this.include;
         this.§!l§(_loc3_);
         this.§,!d§(_loc2_);
         this.§2!'§(_loc2_.§"!Q§,_loc2_.§7!W§);
         this.§-,§();
         this.§"!N§();
         this.§4O§(true);
         this.§<O§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§<O§.setObjectToFront(this.§<O§.getItemByName("Container_Highscores"));
         this.§#C§(this.include);
      }
      
      private function §-,§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §!!^§.§,!a§;
         if(this.§7a§ == §=j§)
         {
            for each(_loc2_ in §!!E§)
            {
               if(_loc2_ == this.include && !§!!^§.§use§(_loc2_))
               {
                  this.§0!X§(this.include);
                  (this.§<O§.getItemByName("TextField_MyScoreNumber") as §]!W§).§^!m§.text = "" + §'j§.§%g§.§?K§(this.include);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§+!@§(param1);
      }
      
      private function §"!N§(param1:Boolean = true) : void
      {
         this.§1?§ = 0;
         this.§]!]§ = param1;
         this.§"!C§ = 0;
      }
      
      private function §+!@§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§<O§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§<O§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§]!]§)
         {
            if(this.§;C§)
            {
               this.§;C§.filters = [new GlowFilter(16777215,1,32,8,this.§"!C§,5,false,false)];
               for each(_loc4_ in this.§<!0§)
               {
                  this.§;C§.filters.push(_loc4_);
               }
            }
            if(int((this.§<O§.getItemByName("TextField_MyScoreNumber") as §]!W§).§^!m§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§"!C§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§"!C§,3,false,false)];
               for each(_loc4_ in this.§<!0§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§1?§ > 3)
            {
               this.§"!C§ = 0;
               this.§1?§ = 0;
               this.§;C§ = null;
               this.§]!]§ = false;
            }
            if(this.§1?§ % 2 == 0)
            {
               this.§"!C§ += param1 / 200;
               if(this.§"!C§ > 5.5)
               {
                  this.§"!C§ = 5.5;
                  ++this.§1?§;
               }
            }
            else
            {
               this.§"!C§ -= param1 / 200;
               if(this.§"!C§ < 0)
               {
                  this.§"!C§ = 0;
                  ++this.§1?§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§<!0§;
            _loc3_.filters = this.§<!0§;
            if(this.§;C§)
            {
               this.§;C§.filters = this.§<!0§;
            }
         }
      }
      
      private function §2!'§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:Boolean = false;
         this.§33§ = param1;
         if(!this.§<O§)
         {
            return;
         }
         var _loc4_:Class = §'!5§.§-!P§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§<O§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§;C§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §`![§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §`![§;
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
               if(§!!^§.§,!a§ && _loc10_.isPlayer)
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
                  _loc9_.TextField_Rank.textColor = §5!h§;
                  _loc9_.TextField_Name.textColor = §5!h§;
                  _loc9_.TextField_Points.textColor = §5!h§;
                  this.§;C§ = _loc9_;
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
      
      public function §0!X§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§!!E§)
         {
            if(_loc3_ == param1)
            {
               this.§9!`§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§"!=§ = null;
         for each(_loc4_ in this.§3!Y§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§[!U§(param2) == false)
               {
                  if(param3)
                  {
                     this.§4O§(false);
                     this.§<O§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§<O§.setObjectToFront(this.§<O§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§2!'§(_loc4_.§"!Q§,_loc4_.§7!W§);
                     this.§-,§();
                     this.§#C§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§4O§(false);
                  this.§<O§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§<O§.setObjectToFront(this.§<O§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§7!i§.§`K§,this.§>!P§);
                  break;
               }
            }
         }
      }
      
      public function §>!`§() : void
      {
         var _loc1_:§"!=§ = null;
         for each(_loc1_ in this.§3!Y§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§]f§ = null;
         this.§4O§(false);
         if(this.§<O§)
         {
            _loc1_ = this.§<O§.getItemByName("HighscoreSidebar") as §]f§;
            this.§<O§.clear();
            this.§<O§ = null;
         }
      }
      
      public function get §7G§() : int
      {
         return this.§9!`§;
      }
      
      public function set container(param1:§]f§) : void
      {
         this.§<O§ = param1;
      }
      
      public function get container() : §]f§
      {
         return this.§<O§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.include;
      }
      
      public function get §3u§() : String
      {
         return this.§7a§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.include = param1;
      }
   }
}
