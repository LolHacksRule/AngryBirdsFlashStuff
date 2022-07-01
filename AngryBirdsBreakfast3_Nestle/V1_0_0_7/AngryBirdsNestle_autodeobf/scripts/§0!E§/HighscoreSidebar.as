package §0!E§
{
   import §"q§.§6,§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §>P§.§%`§;
   import §>P§.§]"4§;
   import com.rovio.assets.§[O§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §4!T§:String = "StateHighScoresLocal";
      
      public static const §7!R§:String = "StateHighScoresGlobal";
      
      public static const §+F§:String = "StateDisableHighScores";
      
      public static const §'![§:String = "StateLoadingLevelHighScores";
      
      public static const §&!T§:String = "credits_level";
      
      public static const §]L§:Array = new Array("1-1","1-2","1-3","1-4","1-5","2-1","2-2","2-3","2-4","2-5");
      
      public static const §5$§:Array = ["1","2","3","4","5","6","7","8","9","10"];
      
      public static const §&" §:int = 5;
      
      public static const §;'§:int = 10;
      
      public static const §2x§:int = 10;
      
      public static const §1!t§:uint = 3394815;
       
      
      private var §5@§:String = null;
      
      private var §?L§:Array;
      
      private var §0!h§:int = 0;
      
      private var §;!]§:String = null;
      
      private var §?#§:Array;
      
      private var §-"1§:§]"4§;
      
      private var §8!'§:MovieClip = null;
      
      private var §6Y§:Number = 0;
      
      private var §`!U§:int = 0;
      
      private var §]!_§:Boolean = false;
      
      private var § 9§:Array;
      
      public var §<I§:Boolean = false;
      
      private var §="1§:Boolean;
      
      private var §?W§:Boolean;
      
      private var §9!F§:Boolean;
      
      private var §4!S§:Number;
      
      private var §8!1§:Boolean;
      
      public function HighscoreSidebar()
      {
         this.§ 9§ = [];
         super();
         this.reset();
      }
      
      public function §>§() : void
      {
         this.§<I§ = !this.§<I§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§,z§ = null;
         var _loc3_:§,z§ = null;
         this.§?L§ = [];
         this.§0!h§ = 0;
         for each(_loc1_ in §]L§)
         {
            _loc2_ = new §,z§(_loc1_,true);
            this.§?L§.push(_loc2_);
            _loc3_ = new §,z§(_loc1_,false);
            this.§?L§.push(_loc3_);
         }
         this.§;!]§ = §]L§[0];
         this.§8!'§ = null;
         this.§6Y§ = 0;
         this.§`!U§ = 0;
         this.§]!_§ = false;
         this.§4!S§ = 0;
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:§,z§ = null;
         for each(_loc1_ in this.§?L§)
         {
            _loc1_.removeEventListener(§8D§.§=!t§,this.§1;§);
         }
      }
      
      public function §;!o§(param1:§]"4§) : void
      {
         this.§-"1§ = param1;
         this.§ 9§ = this.§-"1§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.§9!s§(this.§5@§);
      }
      
      private function §8!H§(param1:Boolean) : void
      {
         this.§-"1§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §?q§(param1:Boolean = true) : void
      {
         this.§-"1§.getItemByName("Button_Credits").setEnabled(param1,true);
         if(param1)
         {
            this.§-"1§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§-"1§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§-"1§.getItemByName("Button_Credits").visible)
         {
            this.§-"1§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§="1§ = param1;
      }
      
      public function §1!P§(param1:Boolean = true) : void
      {
         this.§-"1§.getItemByName("Button_Logout").setEnabled(param1,true);
         this.§9!F§ = param1;
         if(param1)
         {
            this.§-"1§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§-"1§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§-"1§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §2t§(param1:Boolean = true) : void
      {
         this.§-"1§.getItemByName("Button_Tutorial").setEnabled(param1,true);
         if(param1)
         {
            this.§-"1§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§-"1§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§-"1§.getItemByName("Button_Tutorial").visible)
         {
            this.§-"1§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§?W§ = param1;
      }
      
      public function §&I§(param1:Boolean = true) : void
      {
         this.§-"1§.getItemByName("Button_Mute").setEnabled(param1,true);
         if(param1)
         {
            this.§-"1§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§-"1§.getItemByName("Button_Mute").setVisibility(true);
            this.§-"1§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§-"1§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§-"1§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§-"1§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §6!y§(param1:Boolean) : void
      {
      }
      
      public function §&",§(param1:String) : §,z§
      {
         var _loc2_:§,z§ = null;
         for each(_loc2_ in this.§?L§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1 && _loc2_.§0"!§ == this.§8!1§)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §<!"§(param1:String, param2:Boolean) : §,z§
      {
         var _loc3_:§,z§ = null;
         for each(_loc3_ in this.§?L§)
         {
            if(_loc3_ != null && _loc3_.levelId == param1 && _loc3_.§0"!§ == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §-!a§(param1:int, param2:String, param3:§'!%§) : void
      {
         var _loc4_:§,z§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.§9!s§(§4!T§);
               this.§;!v§(HighscoreSidebar.§]L§[this.§0!h§]);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "BUTTON_OVERALL":
               this.§9!s§(§7!R§);
               this.§;!v§(HighscoreSidebar.§]L§[this.§0!h§]);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "RIGHT":
               if(this.§5@§ == §7!R§)
               {
                  this.§;!v§(HighscoreSidebar.§]L§[this.§,!P§(this.§0!h§)]);
               }
               else
               {
                  this.§;!v§(HighscoreSidebar.§]L§[this.§,!P§(this.§0!h§)]);
               }
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "LEFT":
               if(this.§5@§ == §7!R§)
               {
                  this.§;!v§(HighscoreSidebar.§]L§[this.§54§(this.§0!h§)]);
               }
               else
               {
                  this.§;!v§(HighscoreSidebar.§]L§[this.§54§(this.§0!h§)]);
               }
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "UP":
               if(this.§5@§ == §7!R§)
               {
                  if((_loc4_ = this.§&",§(this.§;!]§)) != null)
                  {
                     _loc4_.§%%§();
                     this.§>e§(this.§;!]§,false);
                  }
               }
               else if((_loc4_ = this.§&",§(this.§;!]§)) != null)
               {
                  _loc4_.§%%§();
                  this.§>e§(this.§;!]§,false);
               }
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "DOWN":
               if(this.§5@§ == §7!R§)
               {
                  if(_loc4_ = this.§&",§(this.§;!]§))
                  {
                     _loc4_.§?S§();
                     this.§>e§(this.§;!]§,false);
                  }
               }
               else if(_loc4_ = this.§&",§(this.§;!]§))
               {
                  _loc4_.§?S§();
                  this.§>e§(this.§;!]§,false);
               }
               §%!c§.§8" §("Menu_Confirm");
         }
      }
      
      public function §9!s§(param1:String, param2:Boolean = false) : void
      {
         this.§5@§ = param1;
         switch(param1)
         {
            case §4!T§:
               this.§8!1§ = true;
               this.§-"1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§-"1§.getItemByName("TextField_Level_Num") as §%`§).§=!=§.text = "";
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Board_Selection"));
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Highscores"));
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Sidebar_Buttons"));
               this.§-"1§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§-"1§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§-"1§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§-"1§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§-"1§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§-"1§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§-"1§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§-"1§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§5!2§();
               this.§6!y§(false);
               this.§;!v§(this.§;!]§,param2);
               break;
            case §7!R§:
               this.§8!1§ = false;
               this.§-"1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§-"1§.getItemByName("TextField_Level_Num") as §%`§).§=!=§.text = "";
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Board_Selection"));
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Highscores"));
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Sidebar_Buttons"));
               this.§-"1§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§-"1§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§-"1§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§-"1§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§-"1§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§-"1§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§-"1§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§-"1§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§5!2§();
               this.§6!y§(true);
               this.§;!v§(this.§;!]§,param2);
               break;
            case §+F§:
               this.§-"1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§-"1§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§-"1§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§-"1§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§-"1§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§-"1§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§-"1§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§-"1§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§-"1§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§=#§();
               this.§>!#§(false);
               break;
            case §'![§:
               this.§-"1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("MovieClip_LoadingHiScores"));
               this.§-"1§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§-"1§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§-"1§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§-"1§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§-"1§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§-"1§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§-"1§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§-"1§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§=#§();
               this.§2t§(false);
               this.§1!P§(false);
               this.§>!#§(false);
               this.§&I§(false);
         }
      }
      
      public function §>!#§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§-"1§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§-"1§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §,!P§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§]L§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §54§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§]L§.length - 1;
         }
         return param1;
      }
      
      public function §@!=§(param1:§,z§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §6,§.§!!7§)
         {
            _loc4_ = param1.§0!B§;
            do
            {
               _loc3_++;
               param1.§?S§();
               _loc5_ = param1.§]!=§;
               _loc6_ = 0;
               while(_loc6_ < §;'§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §;'§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §6,§.§!!7§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §2x§)
                  {
                     _loc2_ = true;
                     param1.§%%§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §>e§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §]L§)
         {
            if(_loc3_ == param1 && !§6,§.§',§(param1))
            {
               this.§;!]§ = param1;
               this.§!"&§(param1);
               this.§4!S§ = (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§41§(param1);
               this.§5",§();
               break;
            }
         }
         if(this.§5@§ == §7!R§)
         {
            this.§>?§();
         }
         if(this.§-"1§)
         {
            _loc5_ = this.§-"1§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§,z§;
         if((_loc4_ = this.§&",§(param1)) == null)
         {
            return;
         }
         if(_loc4_.ready)
         {
            if(_loc4_.§0!B§)
            {
               if(param2)
               {
                  this.§@!=§(_loc4_);
               }
               this.§ T§(_loc4_.§0!B§,_loc4_.§]!=§);
               this.§>?§();
               this.§8!H§(true);
               this.§-"1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Highscores"));
               this.§2E§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§8D§.§=!t§,this.§1;§);
         }
      }
      
      private function §2E§(param1:String) : void
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
            levelNum = levelNumInEpisode + §&" § * episodeNum;
            levelNameString = HighscoreSidebar.§5$§[int(levelNum) - 1];
            (this.§-"1§.getItemByName("TextField_Level_Num") as §%`§).§=!=§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §1;§(param1:Event) : void
      {
         var _loc2_:§,z§ = param1.currentTarget as §,z§;
         _loc2_.removeEventListener(§8D§.§=!t§,this.§1;§);
         this.§;!]§ = _loc2_.levelId;
         var _loc3_:String = this.§;!]§;
         this.§2E§(_loc3_);
         this.§@!=§(_loc2_);
         this.§ T§(_loc2_.§0!B§,_loc2_.§]!=§);
         this.§>?§();
         this.§[;§();
         this.§8!H§(true);
         this.§-"1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("Container_Highscores"));
         this.§>e§(this.§;!]§);
      }
      
      private function §>?§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §6,§.§!!7§;
         if(_loc1_.name)
         {
            (this.§-"1§.getItemByName("TextField_MyScoreName") as §%`§).§=!=§.text = _loc1_.name + ":  " + this.§4!S§;
         }
         if(this.§5@§ == §4!T§)
         {
            for each(_loc2_ in §]L§)
            {
               if(_loc2_ == this.§;!]§ && !§6,§.§',§(_loc2_))
               {
                  this.§!"&§(this.§;!]§);
                  this.§4!S§ = (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§41§(this.§;!]§);
                  this.§5",§();
                  break;
               }
            }
         }
         else if(this.§5@§ == §7!R§)
         {
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§9>§(param1);
      }
      
      private function §[;§(param1:Boolean = true) : void
      {
         this.§`!U§ = 0;
         this.§]!_§ = param1;
         this.§6Y§ = 0;
      }
      
      private function §9>§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§-"1§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§-"1§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§]!_§)
         {
            if(this.§8!'§)
            {
               this.§8!'§.filters = [new GlowFilter(16777215,1,32,8,this.§6Y§,5,false,false)];
               for each(_loc4_ in this.§ 9§)
               {
                  this.§8!'§.filters.push(_loc4_);
               }
            }
            if(int((this.§-"1§.getItemByName("TextField_MyScoreNumber") as §%`§).§=!=§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§6Y§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§6Y§,3,false,false)];
               for each(_loc4_ in this.§ 9§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§`!U§ > 3)
            {
               this.§6Y§ = 0;
               this.§`!U§ = 0;
               this.§8!'§ = null;
               this.§]!_§ = false;
            }
            if(this.§`!U§ % 2 == 0)
            {
               this.§6Y§ += param1 / 200;
               if(this.§6Y§ > 5.5)
               {
                  this.§6Y§ = 5.5;
                  ++this.§`!U§;
               }
            }
            else
            {
               this.§6Y§ -= param1 / 200;
               if(this.§6Y§ < 0)
               {
                  this.§6Y§ = 0;
                  ++this.§`!U§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§ 9§;
            _loc3_.filters = this.§ 9§;
            if(this.§8!'§)
            {
               this.§8!'§.filters = this.§ 9§;
            }
         }
      }
      
      private function § T§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc3_:Boolean = false;
         this.§?#§ = param1;
         if(!this.§-"1§)
         {
            return;
         }
         var _loc4_:Class = §[O§.§1s§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§-"1§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§8!'§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §;'§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §;'§;
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
               if(§6,§.§!!7§ && _loc10_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc11_ = _loc10_.nickName;
               _loc12_ = "";
               _loc12_ = this.§=!r§(_loc11_);
               _loc11_ = this.§>!S§(_loc11_);
               _loc9_.TextField_Name.text = _loc11_;
               _loc9_.TextField_CountryCode.text = _loc12_;
               _loc9_.TextField_Points.text = _loc10_.score;
               if(_loc3_)
               {
                  _loc9_.TextField_Rank.textColor = §1!t§;
                  _loc9_.TextField_Name.textColor = §1!t§;
                  _loc9_.TextField_Points.textColor = §1!t§;
                  _loc9_.TextField_CountryCode.textColor = §1!t§;
                  this.§8!'§ = _loc9_;
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
      
      private function §>!S§(param1:String) : String
      {
         if(!this.§8!1§)
         {
            param1 = param1.slice(0,param1.length - 2);
         }
         return param1;
      }
      
      private function §=!r§(param1:String) : String
      {
         var _loc2_:String = "";
         if(!this.§8!1§ && param1.charAt(param1.length - 2) != "X")
         {
            _loc2_ = param1.slice(param1.length - 2,param1.length);
         }
         return _loc2_;
      }
      
      public function §!"&§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§]L§)
         {
            if(_loc3_ == param1)
            {
               this.§0!h§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §;!v§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§,z§ = null;
         for each(_loc4_ in this.§?L§)
         {
            if(_loc4_.levelId == param1 && _loc4_.§0"!§ == this.§8!1§)
            {
               if(_loc4_.§!y§(param2) == false)
               {
                  if(param3)
                  {
                     this.§8!H§(false);
                     this.§-"1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§ T§(_loc4_.§0!B§,_loc4_.§]!=§);
                     this.§>?§();
                     this.§>e§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§8!H§(false);
                  this.§-"1§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§-"1§.setObjectToFront(this.§-"1§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§8D§.§=!t§,this.§1;§);
                  break;
               }
            }
         }
      }
      
      public function §#!3§() : void
      {
         var _loc1_:§,z§ = null;
         for each(_loc1_ in this.§?L§)
         {
            _loc1_.§@-§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§]"4§ = null;
         this.§8!H§(false);
         if(this.§-"1§)
         {
            _loc1_ = this.§-"1§.getItemByName("HighscoreSidebar") as §]"4§;
            this.§-"1§.clear();
            this.§-"1§ = null;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§0!h§;
      }
      
      public function §^!2§() : void
      {
         this.§;!v§(HighscoreSidebar.§]L§[this.currentPage]);
      }
      
      public function set container(param1:§]"4§) : void
      {
         this.§-"1§ = param1;
      }
      
      public function get container() : §]"4§
      {
         return this.§-"1§;
      }
      
      public function get §^?§() : String
      {
         return this.§;!]§;
      }
      
      public function get §5u§() : String
      {
         return this.§5@§;
      }
      
      public function set §^?§(param1:String) : void
      {
         this.§;!]§ = param1;
      }
      
      public function §[!U§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §&" § * _loc3_;
         return HighscoreSidebar.§5$§[int(_loc5_) - 1];
      }
      
      private function §5!2§() : void
      {
         if(§6,§.§!!7§.§;!a§)
         {
            this.§5",§();
            this.§-"1§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§=#§();
         }
      }
      
      private function §=#§() : void
      {
         this.§-"1§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §7! §() : Boolean
      {
         return this.§?W§;
      }
      
      public function get §3_§() : Boolean
      {
         return this.§="1§;
      }
      
      public function §#!Y§() : Boolean
      {
         return this.§9!F§;
      }
      
      private function §5",§() : void
      {
         var _loc1_:String = null;
         if(§6,§.§!!7§.name)
         {
            _loc1_ = §6,§.§!!7§.name + ":  " + this.§4!S§;
            (this.§-"1§.getItemByName("TextField_MyScoreName") as §%`§).§=!=§.text = _loc1_;
         }
      }
   }
}
