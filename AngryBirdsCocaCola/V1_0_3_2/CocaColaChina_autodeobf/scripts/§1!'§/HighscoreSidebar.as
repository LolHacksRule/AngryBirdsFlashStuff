package §1!'§
{
   import §!!L§.§&!R§;
   import §'b§.§'^§;
   import §'b§.§1!6§;
   import §'b§.§6!-§;
   import §-!9§.§3!5§;
   import §6l§.§#!Z§;
   import §>!8§.§4!0§;
   import §`!7§.§[5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §1!6§
   {
      
      public static const §3!2§:String = "StateHighScores";
      
      public static const §-!G§:String = "StateBeats";
      
      public static const §%A§:String = "StateDisableHighScores";
      
      public static const §7!I§:String = "TopBeatCollectors";
      
      public static const §%w§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10");
      
      public static const §9!a§:int = 10;
      
      public static const §[x§:int = 5;
      
      public static const §]T§:uint = 16711680;
       
      
      private var §,!0§:String = "StateBeats";
      
      private var §=^§:Array;
      
      private var §=I§:int = 0;
      
      private var §'>§:String;
      
      private var §#e§:Array;
      
      private var §3=§:§'^§;
      
      private var §"!,§:MovieClip = null;
      
      private var §&r§:Number = 0;
      
      private var §%G§:int = 0;
      
      private var §9o§:Boolean = false;
      
      private var §2L§:Array;
      
      public function HighscoreSidebar()
      {
         this.§2L§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§ !J§ = null;
         this.§=^§ = [];
         this.§=I§ = 0;
         this.§'>§ = "";
         for each(_loc1_ in §%w§)
         {
            _loc2_ = new § !J§(_loc1_);
            this.§=^§.push(_loc2_);
         }
         _loc2_ = new § !J§(HighscoreSidebar.§7!I§);
         this.§=^§.push(_loc2_);
         this.§'>§ = §7!I§;
         this.§"!,§ = null;
         this.§&r§ = 0;
         this.§%G§ = 0;
         this.§9o§ = false;
      }
      
      public function §"m§(param1:XML, param2:§'^§, param3:§4!0§, param4:§&!R§, param5:MovieClip = null) : void
      {
         this.§3=§ = new §'^§(param1,param2,param3,param5);
         this.changeState(this.§,!0§);
         this.§-L§(false);
         this.§-!<§();
         this.§2L§ = this.§3=§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §-L§(param1:Boolean) : void
      {
         this.§3=§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      private function §-!<§() : void
      {
         this.§3=§.getItemByName("MovieClip_Community_Counter").setVisibility(!§=i§.§2S§.§@!#§);
         this.§3=§.getItemByName("MovieClip_Community_Counter_Achieved").setVisibility(§=i§.§2S§.§@!#§);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§3=§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§3=§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§3=§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§3=§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§3=§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§3=§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§3=§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§3=§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§3=§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§3=§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§3=§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§3=§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : § !J§
      {
         var _loc2_:§ !J§ = null;
         for each(_loc2_ in this.§=^§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         var _loc4_:§ !J§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§%w§[this.§3q§(this.§=I§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§%w§[this.§7!6§(this.§=I§)]);
               break;
            case "UP":
               if(this.§,!0§ == §-!G§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§7!I§)) != null)
                  {
                     _loc4_.§26§();
                     this.§1-§(HighscoreSidebar.§7!I§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§'>§)) != null)
               {
                  _loc4_.§26§();
                  this.§1-§(this.§'>§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§,!0§ == §-!G§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§7!I§))
                  {
                     _loc4_.§0#§();
                     this.§1-§(HighscoreSidebar.§7!I§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§'>§))
               {
                  _loc4_.§0#§();
                  this.§1-§(this.§'>§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§-!G§);
               this.loadScoreTable(HighscoreSidebar.§7!I§);
               break;
            case "TAB_SCORES":
               this.changeState(§3!2§);
               this.loadScoreTable(HighscoreSidebar.§%w§[this.§=I§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §3!2§:
               (this.§3=§.getItemByName("TextField_Level_Num") as §6!-§).§`!C§.text = "";
               this.§3=§.setObjectToFront(this.§3=§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§3=§.setObjectToFront(this.§3=§.getItemByName("Container_Highscores"));
               this.§3=§.setObjectToFront(this.§3=§.getItemByName("Container_Sidebar_Buttons"));
               this.§3=§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(false);
               this.§3=§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(true);
               this.§3=§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§3=§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.loadScoreTable(this.§'>§,param2);
               break;
            case §-!G§:
               (this.§3=§.getItemByName("TextField_Level_Num") as §6!-§).§`!C§.text = "";
               this.§3=§.setObjectToFront(this.§3=§.getItemByName("Container_SideBar_Tab_Beats"));
               this.§3=§.setObjectToFront(this.§3=§.getItemByName("Container_Highscores"));
               this.§3=§.setObjectToFront(this.§3=§.getItemByName("Container_SideBar_Buttons"));
               this.§3=§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(true);
               this.§3=§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(false);
               this.§3=§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§3=§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.loadScoreTable(HighscoreSidebar.§7!I§,param2);
               break;
            case §%A§:
               this.changeState(§-!G§);
               this.enableHighScoreTab(false);
         }
         this.§,!0§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3=§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§3=§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§3=§.getItemByName("Button_Tab_Beat").setEnabled(true);
         }
         else
         {
            this.§3=§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§3=§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§3=§.getItemByName("Button_Tab_Beat").setEnabled(false);
         }
      }
      
      private function §3q§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§%w§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §7!6§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§%w§.length - 1;
         }
         return param1;
      }
      
      public function §!!4§(param1:§ !J§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §[5§.§0c§)
         {
            _loc4_ = param1.§+f§;
            do
            {
               _loc3_++;
               param1.§0#§();
               _loc5_ = param1.§%v§;
               _loc6_ = 0;
               while(_loc6_ < §9!a§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §9!a§;
                  if((_loc8_ = _loc4_[_loc7_]) && §[5§.§0c§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §[x§)
                  {
                     _loc2_ = true;
                     param1.§26§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §1-§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §%w§)
         {
            if(_loc3_ == param1)
            {
               this.§'>§ = param1;
               this.§9!=§(param1);
               (this.§3=§.getItemByName("TextField_MyScoreNumber") as §6!-§).§`!C§.text = "" + §=i§.§2S§.§=f§(param1);
               break;
            }
         }
         if(param1 == §7!I§)
         {
            (this.§3=§.getItemByName("TextField_MyScoreNumber") as §6!-§).§`!C§.text = "" + §=i§.§2S§.§!!Q§();
         }
         if(this.§3=§)
         {
            _loc5_ = this.§3=§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§ !J§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§`k§)
         {
            if(_loc4_.§+f§)
            {
               if(param2)
               {
                  this.§!!4§(_loc4_);
               }
               this.§[!B§(_loc4_.§+f§,_loc4_.§%v§);
               this.§<!=§();
               this.§-L§(true);
               this.§3=§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§3=§.setObjectToFront(this.§3=§.getItemByName("Container_Highscores"));
               if(param1 != HighscoreSidebar.§7!I§)
               {
                  (this.§3=§.getItemByName("TextField_Level_Num") as §6!-§).§`!C§.text = "" + param1.substring(2);
               }
            }
         }
         else
         {
            _loc4_.addEventListener(§#! §.§>l§,this.§<1§);
         }
      }
      
      private function §<1§(param1:Event) : void
      {
         var _loc2_:§ !J§ = param1.currentTarget as § !J§;
         _loc2_.removeEventListener(§#! §.§>l§,this.§<1§);
         this.§'>§ = _loc2_.levelId;
         if(this.§'>§ != HighscoreSidebar.§7!I§)
         {
            (this.§3=§.getItemByName("TextField_Level_Num") as §6!-§).§`!C§.text = "" + this.§'>§.substring(2);
         }
         this.§!!4§(_loc2_);
         this.§[!B§(_loc2_.§+f§,_loc2_.§%v§);
         this.§<!=§();
         this.§1!1§();
         this.§-L§(true);
         this.§3=§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§3=§.setObjectToFront(this.§3=§.getItemByName("Container_Highscores"));
         this.§1-§(this.§'>§);
      }
      
      private function §<!=§() : void
      {
         var _loc1_:String = null;
         if(this.§,!0§ == §3!2§)
         {
            for each(_loc1_ in §%w§)
            {
               if(_loc1_ == this.§'>§)
               {
                  this.§'>§ = this.§'>§;
                  this.§9!=§(this.§'>§);
                  (this.§3=§.getItemByName("TextField_MyScoreNumber") as §6!-§).§`!C§.text = "" + §=i§.§2S§.§=f§(this.§'>§);
                  break;
               }
            }
         }
         else
         {
            (this.§3=§.getItemByName("TextField_MyScoreNumber") as §6!-§).§`!C§.text = "" + §=i§.§2S§.§'u§;
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§@E§(param1);
      }
      
      private function §1!1§(param1:Boolean = true) : void
      {
         this.§%G§ = 0;
         this.§9o§ = param1;
         this.§&r§ = 0;
      }
      
      private function §@E§(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§3=§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§3=§.getItemByName("MovieClip_SideBar_MyBeats").mClip;
         var _loc4_:MovieClip = this.§3=§.getItemByName("MovieClip_SideBar_MyScore").mClip;
         if(this.§9o§)
         {
            if(this.§"!,§)
            {
               this.§"!,§.filters = [new GlowFilter(16777215,1,32,8,this.§&r§,5,false,false)];
            }
            if(int((this.§3=§.getItemByName("TextField_MyScoreNumber") as §6!-§).§`!C§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§&r§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§&r§,3,false,false)];
               _loc4_.filters = [new GlowFilter(16777215,0.5,16,4,this.§&r§,3,false,false)];
            }
            if(this.§%G§ > 3)
            {
               this.§&r§ = 0;
               this.§%G§ = 0;
               this.§"!,§ = null;
               this.§9o§ = false;
            }
            if(this.§%G§ % 2 == 0)
            {
               this.§&r§ += param1 / 200;
               if(this.§&r§ > 5.5)
               {
                  this.§&r§ = 5.5;
                  ++this.§%G§;
               }
            }
            else
            {
               this.§&r§ -= param1 / 200;
               if(this.§&r§ < 0)
               {
                  this.§&r§ = 0;
                  ++this.§%G§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§2L§;
            _loc3_.filters = this.§2L§;
            _loc4_.filters = this.§2L§;
            if(this.§"!,§)
            {
               this.§"!,§.filters = this.§2L§;
            }
         }
      }
      
      public function renderCollectedBeats() : void
      {
         (this.§3=§.getItemByName("TextField_Collected_Beats") as §6!-§).§`!C§.text = "" + §=i§.§2S§.§@c§;
      }
      
      private function §[!B§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         var _loc3_:Boolean = false;
         this.§#e§ = param1;
         if(!this.§3=§)
         {
            return;
         }
         var _loc4_:Class = §3!5§.§9g§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§3=§.getItemByName("Highscore_Holder").mClip;
         this.renderCollectedBeats();
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§"!,§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §9!a§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §9!a§;
            _loc9_ = param1[_loc8_];
            (_loc10_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
            if(_loc9_)
            {
               if(§[5§.§0c§ && _loc9_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc10_.TextField_Name.text = _loc9_.nickName;
               _loc10_.TextField_Points.text = _loc9_.score;
               if(_loc3_)
               {
                  _loc10_.TextField_Rank.textColor = §]T§;
                  _loc10_.TextField_Name.textColor = §]T§;
                  _loc10_.TextField_Points.textColor = §]T§;
                  this.§"!,§ = _loc10_;
               }
            }
            else
            {
               _loc10_.TextField_Name.text = "";
               _loc10_.TextField_Points.text = "0";
            }
            _loc10_.y = _loc6_;
            _loc6_ += 19;
            _loc5_.addChild(_loc10_);
            _loc7_++;
         }
      }
      
      public function §9!=§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§%w§)
         {
            if(_loc3_ == param1)
            {
               this.§=I§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§ !J§ = null;
         for each(_loc4_ in this.§=^§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§super§(param2) == false)
               {
                  if(param3)
                  {
                     this.§-L§(false);
                     this.§3=§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§3=§.setObjectToFront(this.§3=§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§[!B§(_loc4_.§+f§,_loc4_.§%v§);
                     this.§<!=§();
                     this.§1-§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§-L§(false);
                  this.§3=§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§3=§.setObjectToFront(this.§3=§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§#! §.§>l§,this.§<1§);
                  break;
               }
            }
         }
      }
      
      public function clearReloadTimers() : void
      {
         var _loc1_:§ !J§ = null;
         for each(_loc1_ in this.§=^§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§'^§ = null;
         this.§-L§(false);
         if(this.§3=§)
         {
            _loc1_ = this.§3=§.getItemByName("HighscoreSidebar") as §'^§;
            this.§3=§.clear();
            this.§3=§ = null;
         }
      }
      
      public function get §`=§() : int
      {
         return this.§=I§;
      }
      
      public function set container(param1:§'^§) : void
      {
         this.§3=§ = param1;
      }
      
      public function get container() : §'^§
      {
         return this.§3=§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§'>§;
      }
      
      public function get currentState() : String
      {
         return this.§,!0§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§'>§ = param1;
      }
   }
}
