package §<S§
{
   import §'"!§.§+§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §4[§.§2P§;
   import §[!Z§.§>D§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §+i§:String = "StateHighScoresLocal";
      
      public static const §%"0§:String = "StateHighScoresGlobal";
      
      public static const §%F§:String = "StateDisableHighScores";
      
      public static const §'"7§:String = "StateLoadingLevelHighScores";
      
      public static const §7!_§:String = "credits_level";
      
      public static const §#!D§:Array = new Array("1-1","1-2","1-3","1-4","1-5","2-1","2-2","2-3","2-4","2-5");
      
      public static const §]!p§:Array = ["1","2","3","4","5","6","7","8","9","10"];
      
      public static const § T§:int = 5;
      
      public static const §2! §:int = 10;
      
      public static const §%A§:int = 10;
      
      public static const § O§:uint = 3394815;
       
      
      private var §'9§:String = null;
      
      private var §?1§:Array;
      
      private var §'!6§:int = 0;
      
      private var §`!k§:String = null;
      
      private var §%z§:Array;
      
      private var §29§:§,6§;
      
      private var §#S§:MovieClip = null;
      
      private var §7$§:Number = 0;
      
      private var §?"$§:int = 0;
      
      private var §2U§:Boolean = false;
      
      private var §3§:Array;
      
      public var §`!D§:Boolean = false;
      
      private var §'w§:Boolean;
      
      private var §#!b§:Boolean;
      
      private var §#!0§:Boolean;
      
      private var §!"§:Number;
      
      private var §8"!§:Boolean;
      
      public function HighscoreSidebar()
      {
         this.§3§ = [];
         super();
         this.reset();
      }
      
      public function §7" §() : void
      {
         this.§`!D§ = !this.§`!D§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§""8§ = null;
         var _loc3_:§""8§ = null;
         this.§?1§ = [];
         this.§'!6§ = 0;
         for each(_loc1_ in §#!D§)
         {
            _loc2_ = new §""8§(_loc1_,true);
            this.§?1§.push(_loc2_);
            _loc3_ = new §""8§(_loc1_,false);
            this.§?1§.push(_loc3_);
         }
         this.§`!k§ = §#!D§[0];
         this.§#S§ = null;
         this.§7$§ = 0;
         this.§?"$§ = 0;
         this.§2U§ = false;
         this.§!"§ = 0;
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:§""8§ = null;
         for each(_loc1_ in this.§?1§)
         {
            _loc1_.removeEventListener(§>%§.§=L§,this.§2r§);
         }
      }
      
      public function §0!t§(param1:§,6§) : void
      {
         this.§29§ = param1;
         this.§3§ = this.§29§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.§@w§(this.§'9§);
      }
      
      private function §9+§(param1:Boolean) : void
      {
         this.§29§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §;!I§(param1:Boolean = true) : void
      {
         this.§29§.getItemByName("Button_Credits").setEnabled(param1,true);
         if(param1)
         {
            this.§29§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§29§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§29§.getItemByName("Button_Credits").visible)
         {
            this.§29§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§'w§ = param1;
      }
      
      public function §4!4§(param1:Boolean = true) : void
      {
         this.§29§.getItemByName("Button_Logout").setEnabled(param1,true);
         this.§#!0§ = param1;
         if(param1)
         {
            this.§29§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§29§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§29§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §-!<§(param1:Boolean = true) : void
      {
         this.§29§.getItemByName("Button_Tutorial").setEnabled(param1,true);
         if(param1)
         {
            this.§29§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§29§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§29§.getItemByName("Button_Tutorial").visible)
         {
            this.§29§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§#!b§ = param1;
      }
      
      public function §-!$§(param1:Boolean = true) : void
      {
         this.§29§.getItemByName("Button_Mute").setEnabled(param1,true);
         if(param1)
         {
            this.§29§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§29§.getItemByName("Button_Mute").setVisibility(true);
            this.§29§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§29§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§29§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§29§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §'%§(param1:Boolean) : void
      {
      }
      
      public function §8""§(param1:String) : §""8§
      {
         var _loc2_:§""8§ = null;
         for each(_loc2_ in this.§?1§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1 && _loc2_.§>E§ == this.§8"!§)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §[l§(param1:String, param2:Boolean) : §""8§
      {
         var _loc3_:§""8§ = null;
         for each(_loc3_ in this.§?1§)
         {
            if(_loc3_ != null && _loc3_.levelId == param1 && _loc3_.§>E§ == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §<8§(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:§""8§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.§@w§(§+i§);
               this.§4!b§(HighscoreSidebar.§#!D§[this.§'!6§]);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "BUTTON_OVERALL":
               this.§@w§(§%"0§);
               this.§4!b§(HighscoreSidebar.§#!D§[this.§'!6§]);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "RIGHT":
               if(this.§'9§ == §%"0§)
               {
                  this.§4!b§(HighscoreSidebar.§#!D§[this.§7!"§(this.§'!6§)]);
               }
               else
               {
                  this.§4!b§(HighscoreSidebar.§#!D§[this.§7!"§(this.§'!6§)]);
               }
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "LEFT":
               if(this.§'9§ == §%"0§)
               {
                  this.§4!b§(HighscoreSidebar.§#!D§[this.§1Z§(this.§'!6§)]);
               }
               else
               {
                  this.§4!b§(HighscoreSidebar.§#!D§[this.§1Z§(this.§'!6§)]);
               }
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "UP":
               if(this.§'9§ == §%"0§)
               {
                  if((_loc4_ = this.§8""§(this.§`!k§)) != null)
                  {
                     _loc4_.§>!8§();
                     this.§6"7§(this.§`!k§,false);
                  }
               }
               else if((_loc4_ = this.§8""§(this.§`!k§)) != null)
               {
                  _loc4_.§>!8§();
                  this.§6"7§(this.§`!k§,false);
               }
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "DOWN":
               if(this.§'9§ == §%"0§)
               {
                  if(_loc4_ = this.§8""§(this.§`!k§))
                  {
                     _loc4_.§[@§();
                     this.§6"7§(this.§`!k§,false);
                  }
               }
               else if(_loc4_ = this.§8""§(this.§`!k§))
               {
                  _loc4_.§[@§();
                  this.§6"7§(this.§`!k§,false);
               }
               §>D§.§9!q§("Menu_Confirm");
         }
      }
      
      public function §@w§(param1:String, param2:Boolean = false) : void
      {
         this.§'9§ = param1;
         switch(param1)
         {
            case §+i§:
               this.§8"!§ = true;
               this.§29§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§29§.getItemByName("TextField_Level_Num") as §7!&§).§'!"§.text = "";
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Board_Selection"));
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Highscores"));
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Sidebar_Buttons"));
               this.§29§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§29§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§29§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§29§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§29§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§29§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§29§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§29§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§%!4§();
               this.§'%§(false);
               this.§4!b§(this.§`!k§,param2);
               break;
            case §%"0§:
               this.§8"!§ = false;
               this.§29§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§29§.getItemByName("TextField_Level_Num") as §7!&§).§'!"§.text = "";
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Board_Selection"));
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Highscores"));
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Sidebar_Buttons"));
               this.§29§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§29§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§29§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§29§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§29§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§29§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§29§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§29§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§%!4§();
               this.§'%§(true);
               this.§4!b§(this.§`!k§,param2);
               break;
            case §%F§:
               this.§29§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§29§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§29§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§29§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§29§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§29§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§29§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§29§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§29§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§0!M§();
               this.§!!k§(false);
               break;
            case §'"7§:
               this.§29§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§29§.setObjectToFront(this.§29§.getItemByName("MovieClip_LoadingHiScores"));
               this.§29§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§29§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§29§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§29§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§29§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§29§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§29§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§29§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§0!M§();
               this.§-!<§(false);
               this.§4!4§(false);
               this.§!!k§(false);
               this.§-!$§(false);
         }
      }
      
      public function §!!k§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§29§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§29§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §7!"§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§#!D§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §1Z§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§#!D§.length - 1;
         }
         return param1;
      }
      
      public function §8"-§(param1:§""8§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §2P§.§[!$§)
         {
            _loc4_ = param1.§7P§;
            do
            {
               _loc3_++;
               param1.§[@§();
               _loc5_ = param1.§!!T§;
               _loc6_ = 0;
               while(_loc6_ < §2! §)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §2! §;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §2P§.§[!$§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §%A§)
                  {
                     _loc2_ = true;
                     param1.§>!8§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §6"7§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §#!D§)
         {
            if(_loc3_ == param1 && !§2P§.§@!i§(param1))
            {
               this.§`!k§ = param1;
               this.§ 5§(param1);
               this.§!"§ = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5K§(param1);
               this.§]!4§();
               break;
            }
         }
         if(this.§'9§ == §%"0§)
         {
            this.§,G§();
         }
         if(this.§29§)
         {
            _loc5_ = this.§29§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§""8§;
         if((_loc4_ = this.§8""§(param1)) == null)
         {
            return;
         }
         if(_loc4_.ready)
         {
            if(_loc4_.§7P§)
            {
               if(param2)
               {
                  this.§8"-§(_loc4_);
               }
               this.§6c§(_loc4_.§7P§,_loc4_.§!!T§);
               this.§,G§();
               this.§9+§(true);
               this.§29§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Highscores"));
               this.§+p§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§>%§.§=L§,this.§2r§);
         }
      }
      
      private function §+p§(param1:String) : void
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
            levelNum = levelNumInEpisode + § T§ * episodeNum;
            levelNameString = HighscoreSidebar.§]!p§[int(levelNum) - 1];
            (this.§29§.getItemByName("TextField_Level_Num") as §7!&§).§'!"§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §2r§(param1:Event) : void
      {
         var _loc2_:§""8§ = param1.currentTarget as §""8§;
         _loc2_.removeEventListener(§>%§.§=L§,this.§2r§);
         this.§`!k§ = _loc2_.levelId;
         var _loc3_:String = this.§`!k§;
         this.§+p§(_loc3_);
         this.§8"-§(_loc2_);
         this.§6c§(_loc2_.§7P§,_loc2_.§!!T§);
         this.§,G§();
         this.§+@§();
         this.§9+§(true);
         this.§29§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Highscores"));
         this.§6"7§(this.§`!k§);
      }
      
      private function §,G§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §2P§.§[!$§;
         if(_loc1_.name)
         {
            (this.§29§.getItemByName("TextField_MyScoreName") as §7!&§).§'!"§.text = _loc1_.name + ":  " + this.§!"§;
         }
         if(this.§'9§ == §+i§)
         {
            for each(_loc2_ in §#!D§)
            {
               if(_loc2_ == this.§`!k§ && !§2P§.§@!i§(_loc2_))
               {
                  this.§ 5§(this.§`!k§);
                  this.§!"§ = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5K§(this.§`!k§);
                  this.§]!4§();
                  break;
               }
            }
         }
         else if(this.§'9§ == §%"0§)
         {
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§1!0§(param1);
      }
      
      private function §+@§(param1:Boolean = true) : void
      {
         this.§?"$§ = 0;
         this.§2U§ = param1;
         this.§7$§ = 0;
      }
      
      private function §1!0§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§29§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§29§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§2U§)
         {
            if(this.§#S§)
            {
               this.§#S§.filters = [new GlowFilter(16777215,1,32,8,this.§7$§,5,false,false)];
               for each(_loc4_ in this.§3§)
               {
                  this.§#S§.filters.push(_loc4_);
               }
            }
            if(int((this.§29§.getItemByName("TextField_MyScoreNumber") as §7!&§).§'!"§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§7$§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§7$§,3,false,false)];
               for each(_loc4_ in this.§3§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§?"$§ > 3)
            {
               this.§7$§ = 0;
               this.§?"$§ = 0;
               this.§#S§ = null;
               this.§2U§ = false;
            }
            if(this.§?"$§ % 2 == 0)
            {
               this.§7$§ += param1 / 200;
               if(this.§7$§ > 5.5)
               {
                  this.§7$§ = 5.5;
                  ++this.§?"$§;
               }
            }
            else
            {
               this.§7$§ -= param1 / 200;
               if(this.§7$§ < 0)
               {
                  this.§7$§ = 0;
                  ++this.§?"$§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§3§;
            _loc3_.filters = this.§3§;
            if(this.§#S§)
            {
               this.§#S§.filters = this.§3§;
            }
         }
      }
      
      private function §6c§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc3_:Boolean = false;
         this.§%z§ = param1;
         if(!this.§29§)
         {
            return;
         }
         var _loc4_:Class = §=!V§.§?!O§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§29§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§#S§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §2! §)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §2! §;
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
               if(§2P§.§[!$§ && _loc10_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc11_ = _loc10_.nickName;
               _loc12_ = "";
               _loc12_ = this.§?!Q§(_loc11_);
               _loc11_ = this.§[T§(_loc11_);
               _loc9_.TextField_Name.text = _loc11_;
               _loc9_.TextField_CountryCode.text = _loc12_;
               _loc9_.TextField_Points.text = _loc10_.score;
               if(_loc3_)
               {
                  _loc9_.TextField_Rank.textColor = § O§;
                  _loc9_.TextField_Name.textColor = § O§;
                  _loc9_.TextField_Points.textColor = § O§;
                  _loc9_.TextField_CountryCode.textColor = § O§;
                  this.§#S§ = _loc9_;
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
      
      private function §[T§(param1:String) : String
      {
         if(!this.§8"!§)
         {
            param1 = param1.slice(0,param1.length - 2);
         }
         return param1;
      }
      
      private function §?!Q§(param1:String) : String
      {
         var _loc2_:String = "";
         if(!this.§8"!§ && param1.charAt(param1.length - 2) != "X")
         {
            _loc2_ = param1.slice(param1.length - 2,param1.length);
         }
         return _loc2_;
      }
      
      public function § 5§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§#!D§)
         {
            if(_loc3_ == param1)
            {
               this.§'!6§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §4!b§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§""8§ = null;
         for each(_loc4_ in this.§?1§)
         {
            if(_loc4_.levelId == param1 && _loc4_.§>E§ == this.§8"!§)
            {
               if(_loc4_.§1S§(param2) == false)
               {
                  if(param3)
                  {
                     this.§9+§(false);
                     this.§29§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§29§.setObjectToFront(this.§29§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§6c§(_loc4_.§7P§,_loc4_.§!!T§);
                     this.§,G§();
                     this.§6"7§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§9+§(false);
                  this.§29§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§29§.setObjectToFront(this.§29§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§>%§.§=L§,this.§2r§);
                  break;
               }
            }
         }
      }
      
      public function §5!Z§() : void
      {
         var _loc1_:§""8§ = null;
         for each(_loc1_ in this.§?1§)
         {
            _loc1_.§"c§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§,6§ = null;
         this.§9+§(false);
         if(this.§29§)
         {
            _loc1_ = this.§29§.getItemByName("HighscoreSidebar") as §,6§;
            this.§29§.clear();
            this.§29§ = null;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§'!6§;
      }
      
      public function §`"0§() : void
      {
         this.§4!b§(HighscoreSidebar.§#!D§[this.currentPage]);
      }
      
      public function set container(param1:§,6§) : void
      {
         this.§29§ = param1;
      }
      
      public function get container() : §,6§
      {
         return this.§29§;
      }
      
      public function get §]!M§() : String
      {
         return this.§`!k§;
      }
      
      public function get §;!Z§() : String
      {
         return this.§'9§;
      }
      
      public function set §]!M§(param1:String) : void
      {
         this.§`!k§ = param1;
      }
      
      public function §#![§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + § T§ * _loc3_;
         return HighscoreSidebar.§]!p§[int(_loc5_) - 1];
      }
      
      private function §%!4§() : void
      {
         if(§2P§.§[!$§.§-n§)
         {
            this.§]!4§();
            this.§29§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§0!M§();
         }
      }
      
      private function §0!M§() : void
      {
         this.§29§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §-H§() : Boolean
      {
         return this.§#!b§;
      }
      
      public function get §9!Z§() : Boolean
      {
         return this.§'w§;
      }
      
      public function §'"5§() : Boolean
      {
         return this.§#!0§;
      }
      
      private function §]!4§() : void
      {
         var _loc1_:String = null;
         if(§2P§.§[!$§.name)
         {
            _loc1_ = §2P§.§[!$§.name + ":  " + this.§!"§;
            (this.§29§.getItemByName("TextField_MyScoreName") as §7!&§).§'!"§.text = _loc1_;
         }
      }
   }
}
