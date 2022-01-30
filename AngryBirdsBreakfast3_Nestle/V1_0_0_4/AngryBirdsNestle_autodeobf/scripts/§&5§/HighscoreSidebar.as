package §&5§
{
   import §-!G§.§!!Y§;
   import §@#§.§9!'§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import com.rovio.assets.§&!2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §%!3§:String = "StateHighScoresLocal";
      
      public static const §1W§:String = "StateHighScoresGlobal";
      
      public static const §?@§:String = "StateDisableHighScores";
      
      public static const §=#§:String = "StateLoadingLevelHighScores";
      
      public static const §'n§:String = "credits_level";
      
      public static const § s§:Array = new Array("1-1","1-2","1-3","1-4","1-5","2-1","2-2","2-3","2-4","2-5");
      
      public static const §^9§:Array = ["1","2","3","4","5","6","7","8","9","10"];
      
      public static const §@o§:int = 5;
      
      public static const §`!k§:int = 10;
      
      public static const §"!=§:int = 10;
      
      public static const §+!+§:uint = 3394815;
       
      
      private var §7D§:String = null;
      
      private var §]!]§:Array;
      
      private var §;p§:int = 0;
      
      private var §2p§:String = null;
      
      private var §1!<§:Array;
      
      private var §0+§:§9!'§;
      
      private var §<!m§:MovieClip = null;
      
      private var §5!W§:Number = 0;
      
      private var §?H§:int = 0;
      
      private var §+T§:Boolean = false;
      
      private var §^"1§:Array;
      
      public var § !M§:Boolean = false;
      
      private var §-H§:Boolean;
      
      private var § d§:Boolean;
      
      private var §"9§:Boolean;
      
      private var § ]§:Number;
      
      private var §9H§:Boolean;
      
      public function HighscoreSidebar()
      {
         this.§^"1§ = [];
         super();
         this.reset();
      }
      
      public function §&w§() : void
      {
         this.§ !M§ = !this.§ !M§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§6!]§ = null;
         var _loc3_:§6!]§ = null;
         this.§]!]§ = [];
         this.§;p§ = 0;
         for each(_loc1_ in § s§)
         {
            _loc2_ = new §6!]§(_loc1_,true);
            this.§]!]§.push(_loc2_);
            _loc3_ = new §6!]§(_loc1_,false);
            this.§]!]§.push(_loc3_);
         }
         this.§2p§ = § s§[0];
         this.§<!m§ = null;
         this.§5!W§ = 0;
         this.§?H§ = 0;
         this.§+T§ = false;
         this.§ ]§ = 0;
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:§6!]§ = null;
         for each(_loc1_ in this.§]!]§)
         {
            _loc1_.removeEventListener(§6!P§.§=A§,this.§6!S§);
         }
      }
      
      public function §&!&§(param1:§9!'§) : void
      {
         this.§0+§ = param1;
         this.§^"1§ = this.§0+§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.§0!"§(this.§7D§);
      }
      
      private function §`!Q§(param1:Boolean) : void
      {
         this.§0+§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §!!g§(param1:Boolean = true) : void
      {
         this.§0+§.getItemByName("Button_Credits").setEnabled(param1,true);
         if(param1)
         {
            this.§0+§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§0+§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§0+§.getItemByName("Button_Credits").visible)
         {
            this.§0+§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§-H§ = param1;
      }
      
      public function §#"%§(param1:Boolean = true) : void
      {
         this.§0+§.getItemByName("Button_Logout").setEnabled(param1,true);
         this.§"9§ = param1;
         if(param1)
         {
            this.§0+§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§0+§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§0+§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §%v§(param1:Boolean = true) : void
      {
         this.§0+§.getItemByName("Button_Tutorial").setEnabled(param1,true);
         if(param1)
         {
            this.§0+§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§0+§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§0+§.getItemByName("Button_Tutorial").visible)
         {
            this.§0+§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§ d§ = param1;
      }
      
      public function §<P§(param1:Boolean = true) : void
      {
         this.§0+§.getItemByName("Button_Mute").setEnabled(param1,true);
         if(param1)
         {
            this.§0+§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§0+§.getItemByName("Button_Mute").setVisibility(true);
            this.§0+§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§0+§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§0+§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§0+§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §'!2§(param1:Boolean) : void
      {
      }
      
      public function §[!Y§(param1:String) : §6!]§
      {
         var _loc2_:§6!]§ = null;
         for each(_loc2_ in this.§]!]§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1 && _loc2_.§;g§ == this.§9H§)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §@!k§(param1:String, param2:Boolean) : §6!]§
      {
         var _loc3_:§6!]§ = null;
         for each(_loc3_ in this.§]!]§)
         {
            if(_loc3_ != null && _loc3_.levelId == param1 && _loc3_.§;g§ == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §&b§(param1:int, param2:String, param3:§'!R§) : void
      {
         var _loc4_:§6!]§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.§0!"§(§%!3§);
               this.§]6§(HighscoreSidebar.§ s§[this.§;p§]);
               break;
            case "BUTTON_OVERALL":
               this.§0!"§(§1W§);
               this.§]6§(HighscoreSidebar.§ s§[this.§;p§]);
               break;
            case "RIGHT":
               if(this.§7D§ == §1W§)
               {
                  this.§]6§(HighscoreSidebar.§ s§[this.§0!h§(this.§;p§)]);
               }
               else
               {
                  this.§]6§(HighscoreSidebar.§ s§[this.§0!h§(this.§;p§)]);
               }
               break;
            case "LEFT":
               if(this.§7D§ == §1W§)
               {
                  this.§]6§(HighscoreSidebar.§ s§[this.§%Y§(this.§;p§)]);
                  break;
               }
               this.§]6§(HighscoreSidebar.§ s§[this.§%Y§(this.§;p§)]);
               break;
            case "UP":
               if(this.§7D§ == §1W§)
               {
                  if((_loc4_ = this.§[!Y§(this.§2p§)) != null)
                  {
                     _loc4_.§=2§();
                     this.§?]§(this.§2p§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.§[!Y§(this.§2p§)) != null)
               {
                  _loc4_.§=2§();
                  this.§?]§(this.§2p§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§7D§ == §1W§)
               {
                  if(_loc4_ = this.§[!Y§(this.§2p§))
                  {
                     _loc4_.§7d§();
                     this.§?]§(this.§2p§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.§[!Y§(this.§2p§))
               {
                  _loc4_.§7d§();
                  this.§?]§(this.§2p§,false);
                  break;
               }
               break;
         }
      }
      
      public function §0!"§(param1:String, param2:Boolean = false) : void
      {
         this.§7D§ = param1;
         switch(param1)
         {
            case §%!3§:
               this.§9H§ = true;
               this.§0+§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§0+§.getItemByName("TextField_Level_Num") as §>L§).§<!=§.text = "";
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Board_Selection"));
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Highscores"));
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Sidebar_Buttons"));
               this.§0+§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§0+§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§0+§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§0+§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§0+§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§0+§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§0+§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§0+§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§8x§();
               this.§'!2§(false);
               this.§]6§(this.§2p§,param2);
               break;
            case §1W§:
               this.§9H§ = false;
               this.§0+§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§0+§.getItemByName("TextField_Level_Num") as §>L§).§<!=§.text = "";
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Board_Selection"));
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Highscores"));
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Sidebar_Buttons"));
               this.§0+§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§0+§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§0+§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§0+§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§0+§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§0+§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§0+§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§0+§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§8x§();
               this.§'!2§(true);
               this.§]6§(this.§2p§,param2);
               break;
            case §?@§:
               this.§0+§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§0+§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§0+§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§0+§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§0+§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§0+§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§0+§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§0+§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§0+§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§0x§();
               this.§ e§(false);
               break;
            case §=#§:
               this.§0+§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("MovieClip_LoadingHiScores"));
               this.§0+§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§0+§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§0+§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§0+§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§0+§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§0+§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§0+§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§0+§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§0x§();
               this.§%v§(false);
               this.§#"%§(false);
               this.§ e§(false);
               this.§<P§(false);
         }
      }
      
      public function § e§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0+§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§0+§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §0!h§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§ s§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §%Y§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§ s§.length - 1;
         }
         return param1;
      }
      
      public function §>G§(param1:§6!]§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §!!Y§.§9!L§)
         {
            _loc4_ = param1.§ !`§;
            do
            {
               _loc3_++;
               param1.§7d§();
               _loc5_ = param1.§3!=§;
               _loc6_ = 0;
               while(_loc6_ < §`!k§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §`!k§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §!!Y§.§9!L§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §"!=§)
                  {
                     _loc2_ = true;
                     param1.§=2§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §?]§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in § s§)
         {
            if(_loc3_ == param1 && !§!!Y§.§5!H§(param1))
            {
               this.§2p§ = param1;
               this.§=1§(param1);
               this.§ ]§ = (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§;-§(param1);
               this.§2!k§();
               break;
            }
         }
         if(this.§7D§ == §1W§)
         {
            this.§`!b§();
         }
         if(this.§0+§)
         {
            _loc5_ = this.§0+§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§6!]§;
         if((_loc4_ = this.§[!Y§(param1)) == null)
         {
            return;
         }
         if(_loc4_.ready)
         {
            if(_loc4_.§ !`§)
            {
               if(param2)
               {
                  this.§>G§(_loc4_);
               }
               this.§<F§(_loc4_.§ !`§,_loc4_.§3!=§);
               this.§`!b§();
               this.§`!Q§(true);
               this.§0+§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Highscores"));
               this.§for§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§6!P§.§=A§,this.§6!S§);
         }
      }
      
      private function §for§(param1:String) : void
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
            levelNum = levelNumInEpisode + §@o§ * episodeNum;
            levelNameString = HighscoreSidebar.§^9§[int(levelNum) - 1];
            (this.§0+§.getItemByName("TextField_Level_Num") as §>L§).§<!=§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §6!S§(param1:Event) : void
      {
         var _loc2_:§6!]§ = param1.currentTarget as §6!]§;
         _loc2_.removeEventListener(§6!P§.§=A§,this.§6!S§);
         this.§2p§ = _loc2_.levelId;
         var _loc3_:String = this.§2p§;
         this.§for§(_loc3_);
         this.§>G§(_loc2_);
         this.§<F§(_loc2_.§ !`§,_loc2_.§3!=§);
         this.§`!b§();
         this.§+"'§();
         this.§`!Q§(true);
         this.§0+§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§0+§.setObjectToFront(this.§0+§.getItemByName("Container_Highscores"));
         this.§?]§(this.§2p§);
      }
      
      private function §`!b§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §!!Y§.§9!L§;
         if(_loc1_.name)
         {
            (this.§0+§.getItemByName("TextField_MyScoreName") as §>L§).§<!=§.text = _loc1_.name + ":  " + this.§ ]§;
         }
         if(this.§7D§ == §%!3§)
         {
            for each(_loc2_ in § s§)
            {
               if(_loc2_ == this.§2p§ && !§!!Y§.§5!H§(_loc2_))
               {
                  this.§=1§(this.§2p§);
                  this.§ ]§ = (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§;-§(this.§2p§);
                  this.§2!k§();
                  break;
               }
            }
         }
         else if(this.§7D§ == §1W§)
         {
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§<!X§(param1);
      }
      
      private function §+"'§(param1:Boolean = true) : void
      {
         this.§?H§ = 0;
         this.§+T§ = param1;
         this.§5!W§ = 0;
      }
      
      private function §<!X§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§0+§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§0+§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§+T§)
         {
            if(this.§<!m§)
            {
               this.§<!m§.filters = [new GlowFilter(16777215,1,32,8,this.§5!W§,5,false,false)];
               for each(_loc4_ in this.§^"1§)
               {
                  this.§<!m§.filters.push(_loc4_);
               }
            }
            if(int((this.§0+§.getItemByName("TextField_MyScoreNumber") as §>L§).§<!=§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§5!W§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§5!W§,3,false,false)];
               for each(_loc4_ in this.§^"1§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§?H§ > 3)
            {
               this.§5!W§ = 0;
               this.§?H§ = 0;
               this.§<!m§ = null;
               this.§+T§ = false;
            }
            if(this.§?H§ % 2 == 0)
            {
               this.§5!W§ += param1 / 200;
               if(this.§5!W§ > 5.5)
               {
                  this.§5!W§ = 5.5;
                  ++this.§?H§;
               }
            }
            else
            {
               this.§5!W§ -= param1 / 200;
               if(this.§5!W§ < 0)
               {
                  this.§5!W§ = 0;
                  ++this.§?H§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§^"1§;
            _loc3_.filters = this.§^"1§;
            if(this.§<!m§)
            {
               this.§<!m§.filters = this.§^"1§;
            }
         }
      }
      
      private function §<F§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc3_:Boolean = false;
         this.§1!<§ = param1;
         if(!this.§0+§)
         {
            return;
         }
         var _loc4_:Class = §&!2§.§0!O§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§0+§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§<!m§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §`!k§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §`!k§;
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
               if(§!!Y§.§9!L§ && _loc10_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc11_ = _loc10_.nickName;
               _loc12_ = "";
               _loc12_ = this.§<!j§(_loc11_);
               _loc11_ = this.§ ?§(_loc11_);
               _loc9_.TextField_Name.text = _loc11_;
               _loc9_.TextField_CountryCode.text = _loc12_;
               _loc9_.TextField_Points.text = _loc10_.score;
               if(_loc3_)
               {
                  _loc9_.TextField_Rank.textColor = §+!+§;
                  _loc9_.TextField_Name.textColor = §+!+§;
                  _loc9_.TextField_Points.textColor = §+!+§;
                  _loc9_.TextField_CountryCode.textColor = §+!+§;
                  this.§<!m§ = _loc9_;
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
      
      private function § ?§(param1:String) : String
      {
         if(!this.§9H§)
         {
            param1 = param1.slice(0,param1.length - 2);
         }
         return param1;
      }
      
      private function §<!j§(param1:String) : String
      {
         var _loc2_:String = "";
         if(!this.§9H§ && param1.charAt(param1.length - 2) != "X")
         {
            _loc2_ = param1.slice(param1.length - 2,param1.length);
         }
         return _loc2_;
      }
      
      public function §=1§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§ s§)
         {
            if(_loc3_ == param1)
            {
               this.§;p§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §]6§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§6!]§ = null;
         for each(_loc4_ in this.§]!]§)
         {
            if(_loc4_.levelId == param1 && _loc4_.§;g§ == this.§9H§)
            {
               if(_loc4_.§&!"§(param2) == false)
               {
                  if(param3)
                  {
                     this.§`!Q§(false);
                     this.§0+§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§0+§.setObjectToFront(this.§0+§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§<F§(_loc4_.§ !`§,_loc4_.§3!=§);
                     this.§`!b§();
                     this.§?]§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§`!Q§(false);
                  this.§0+§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§0+§.setObjectToFront(this.§0+§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§6!P§.§=A§,this.§6!S§);
                  break;
               }
            }
         }
      }
      
      public function §1!4§() : void
      {
         var _loc1_:§6!]§ = null;
         for each(_loc1_ in this.§]!]§)
         {
            _loc1_.§+>§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§9!'§ = null;
         this.§`!Q§(false);
         if(this.§0+§)
         {
            _loc1_ = this.§0+§.getItemByName("HighscoreSidebar") as §9!'§;
            this.§0+§.clear();
            this.§0+§ = null;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§;p§;
      }
      
      public function §<]§() : void
      {
         this.§]6§(HighscoreSidebar.§ s§[this.currentPage]);
      }
      
      public function set container(param1:§9!'§) : void
      {
         this.§0+§ = param1;
      }
      
      public function get container() : §9!'§
      {
         return this.§0+§;
      }
      
      public function get §@d§() : String
      {
         return this.§2p§;
      }
      
      public function get §-!Y§() : String
      {
         return this.§7D§;
      }
      
      public function set §@d§(param1:String) : void
      {
         this.§2p§ = param1;
      }
      
      public function §01§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §@o§ * _loc3_;
         return HighscoreSidebar.§^9§[int(_loc5_) - 1];
      }
      
      private function §8x§() : void
      {
         if(§!!Y§.§9!L§.§>c§)
         {
            this.§2!k§();
            this.§0+§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§0x§();
         }
      }
      
      private function §0x§() : void
      {
         this.§0+§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §++§() : Boolean
      {
         return this.§ d§;
      }
      
      public function get §[,§() : Boolean
      {
         return this.§-H§;
      }
      
      public function §6j§() : Boolean
      {
         return this.§"9§;
      }
      
      private function §2!k§() : void
      {
         var _loc1_:String = null;
         if(§!!Y§.§9!L§.name)
         {
            _loc1_ = §!!Y§.§9!L§.name + ":  " + this.§ ]§;
            (this.§0+§.getItemByName("TextField_MyScoreName") as §>L§).§<!=§.text = _loc1_;
         }
      }
   }
}
