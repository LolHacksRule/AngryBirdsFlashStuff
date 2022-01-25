package §32§
{
   import §'P§.§5!_§;
   import §'P§.§;!P§;
   import §'P§.§`;§;
   import §6!@§.§ !!§;
   import §7]§.§;T§;
   import §="§.§@5§;
   import §>9§.§9!V§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §;!P§
   {
      
      public static const §&!@§:String = "StateHighScores";
      
      public static const §!!;§:String = "StateBeats";
      
      public static const §+,§:String = "StateDisableHighScores";
      
      public static const §@!=§:String = "TopBeatCollectors";
      
      public static const §!^§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10");
      
      public static const §?!%§:int = 10;
      
      public static const §=Y§:int = 5;
      
      public static const §5>§:uint = 16711680;
       
      
      private var §import§:String = "StateBeats";
      
      private var §0!b§:Array;
      
      private var §#c§:int = 0;
      
      private var §"!&§:String;
      
      private var §,0§:Array;
      
      private var §,L§:§`;§;
      
      private var §?;§:MovieClip = null;
      
      private var §>!J§:Number = 0;
      
      private var §1!R§:int = 0;
      
      private var §in §:Boolean = false;
      
      private var §+!V§:Array;
      
      public function HighscoreSidebar()
      {
         this.§+!V§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§-!&§ = null;
         this.§0!b§ = [];
         this.§#c§ = 0;
         this.§"!&§ = "";
         for each(_loc1_ in §!^§)
         {
            _loc2_ = new §-!&§(_loc1_);
            this.§0!b§.push(_loc2_);
         }
         _loc2_ = new §-!&§(HighscoreSidebar.§@!=§);
         this.§0!b§.push(_loc2_);
         this.§"!&§ = §@!=§;
         this.§?;§ = null;
         this.§>!J§ = 0;
         this.§1!R§ = 0;
         this.§in § = false;
      }
      
      public function §3+§(param1:XML, param2:§`;§, param3:§^R§, param4:§ !!§, param5:MovieClip = null) : void
      {
         this.§,L§ = new §`;§(param1,param2,param3,param5);
         this.changeState(this.§import§);
         this.§1x§(false);
         this.§0!-§();
         this.§+!V§ = this.§,L§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §1x§(param1:Boolean) : void
      {
         this.§,L§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      private function §0!-§() : void
      {
         this.§,L§.getItemByName("MovieClip_Community_Counter").setVisibility(!§"!@§.§-5§.§[!Q§);
         this.§,L§.getItemByName("MovieClip_Community_Counter_Achieved").setVisibility(§"!@§.§-5§.§[!Q§);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§,L§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§,L§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§,L§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§,L§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§,L§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§,L§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§,L§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§,L§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§,L§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§,L§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§,L§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§,L§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §-!&§
      {
         var _loc2_:§-!&§ = null;
         for each(_loc2_ in this.§0!b§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         var _loc4_:§-!&§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§!^§[this.§5!B§(this.§#c§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§!^§[this.§4§(this.§#c§)]);
               break;
            case "UP":
               if(this.§import§ == §!!;§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§@!=§)) != null)
                  {
                     _loc4_.§=8§();
                     this.§;K§(HighscoreSidebar.§@!=§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§"!&§)) != null)
               {
                  _loc4_.§=8§();
                  this.§;K§(this.§"!&§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§import§ == §!!;§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§@!=§))
                  {
                     _loc4_.§3!E§();
                     this.§;K§(HighscoreSidebar.§@!=§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§"!&§))
               {
                  _loc4_.§3!E§();
                  this.§;K§(this.§"!&§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§!!;§);
               this.loadScoreTable(HighscoreSidebar.§@!=§);
               break;
            case "TAB_SCORES":
               this.changeState(§&!@§);
               this.loadScoreTable(HighscoreSidebar.§!^§[this.§#c§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §&!@§:
               (this.§,L§.getItemByName("TextField_Level_Num") as §5!_§).§5r§.text = "";
               this.§,L§.setObjectToFront(this.§,L§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§,L§.setObjectToFront(this.§,L§.getItemByName("Container_Highscores"));
               this.§,L§.setObjectToFront(this.§,L§.getItemByName("Container_Sidebar_Buttons"));
               this.§,L§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(false);
               this.§,L§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(true);
               this.§,L§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§,L§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.loadScoreTable(this.§"!&§,param2);
               break;
            case §!!;§:
               (this.§,L§.getItemByName("TextField_Level_Num") as §5!_§).§5r§.text = "";
               this.§,L§.setObjectToFront(this.§,L§.getItemByName("Container_SideBar_Tab_Beats"));
               this.§,L§.setObjectToFront(this.§,L§.getItemByName("Container_Highscores"));
               this.§,L§.setObjectToFront(this.§,L§.getItemByName("Container_SideBar_Buttons"));
               this.§,L§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(true);
               this.§,L§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(false);
               this.§,L§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§,L§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.loadScoreTable(HighscoreSidebar.§@!=§,param2);
               break;
            case §+,§:
               this.changeState(§!!;§);
               this.enableHighScoreTab(false);
         }
         this.§import§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,L§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§,L§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§,L§.getItemByName("Button_Tab_Beat").setEnabled(true);
         }
         else
         {
            this.§,L§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§,L§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§,L§.getItemByName("Button_Tab_Beat").setEnabled(false);
         }
      }
      
      private function §5!B§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§!^§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §4§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§!^§.length - 1;
         }
         return param1;
      }
      
      public function §%0§(param1:§-!&§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §9!V§.§%!§)
         {
            _loc4_ = param1.§&q§;
            do
            {
               _loc3_++;
               param1.§3!E§();
               _loc5_ = param1.§]x§;
               _loc6_ = 0;
               while(_loc6_ < §?!%§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §?!%§;
                  if((_loc8_ = _loc4_[_loc7_]) && §9!V§.§%!§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §=Y§)
                  {
                     _loc2_ = true;
                     param1.§=8§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §;K§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §!^§)
         {
            if(_loc3_ == param1)
            {
               this.§"!&§ = param1;
               this.§=Z§(param1);
               (this.§,L§.getItemByName("TextField_MyScoreNumber") as §5!_§).§5r§.text = "" + §"!@§.§-5§.§@!L§(param1);
               break;
            }
         }
         if(param1 == §@!=§)
         {
            (this.§,L§.getItemByName("TextField_MyScoreNumber") as §5!_§).§5r§.text = "" + §"!@§.§-5§.§3u§();
         }
         if(this.§,L§)
         {
            _loc5_ = this.§,L§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§-!&§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§4!Y§)
         {
            if(_loc4_.§&q§)
            {
               if(param2)
               {
                  this.§%0§(_loc4_);
               }
               this.§[!4§(_loc4_.§&q§,_loc4_.§]x§);
               this.§"!`§();
               this.§1x§(true);
               this.§,L§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§,L§.setObjectToFront(this.§,L§.getItemByName("Container_Highscores"));
               if(param1 != HighscoreSidebar.§@!=§)
               {
                  (this.§,L§.getItemByName("TextField_Level_Num") as §5!_§).§5r§.text = "" + param1.substring(2);
               }
            }
         }
         else
         {
            _loc4_.addEventListener(§'!Z§.§'B§,this.§,!-§);
         }
      }
      
      private function §,!-§(param1:Event) : void
      {
         var _loc2_:§-!&§ = param1.currentTarget as §-!&§;
         _loc2_.removeEventListener(§'!Z§.§'B§,this.§,!-§);
         this.§"!&§ = _loc2_.levelId;
         if(this.§"!&§ != HighscoreSidebar.§@!=§)
         {
            (this.§,L§.getItemByName("TextField_Level_Num") as §5!_§).§5r§.text = "" + this.§"!&§.substring(2);
         }
         this.§%0§(_loc2_);
         this.§[!4§(_loc2_.§&q§,_loc2_.§]x§);
         this.§"!`§();
         this.§^@§();
         this.§1x§(true);
         this.§,L§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§,L§.setObjectToFront(this.§,L§.getItemByName("Container_Highscores"));
         this.§;K§(this.§"!&§);
      }
      
      private function §"!`§() : void
      {
         var _loc1_:String = null;
         if(this.§import§ == §&!@§)
         {
            for each(_loc1_ in §!^§)
            {
               if(_loc1_ == this.§"!&§)
               {
                  this.§"!&§ = this.§"!&§;
                  this.§=Z§(this.§"!&§);
                  (this.§,L§.getItemByName("TextField_MyScoreNumber") as §5!_§).§5r§.text = "" + §"!@§.§-5§.§@!L§(this.§"!&§);
                  break;
               }
            }
         }
         else
         {
            (this.§,L§.getItemByName("TextField_MyScoreNumber") as §5!_§).§5r§.text = "" + §"!@§.§-5§.§3S§;
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§`<§(param1);
      }
      
      private function §^@§(param1:Boolean = true) : void
      {
         this.§1!R§ = 0;
         this.§in § = param1;
         this.§>!J§ = 0;
      }
      
      private function §`<§(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§,L§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§,L§.getItemByName("MovieClip_SideBar_MyBeats").mClip;
         var _loc4_:MovieClip = this.§,L§.getItemByName("MovieClip_SideBar_MyScore").mClip;
         if(this.§in §)
         {
            if(this.§?;§)
            {
               this.§?;§.filters = [new GlowFilter(16777215,1,32,8,this.§>!J§,5,false,false)];
            }
            if(int((this.§,L§.getItemByName("TextField_MyScoreNumber") as §5!_§).§5r§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§>!J§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§>!J§,3,false,false)];
               _loc4_.filters = [new GlowFilter(16777215,0.5,16,4,this.§>!J§,3,false,false)];
            }
            if(this.§1!R§ > 3)
            {
               this.§>!J§ = 0;
               this.§1!R§ = 0;
               this.§?;§ = null;
               this.§in § = false;
            }
            if(this.§1!R§ % 2 == 0)
            {
               this.§>!J§ += param1 / 200;
               if(this.§>!J§ > 5.5)
               {
                  this.§>!J§ = 5.5;
                  ++this.§1!R§;
               }
            }
            else
            {
               this.§>!J§ -= param1 / 200;
               if(this.§>!J§ < 0)
               {
                  this.§>!J§ = 0;
                  ++this.§1!R§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§+!V§;
            _loc3_.filters = this.§+!V§;
            _loc4_.filters = this.§+!V§;
            if(this.§?;§)
            {
               this.§?;§.filters = this.§+!V§;
            }
         }
      }
      
      public function renderCollectedBeats() : void
      {
         (this.§,L§.getItemByName("TextField_Collected_Beats") as §5!_§).§5r§.text = "" + §"!@§.§-5§.§"s§;
      }
      
      private function §[!4§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         var _loc3_:Boolean = false;
         this.§,0§ = param1;
         if(!this.§,L§)
         {
            return;
         }
         var _loc4_:Class = §@5§.§>! §("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§,L§.getItemByName("Highscore_Holder").mClip;
         this.renderCollectedBeats();
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§?;§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §?!%§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §?!%§;
            _loc9_ = param1[_loc8_];
            (_loc10_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
            if(_loc9_)
            {
               if(§9!V§.§%!§ && _loc9_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = §5>§;
                  _loc10_.TextField_Name.textColor = §5>§;
                  _loc10_.TextField_Points.textColor = §5>§;
                  this.§?;§ = _loc10_;
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
      
      public function §=Z§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§!^§)
         {
            if(_loc3_ == param1)
            {
               this.§#c§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§-!&§ = null;
         for each(_loc4_ in this.§0!b§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§5E§(param2) == false)
               {
                  if(param3)
                  {
                     this.§1x§(false);
                     this.§,L§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§,L§.setObjectToFront(this.§,L§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§[!4§(_loc4_.§&q§,_loc4_.§]x§);
                     this.§"!`§();
                     this.§;K§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§1x§(false);
                  this.§,L§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§,L§.setObjectToFront(this.§,L§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§'!Z§.§'B§,this.§,!-§);
                  break;
               }
            }
         }
      }
      
      public function clearReloadTimers() : void
      {
         var _loc1_:§-!&§ = null;
         for each(_loc1_ in this.§0!b§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§`;§ = null;
         this.§1x§(false);
         if(this.§,L§)
         {
            _loc1_ = this.§,L§.getItemByName("HighscoreSidebar") as §`;§;
            this.§,L§.clear();
            this.§,L§ = null;
         }
      }
      
      public function get §[G§() : int
      {
         return this.§#c§;
      }
      
      public function set container(param1:§`;§) : void
      {
         this.§,L§ = param1;
      }
      
      public function get container() : §`;§
      {
         return this.§,L§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§"!&§;
      }
      
      public function get currentState() : String
      {
         return this.§import§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§"!&§ = param1;
      }
   }
}
