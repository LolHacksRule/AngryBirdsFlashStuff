package §="5§
{
   import §!"§.§^!7§;
   import §!R§.§#!L§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §;X§.§4!@§;
   import com.rovio.assets.§1!C§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §4N§:String = "StateHighScoresLocal";
      
      public static const § b§:String = "StateHighScoresGlobal";
      
      public static const §7!@§:String = "StateDisableHighScores";
      
      public static const §^r§:String = "StateLoadingLevelHighScores";
      
      public static const §6r§:String = "credits_level";
      
      public static const §2z§:Array = new Array("1-1","1-2","1-3","1-4","1-5","2-1","2-2","2-3","2-4","2-5");
      
      public static const §#!1§:Array = ["1","2","3","4","5","6","7","8","9","10"];
      
      public static const §]>§:int = 5;
      
      public static const §!!#§:int = 10;
      
      public static const §!"!§:int = 10;
      
      public static const §,N§:uint = 3394815;
       
      
      private var §@?§:String = null;
      
      private var §[,§:Array;
      
      private var §'"5§:int = 0;
      
      private var §,!=§:String = null;
      
      private var §>!O§:Array;
      
      private var §;"#§:§%n§;
      
      private var §"!d§:MovieClip = null;
      
      private var §^"7§:Number = 0;
      
      private var § !J§:int = 0;
      
      private var §4_§:Boolean = false;
      
      private var §![§:Array;
      
      public var §-m§:Boolean = false;
      
      private var §!b§:Boolean;
      
      private var §4I§:Boolean;
      
      private var §?]§:Boolean;
      
      private var §4,§:Number;
      
      private var §7e§:Boolean;
      
      public function HighscoreSidebar()
      {
         this.§![§ = [];
         super();
         this.reset();
      }
      
      public function §>!M§() : void
      {
         this.§-m§ = !this.§-m§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§7=§ = null;
         var _loc3_:§7=§ = null;
         this.§[,§ = [];
         this.§'"5§ = 0;
         for each(_loc1_ in §2z§)
         {
            _loc2_ = new §7=§(_loc1_,true);
            this.§[,§.push(_loc2_);
            _loc3_ = new §7=§(_loc1_,false);
            this.§[,§.push(_loc3_);
         }
         this.§,!=§ = §2z§[0];
         this.§"!d§ = null;
         this.§^"7§ = 0;
         this.§ !J§ = 0;
         this.§4_§ = false;
         this.§4,§ = 0;
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:§7=§ = null;
         for each(_loc1_ in this.§[,§)
         {
            _loc1_.removeEventListener(§7y§.§7T§,this.§&;§);
         }
      }
      
      public function §[4§(param1:§%n§) : void
      {
         this.§;"#§ = param1;
         this.§![§ = this.§;"#§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.§5N§(this.§@?§);
      }
      
      private function §?@§(param1:Boolean) : void
      {
         this.§;"#§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §?!§(param1:Boolean = true) : void
      {
         this.§;"#§.getItemByName("Button_Credits").setEnabled(param1,true);
         if(param1)
         {
            this.§;"#§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§;"#§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§;"#§.getItemByName("Button_Credits").visible)
         {
            this.§;"#§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§!b§ = param1;
      }
      
      public function §-_§(param1:Boolean = true) : void
      {
         this.§;"#§.getItemByName("Button_Logout").setEnabled(param1,true);
         this.§?]§ = param1;
         if(param1)
         {
            this.§;"#§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§;"#§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§;"#§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §,"§(param1:Boolean = true) : void
      {
         this.§;"#§.getItemByName("Button_Tutorial").setEnabled(param1,true);
         if(param1)
         {
            this.§;"#§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§;"#§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§;"#§.getItemByName("Button_Tutorial").visible)
         {
            this.§;"#§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§4I§ = param1;
      }
      
      public function §&k§(param1:Boolean = true) : void
      {
         this.§;"#§.getItemByName("Button_Mute").setEnabled(param1,true);
         if(param1)
         {
            this.§;"#§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§;"#§.getItemByName("Button_Mute").setVisibility(true);
            this.§;"#§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§;"#§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§;"#§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§;"#§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §@Q§(param1:Boolean) : void
      {
      }
      
      public function §,!P§(param1:String) : §7=§
      {
         var _loc2_:§7=§ = null;
         for each(_loc2_ in this.§[,§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1 && _loc2_.§ m§ == this.§7e§)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §3<§(param1:String, param2:Boolean) : §7=§
      {
         var _loc3_:§7=§ = null;
         for each(_loc3_ in this.§[,§)
         {
            if(_loc3_ != null && _loc3_.levelId == param1 && _loc3_.§ m§ == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §#%§(param1:int, param2:String, param3:§#!L§) : void
      {
         var _loc4_:§7=§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.§5N§(§4N§);
               this.§!r§(HighscoreSidebar.§2z§[this.§'"5§]);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "BUTTON_OVERALL":
               this.§5N§(§ b§);
               this.§!r§(HighscoreSidebar.§2z§[this.§'"5§]);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "RIGHT":
               if(this.§@?§ == § b§)
               {
                  this.§!r§(HighscoreSidebar.§2z§[this.§3!H§(this.§'"5§)]);
               }
               else
               {
                  this.§!r§(HighscoreSidebar.§2z§[this.§3!H§(this.§'"5§)]);
               }
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "LEFT":
               if(this.§@?§ == § b§)
               {
                  this.§!r§(HighscoreSidebar.§2z§[this.§=7§(this.§'"5§)]);
               }
               else
               {
                  this.§!r§(HighscoreSidebar.§2z§[this.§=7§(this.§'"5§)]);
               }
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "UP":
               if(this.§@?§ == § b§)
               {
                  if((_loc4_ = this.§,!P§(this.§,!=§)) != null)
                  {
                     _loc4_.§,3§();
                     this.§`!J§(this.§,!=§,false);
                  }
               }
               else if((_loc4_ = this.§,!P§(this.§,!=§)) != null)
               {
                  _loc4_.§,3§();
                  this.§`!J§(this.§,!=§,false);
               }
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "DOWN":
               if(this.§@?§ == § b§)
               {
                  if(_loc4_ = this.§,!P§(this.§,!=§))
                  {
                     _loc4_.§8""§();
                     this.§`!J§(this.§,!=§,false);
                  }
               }
               else if(_loc4_ = this.§,!P§(this.§,!=§))
               {
                  _loc4_.§8""§();
                  this.§`!J§(this.§,!=§,false);
               }
               §4!@§.§`!w§("Menu_Confirm");
         }
      }
      
      public function §5N§(param1:String, param2:Boolean = false) : void
      {
         this.§@?§ = param1;
         switch(param1)
         {
            case §4N§:
               this.§7e§ = true;
               this.§;"#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§;"#§.getItemByName("TextField_Level_Num") as §&0§).§"S§.text = "";
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Board_Selection"));
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Highscores"));
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Sidebar_Buttons"));
               this.§;"#§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§;"#§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§;"#§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§;"#§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§;"#§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§;"#§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§;"#§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§;"#§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§^!5§();
               this.§@Q§(false);
               this.§!r§(this.§,!=§,param2);
               break;
            case § b§:
               this.§7e§ = false;
               this.§;"#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§;"#§.getItemByName("TextField_Level_Num") as §&0§).§"S§.text = "";
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Board_Selection"));
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Highscores"));
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Sidebar_Buttons"));
               this.§;"#§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§;"#§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§;"#§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§;"#§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§;"#§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§;"#§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§;"#§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§;"#§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§^!5§();
               this.§@Q§(true);
               this.§!r§(this.§,!=§,param2);
               break;
            case §7!@§:
               this.§;"#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§;"#§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§;"#§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§;"#§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§;"#§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§;"#§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§;"#§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§;"#§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§;"#§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§+!"§();
               this.§&"+§(false);
               break;
            case §^r§:
               this.§;"#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("MovieClip_LoadingHiScores"));
               this.§;"#§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§;"#§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§;"#§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§;"#§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§;"#§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§;"#§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§;"#§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§;"#§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§+!"§();
               this.§,"§(false);
               this.§-_§(false);
               this.§&"+§(false);
               this.§&k§(false);
         }
      }
      
      public function §&"+§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;"#§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§;"#§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §3!H§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§2z§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §=7§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§2z§.length - 1;
         }
         return param1;
      }
      
      public function §@!X§(param1:§7=§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §^!7§.§>!8§)
         {
            _loc4_ = param1.§1-§;
            do
            {
               _loc3_++;
               param1.§8""§();
               _loc5_ = param1.§6e§;
               _loc6_ = 0;
               while(_loc6_ < §!!#§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §!!#§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §^!7§.§>!8§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §!"!§)
                  {
                     _loc2_ = true;
                     param1.§,3§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §`!J§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §2z§)
         {
            if(_loc3_ == param1 && !§^!7§.§-!Z§(param1))
            {
               this.§,!=§ = param1;
               this.§+!i§(param1);
               this.§4,§ = (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§<y§(param1);
               this.§ j§();
               break;
            }
         }
         if(this.§@?§ == § b§)
         {
            this.§@D§();
         }
         if(this.§;"#§)
         {
            _loc5_ = this.§;"#§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§7=§;
         if((_loc4_ = this.§,!P§(param1)) == null)
         {
            return;
         }
         if(_loc4_.ready)
         {
            if(_loc4_.§1-§)
            {
               if(param2)
               {
                  this.§@!X§(_loc4_);
               }
               this.§,"%§(_loc4_.§1-§,_loc4_.§6e§);
               this.§@D§();
               this.§?@§(true);
               this.§;"#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Highscores"));
               this.§=!-§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§7y§.§7T§,this.§&;§);
         }
      }
      
      private function §=!-§(param1:String) : void
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
            levelNum = levelNumInEpisode + §]>§ * episodeNum;
            levelNameString = HighscoreSidebar.§#!1§[int(levelNum) - 1];
            (this.§;"#§.getItemByName("TextField_Level_Num") as §&0§).§"S§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §&;§(param1:Event) : void
      {
         var _loc2_:§7=§ = param1.currentTarget as §7=§;
         _loc2_.removeEventListener(§7y§.§7T§,this.§&;§);
         this.§,!=§ = _loc2_.levelId;
         var _loc3_:String = this.§,!=§;
         this.§=!-§(_loc3_);
         this.§@!X§(_loc2_);
         this.§,"%§(_loc2_.§1-§,_loc2_.§6e§);
         this.§@D§();
         this.§#6§();
         this.§?@§(true);
         this.§;"#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("Container_Highscores"));
         this.§`!J§(this.§,!=§);
      }
      
      private function §@D§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §^!7§.§>!8§;
         if(_loc1_.name)
         {
            (this.§;"#§.getItemByName("TextField_MyScoreName") as §&0§).§"S§.text = _loc1_.name + ":  " + this.§4,§;
         }
         if(this.§@?§ == §4N§)
         {
            for each(_loc2_ in §2z§)
            {
               if(_loc2_ == this.§,!=§ && !§^!7§.§-!Z§(_loc2_))
               {
                  this.§+!i§(this.§,!=§);
                  this.§4,§ = (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§<y§(this.§,!=§);
                  this.§ j§();
                  break;
               }
            }
         }
         else if(this.§@?§ == § b§)
         {
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§4!P§(param1);
      }
      
      private function §#6§(param1:Boolean = true) : void
      {
         this.§ !J§ = 0;
         this.§4_§ = param1;
         this.§^"7§ = 0;
      }
      
      private function §4!P§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§;"#§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§;"#§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§4_§)
         {
            if(this.§"!d§)
            {
               this.§"!d§.filters = [new GlowFilter(16777215,1,32,8,this.§^"7§,5,false,false)];
               for each(_loc4_ in this.§![§)
               {
                  this.§"!d§.filters.push(_loc4_);
               }
            }
            if(int((this.§;"#§.getItemByName("TextField_MyScoreNumber") as §&0§).§"S§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§^"7§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§^"7§,3,false,false)];
               for each(_loc4_ in this.§![§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§ !J§ > 3)
            {
               this.§^"7§ = 0;
               this.§ !J§ = 0;
               this.§"!d§ = null;
               this.§4_§ = false;
            }
            if(this.§ !J§ % 2 == 0)
            {
               this.§^"7§ += param1 / 200;
               if(this.§^"7§ > 5.5)
               {
                  this.§^"7§ = 5.5;
                  ++this.§ !J§;
               }
            }
            else
            {
               this.§^"7§ -= param1 / 200;
               if(this.§^"7§ < 0)
               {
                  this.§^"7§ = 0;
                  ++this.§ !J§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§![§;
            _loc3_.filters = this.§![§;
            if(this.§"!d§)
            {
               this.§"!d§.filters = this.§![§;
            }
         }
      }
      
      private function §,"%§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc3_:Boolean = false;
         this.§>!O§ = param1;
         if(!this.§;"#§)
         {
            return;
         }
         var _loc4_:Class = §1!C§.§"!&§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§;"#§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§"!d§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §!!#§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §!!#§;
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
               if(§^!7§.§>!8§ && _loc10_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc11_ = _loc10_.nickName;
               _loc12_ = "";
               _loc12_ = this.§,2§(_loc11_);
               _loc11_ = this.§>"-§(_loc11_);
               _loc9_.TextField_Name.text = _loc11_;
               _loc9_.TextField_CountryCode.text = _loc12_;
               _loc9_.TextField_Points.text = _loc10_.score;
               if(_loc3_)
               {
                  _loc9_.TextField_Rank.textColor = §,N§;
                  _loc9_.TextField_Name.textColor = §,N§;
                  _loc9_.TextField_Points.textColor = §,N§;
                  _loc9_.TextField_CountryCode.textColor = §,N§;
                  this.§"!d§ = _loc9_;
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
      
      private function §>"-§(param1:String) : String
      {
         if(!this.§7e§)
         {
            param1 = param1.slice(0,param1.length - 2);
         }
         return param1;
      }
      
      private function §,2§(param1:String) : String
      {
         var _loc2_:String = "";
         if(!this.§7e§ && param1.charAt(param1.length - 2) != "X")
         {
            _loc2_ = param1.slice(param1.length - 2,param1.length);
         }
         return _loc2_;
      }
      
      public function §+!i§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§2z§)
         {
            if(_loc3_ == param1)
            {
               this.§'"5§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §!r§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§7=§ = null;
         for each(_loc4_ in this.§[,§)
         {
            if(_loc4_.levelId == param1 && _loc4_.§ m§ == this.§7e§)
            {
               if(_loc4_.§@!H§(param2) == false)
               {
                  if(param3)
                  {
                     this.§?@§(false);
                     this.§;"#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§,"%§(_loc4_.§1-§,_loc4_.§6e§);
                     this.§@D§();
                     this.§`!J§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§?@§(false);
                  this.§;"#§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§;"#§.setObjectToFront(this.§;"#§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§7y§.§7T§,this.§&;§);
                  break;
               }
            }
         }
      }
      
      public function §!!"§() : void
      {
         var _loc1_:§7=§ = null;
         for each(_loc1_ in this.§[,§)
         {
            _loc1_.§=!U§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§%n§ = null;
         this.§?@§(false);
         if(this.§;"#§)
         {
            _loc1_ = this.§;"#§.getItemByName("HighscoreSidebar") as §%n§;
            this.§;"#§.clear();
            this.§;"#§ = null;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§'"5§;
      }
      
      public function §`W§() : void
      {
         this.§!r§(HighscoreSidebar.§2z§[this.currentPage]);
      }
      
      public function set container(param1:§%n§) : void
      {
         this.§;"#§ = param1;
      }
      
      public function get container() : §%n§
      {
         return this.§;"#§;
      }
      
      public function get §>!d§() : String
      {
         return this.§,!=§;
      }
      
      public function get §^!t§() : String
      {
         return this.§@?§;
      }
      
      public function set §>!d§(param1:String) : void
      {
         this.§,!=§ = param1;
      }
      
      public function §&!<§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §]>§ * _loc3_;
         return HighscoreSidebar.§#!1§[int(_loc5_) - 1];
      }
      
      private function §^!5§() : void
      {
         if(§^!7§.§>!8§.§do §)
         {
            this.§ j§();
            this.§;"#§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§+!"§();
         }
      }
      
      private function §+!"§() : void
      {
         this.§;"#§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §<!1§() : Boolean
      {
         return this.§4I§;
      }
      
      public function get §;c§() : Boolean
      {
         return this.§!b§;
      }
      
      public function §+E§() : Boolean
      {
         return this.§?]§;
      }
      
      private function § j§() : void
      {
         var _loc1_:String = null;
         if(§^!7§.§>!8§.name)
         {
            _loc1_ = §^!7§.§>!8§.name + ":  " + this.§4,§;
            (this.§;"#§.getItemByName("TextField_MyScoreName") as §&0§).§"S§.text = _loc1_;
         }
      }
   }
}
