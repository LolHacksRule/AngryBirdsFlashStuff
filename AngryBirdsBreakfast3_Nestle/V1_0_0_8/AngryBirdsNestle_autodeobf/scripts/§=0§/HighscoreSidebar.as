package §=0§
{
   import §&!>§.§2!V§;
   import §8q§.§]d§;
   import §;"+§.§"!I§;
   import §;"+§.§^!i§;
   import §>P§.§,3§;
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const § x§:String = "StateHighScoresLocal";
      
      public static const §%!l§:String = "StateHighScoresGlobal";
      
      public static const §4Q§:String = "StateDisableHighScores";
      
      public static const §9!R§:String = "StateLoadingLevelHighScores";
      
      public static const §2@§:String = "credits_level";
      
      public static const §9K§:Array = new Array("1-1","1-2","1-3","1-4","1-5","2-1","2-2","2-3","2-4","2-5");
      
      public static const §?X§:Array = ["1","2","3","4","5","6","7","8","9","10"];
      
      public static const §-!Y§:int = 5;
      
      public static const § v§:int = 10;
      
      public static const §[5§:int = 10;
      
      public static const §&!U§:uint = 3394815;
       
      
      private var §1!V§:String = null;
      
      private var § !J§:Array;
      
      private var §8P§:int = 0;
      
      private var §&!y§:String = null;
      
      private var §-!V§:Array;
      
      private var §@!U§:§^!i§;
      
      private var §+-§:MovieClip = null;
      
      private var §2e§:Number = 0;
      
      private var §1@§:int = 0;
      
      private var § !<§:Boolean = false;
      
      private var §"j§:Array;
      
      public var §]!q§:Boolean = false;
      
      private var §`4§:Boolean;
      
      private var §4y§:Boolean;
      
      private var §,V§:Boolean;
      
      private var §,!,§:Number;
      
      private var §62§:Boolean;
      
      public function HighscoreSidebar()
      {
         this.§"j§ = [];
         super();
         this.reset();
      }
      
      public function §!""§() : void
      {
         this.§]!q§ = !this.§]!q§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§8!,§ = null;
         var _loc3_:§8!,§ = null;
         this.§ !J§ = [];
         this.§8P§ = 0;
         for each(_loc1_ in §9K§)
         {
            _loc2_ = new §8!,§(_loc1_,true);
            this.§ !J§.push(_loc2_);
            _loc3_ = new §8!,§(_loc1_,false);
            this.§ !J§.push(_loc3_);
         }
         this.§&!y§ = §9K§[0];
         this.§+-§ = null;
         this.§2e§ = 0;
         this.§1@§ = 0;
         this.§ !<§ = false;
         this.§,!,§ = 0;
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:§8!,§ = null;
         for each(_loc1_ in this.§ !J§)
         {
            _loc1_.removeEventListener(§6p§.§#j§,this.§=i§);
         }
      }
      
      public function § !9§(param1:§^!i§) : void
      {
         this.§@!U§ = param1;
         this.§"j§ = this.§@!U§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.§@!Z§(this.§1!V§);
      }
      
      private function §5&§(param1:Boolean) : void
      {
         this.§@!U§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §+;§(param1:Boolean = true) : void
      {
         this.§@!U§.getItemByName("Button_Credits").setEnabled(param1,true);
         if(param1)
         {
            this.§@!U§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§@!U§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§@!U§.getItemByName("Button_Credits").visible)
         {
            this.§@!U§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§`4§ = param1;
      }
      
      public function §+!h§(param1:Boolean = true) : void
      {
         this.§@!U§.getItemByName("Button_Logout").setEnabled(param1,true);
         this.§,V§ = param1;
         if(param1)
         {
            this.§@!U§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§@!U§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§@!U§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §!5§(param1:Boolean = true) : void
      {
         this.§@!U§.getItemByName("Button_Tutorial").setEnabled(param1,true);
         if(param1)
         {
            this.§@!U§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§@!U§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§@!U§.getItemByName("Button_Tutorial").visible)
         {
            this.§@!U§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§4y§ = param1;
      }
      
      public function §+!#§(param1:Boolean = true) : void
      {
         this.§@!U§.getItemByName("Button_Mute").setEnabled(param1,true);
         if(param1)
         {
            this.§@!U§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§@!U§.getItemByName("Button_Mute").setVisibility(true);
            this.§@!U§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§@!U§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§@!U§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§@!U§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §<e§(param1:Boolean) : void
      {
      }
      
      public function §"!U§(param1:String) : §8!,§
      {
         var _loc2_:§8!,§ = null;
         for each(_loc2_ in this.§ !J§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1 && _loc2_.§4!t§ == this.§62§)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §7<§(param1:String, param2:Boolean) : §8!,§
      {
         var _loc3_:§8!,§ = null;
         for each(_loc3_ in this.§ !J§)
         {
            if(_loc3_ != null && _loc3_.levelId == param1 && _loc3_.§4!t§ == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §`t§(param1:int, param2:String, param3:§,3§) : void
      {
         var _loc4_:§8!,§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.§@!Z§(§ x§);
               this.§`'§(HighscoreSidebar.§9K§[this.§8P§]);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "BUTTON_OVERALL":
               this.§@!Z§(§%!l§);
               this.§`'§(HighscoreSidebar.§9K§[this.§8P§]);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "RIGHT":
               if(this.§1!V§ == §%!l§)
               {
                  this.§`'§(HighscoreSidebar.§9K§[this.§4U§(this.§8P§)]);
               }
               else
               {
                  this.§`'§(HighscoreSidebar.§9K§[this.§4U§(this.§8P§)]);
               }
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "LEFT":
               if(this.§1!V§ == §%!l§)
               {
                  this.§`'§(HighscoreSidebar.§9K§[this.§]!!§(this.§8P§)]);
               }
               else
               {
                  this.§`'§(HighscoreSidebar.§9K§[this.§]!!§(this.§8P§)]);
               }
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "UP":
               if(this.§1!V§ == §%!l§)
               {
                  if((_loc4_ = this.§"!U§(this.§&!y§)) != null)
                  {
                     _loc4_.§?"3§();
                     this.§-!U§(this.§&!y§,false);
                  }
               }
               else if((_loc4_ = this.§"!U§(this.§&!y§)) != null)
               {
                  _loc4_.§?"3§();
                  this.§-!U§(this.§&!y§,false);
               }
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "DOWN":
               if(this.§1!V§ == §%!l§)
               {
                  if(_loc4_ = this.§"!U§(this.§&!y§))
                  {
                     _loc4_.§?""§();
                     this.§-!U§(this.§&!y§,false);
                  }
               }
               else if(_loc4_ = this.§"!U§(this.§&!y§))
               {
                  _loc4_.§?""§();
                  this.§-!U§(this.§&!y§,false);
               }
               §]d§.§^!J§("Menu_Confirm");
         }
      }
      
      public function §@!Z§(param1:String, param2:Boolean = false) : void
      {
         this.§1!V§ = param1;
         switch(param1)
         {
            case § x§:
               this.§62§ = true;
               this.§@!U§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§@!U§.getItemByName("TextField_Level_Num") as §"!I§).§6s§.text = "";
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Board_Selection"));
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Highscores"));
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Sidebar_Buttons"));
               this.§@!U§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§@!U§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§@!U§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§@!U§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§@!U§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§@!U§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§@!U§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§@!U§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§%"7§();
               this.§<e§(false);
               this.§`'§(this.§&!y§,param2);
               break;
            case §%!l§:
               this.§62§ = false;
               this.§@!U§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§@!U§.getItemByName("TextField_Level_Num") as §"!I§).§6s§.text = "";
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Board_Selection"));
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Highscores"));
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Sidebar_Buttons"));
               this.§@!U§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§@!U§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§@!U§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§@!U§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§@!U§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§@!U§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§@!U§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§@!U§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§%"7§();
               this.§<e§(true);
               this.§`'§(this.§&!y§,param2);
               break;
            case §4Q§:
               this.§@!U§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§@!U§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§@!U§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§@!U§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§@!U§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§@!U§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§@!U§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§@!U§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§@!U§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§5!B§();
               this.§0!q§(false);
               break;
            case §9!R§:
               this.§@!U§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("MovieClip_LoadingHiScores"));
               this.§@!U§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§@!U§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§@!U§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§@!U§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§@!U§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§@!U§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§@!U§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§@!U§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§5!B§();
               this.§!5§(false);
               this.§+!h§(false);
               this.§0!q§(false);
               this.§+!#§(false);
         }
      }
      
      public function §0!q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@!U§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§@!U§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §4U§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§9K§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §]!!§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§9K§.length - 1;
         }
         return param1;
      }
      
      public function §+M§(param1:§8!,§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §2!V§.§!!?§)
         {
            _loc4_ = param1.§0"2§;
            do
            {
               _loc3_++;
               param1.§?""§();
               _loc5_ = param1.§!D§;
               _loc6_ = 0;
               while(_loc6_ < § v§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * § v§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §2!V§.§!!?§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §[5§)
                  {
                     _loc2_ = true;
                     param1.§?"3§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §-!U§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §9K§)
         {
            if(_loc3_ == param1 && !§2!V§.§0!,§(param1))
            {
               this.§&!y§ = param1;
               this.§0!+§(param1);
               this.§,!,§ = (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§>!h§(param1);
               this.§#!;§();
               break;
            }
         }
         if(this.§1!V§ == §%!l§)
         {
            this.§`&§();
         }
         if(this.§@!U§)
         {
            _loc5_ = this.§@!U§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§8!,§;
         if((_loc4_ = this.§"!U§(param1)) == null)
         {
            return;
         }
         if(_loc4_.ready)
         {
            if(_loc4_.§0"2§)
            {
               if(param2)
               {
                  this.§+M§(_loc4_);
               }
               this.§?!x§(_loc4_.§0"2§,_loc4_.§!D§);
               this.§`&§();
               this.§5&§(true);
               this.§@!U§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Highscores"));
               this.§"!g§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§6p§.§#j§,this.§=i§);
         }
      }
      
      private function §"!g§(param1:String) : void
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
            levelNum = levelNumInEpisode + §-!Y§ * episodeNum;
            levelNameString = HighscoreSidebar.§?X§[int(levelNum) - 1];
            (this.§@!U§.getItemByName("TextField_Level_Num") as §"!I§).§6s§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §=i§(param1:Event) : void
      {
         var _loc2_:§8!,§ = param1.currentTarget as §8!,§;
         _loc2_.removeEventListener(§6p§.§#j§,this.§=i§);
         this.§&!y§ = _loc2_.levelId;
         var _loc3_:String = this.§&!y§;
         this.§"!g§(_loc3_);
         this.§+M§(_loc2_);
         this.§?!x§(_loc2_.§0"2§,_loc2_.§!D§);
         this.§`&§();
         this.§+7§();
         this.§5&§(true);
         this.§@!U§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("Container_Highscores"));
         this.§-!U§(this.§&!y§);
      }
      
      private function §`&§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §2!V§.§!!?§;
         if(_loc1_.name)
         {
            (this.§@!U§.getItemByName("TextField_MyScoreName") as §"!I§).§6s§.text = _loc1_.name + ":  " + this.§,!,§;
         }
         if(this.§1!V§ == § x§)
         {
            for each(_loc2_ in §9K§)
            {
               if(_loc2_ == this.§&!y§ && !§2!V§.§0!,§(_loc2_))
               {
                  this.§0!+§(this.§&!y§);
                  this.§,!,§ = (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§>!h§(this.§&!y§);
                  this.§#!;§();
                  break;
               }
            }
         }
         else if(this.§1!V§ == §%!l§)
         {
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§#!>§(param1);
      }
      
      private function §+7§(param1:Boolean = true) : void
      {
         this.§1@§ = 0;
         this.§ !<§ = param1;
         this.§2e§ = 0;
      }
      
      private function §#!>§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§@!U§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§@!U§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§ !<§)
         {
            if(this.§+-§)
            {
               this.§+-§.filters = [new GlowFilter(16777215,1,32,8,this.§2e§,5,false,false)];
               for each(_loc4_ in this.§"j§)
               {
                  this.§+-§.filters.push(_loc4_);
               }
            }
            if(int((this.§@!U§.getItemByName("TextField_MyScoreNumber") as §"!I§).§6s§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§2e§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§2e§,3,false,false)];
               for each(_loc4_ in this.§"j§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§1@§ > 3)
            {
               this.§2e§ = 0;
               this.§1@§ = 0;
               this.§+-§ = null;
               this.§ !<§ = false;
            }
            if(this.§1@§ % 2 == 0)
            {
               this.§2e§ += param1 / 200;
               if(this.§2e§ > 5.5)
               {
                  this.§2e§ = 5.5;
                  ++this.§1@§;
               }
            }
            else
            {
               this.§2e§ -= param1 / 200;
               if(this.§2e§ < 0)
               {
                  this.§2e§ = 0;
                  ++this.§1@§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§"j§;
            _loc3_.filters = this.§"j§;
            if(this.§+-§)
            {
               this.§+-§.filters = this.§"j§;
            }
         }
      }
      
      private function §?!x§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc3_:Boolean = false;
         this.§-!V§ = param1;
         if(!this.§@!U§)
         {
            return;
         }
         var _loc4_:Class = §2"&§.§<$§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§@!U§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§+-§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < § v§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * § v§;
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
               if(§2!V§.§!!?§ && _loc10_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc11_ = _loc10_.nickName;
               _loc12_ = "";
               _loc12_ = this.§4`§(_loc11_);
               _loc11_ = this.§7F§(_loc11_);
               _loc9_.TextField_Name.text = _loc11_;
               _loc9_.TextField_CountryCode.text = _loc12_;
               _loc9_.TextField_Points.text = _loc10_.score;
               if(_loc3_)
               {
                  _loc9_.TextField_Rank.textColor = §&!U§;
                  _loc9_.TextField_Name.textColor = §&!U§;
                  _loc9_.TextField_Points.textColor = §&!U§;
                  _loc9_.TextField_CountryCode.textColor = §&!U§;
                  this.§+-§ = _loc9_;
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
      
      private function §7F§(param1:String) : String
      {
         if(!this.§62§)
         {
            param1 = param1.slice(0,param1.length - 2);
         }
         return param1;
      }
      
      private function §4`§(param1:String) : String
      {
         var _loc2_:String = "";
         if(!this.§62§ && param1.charAt(param1.length - 2) != "X")
         {
            _loc2_ = param1.slice(param1.length - 2,param1.length);
         }
         return _loc2_;
      }
      
      public function §0!+§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§9K§)
         {
            if(_loc3_ == param1)
            {
               this.§8P§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §`'§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§8!,§ = null;
         for each(_loc4_ in this.§ !J§)
         {
            if(_loc4_.levelId == param1 && _loc4_.§4!t§ == this.§62§)
            {
               if(_loc4_.§"!8§(param2) == false)
               {
                  if(param3)
                  {
                     this.§5&§(false);
                     this.§@!U§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§?!x§(_loc4_.§0"2§,_loc4_.§!D§);
                     this.§`&§();
                     this.§-!U§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§5&§(false);
                  this.§@!U§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§@!U§.setObjectToFront(this.§@!U§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§6p§.§#j§,this.§=i§);
                  break;
               }
            }
         }
      }
      
      public function §>!,§() : void
      {
         var _loc1_:§8!,§ = null;
         for each(_loc1_ in this.§ !J§)
         {
            _loc1_.§"!J§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§^!i§ = null;
         this.§5&§(false);
         if(this.§@!U§)
         {
            _loc1_ = this.§@!U§.getItemByName("HighscoreSidebar") as §^!i§;
            this.§@!U§.clear();
            this.§@!U§ = null;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§8P§;
      }
      
      public function §%x§() : void
      {
         this.§`'§(HighscoreSidebar.§9K§[this.currentPage]);
      }
      
      public function set container(param1:§^!i§) : void
      {
         this.§@!U§ = param1;
      }
      
      public function get container() : §^!i§
      {
         return this.§@!U§;
      }
      
      public function get §&a§() : String
      {
         return this.§&!y§;
      }
      
      public function get §=3§() : String
      {
         return this.§1!V§;
      }
      
      public function set §&a§(param1:String) : void
      {
         this.§&!y§ = param1;
      }
      
      public function §<!#§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §-!Y§ * _loc3_;
         return HighscoreSidebar.§?X§[int(_loc5_) - 1];
      }
      
      private function §%"7§() : void
      {
         if(§2!V§.§!!?§.§3§)
         {
            this.§#!;§();
            this.§@!U§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§5!B§();
         }
      }
      
      private function §5!B§() : void
      {
         this.§@!U§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §#!v§() : Boolean
      {
         return this.§4y§;
      }
      
      public function get §88§() : Boolean
      {
         return this.§`4§;
      }
      
      public function §83§() : Boolean
      {
         return this.§,V§;
      }
      
      private function §#!;§() : void
      {
         var _loc1_:String = null;
         if(§2!V§.§!!?§.name)
         {
            _loc1_ = §2!V§.§!!?§.name + ":  " + this.§,!,§;
            (this.§@!U§.getItemByName("TextField_MyScoreName") as §"!I§).§6s§.text = _loc1_;
         }
      }
   }
}
