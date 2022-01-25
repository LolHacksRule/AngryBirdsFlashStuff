package §+!6§
{
   import § !K§.§'h§;
   import §%!c§.§@2§;
   import §%3§.§7b§;
   import §7!H§.§12§;
   import §8!<§.§ !L§;
   import §8!<§.§#u§;
   import §8!<§.§2W§;
   import §@W§.§2!_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements § !L§
   {
      
      public static const §'B§:String = "StateHighScores";
      
      public static const §#P§:String = "StateBeats";
      
      public static const §=!"§:String = "StateDisableHighScores";
      
      public static const §`!0§:String = "TopBeatCollectors";
      
      public static const §1u§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10");
      
      public static const §0z§:int = 10;
      
      public static const §,1§:int = 5;
      
      public static const §<!H§:uint = 16711680;
       
      
      private var §3#§:String = "StateBeats";
      
      private var §-6§:Array;
      
      private var §=!-§:int = 0;
      
      private var §`B§:String;
      
      private var §,v§:Array;
      
      private var §&!'§:§2W§;
      
      private var §3!§:MovieClip = null;
      
      private var §]!P§:Number = 0;
      
      private var §1!Y§:int = 0;
      
      private var § !_§:Boolean = false;
      
      private var §1!X§:Array;
      
      public function HighscoreSidebar()
      {
         this.§1!X§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§^+§ = null;
         this.§-6§ = [];
         this.§=!-§ = 0;
         this.§`B§ = "";
         for each(_loc1_ in §1u§)
         {
            _loc2_ = new §^+§(_loc1_);
            this.§-6§.push(_loc2_);
         }
         _loc2_ = new §^+§(HighscoreSidebar.§`!0§);
         this.§-6§.push(_loc2_);
         this.§`B§ = §`!0§;
         this.§3!§ = null;
         this.§]!P§ = 0;
         this.§1!Y§ = 0;
         this.§ !_§ = false;
      }
      
      public function §`!6§(param1:XML, param2:§2W§, param3:§7b§, param4:§2!_§, param5:MovieClip = null) : void
      {
         this.§&!'§ = new §2W§(param1,param2,param3,param5);
         this.changeState(this.§3#§);
         this.§%z§(false);
         this.§?!D§();
         this.§1!X§ = this.§&!'§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §%z§(param1:Boolean) : void
      {
         this.§&!'§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      private function §?!D§() : void
      {
         this.§&!'§.getItemByName("MovieClip_Community_Counter").setVisibility(!§6T§.§>c§.§2!K§);
         this.§&!'§.getItemByName("MovieClip_Community_Counter_Achieved").setVisibility(§6T§.§>c§.§2!K§);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§&!'§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§&!'§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§&!'§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§&!'§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§&!'§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§&!'§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§&!'§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§&!'§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§&!'§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§&!'§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§&!'§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§&!'§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §^+§
      {
         var _loc2_:§^+§ = null;
         for each(_loc2_ in this.§-6§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         var _loc4_:§^+§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§1u§[this.§%w§(this.§=!-§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§1u§[this.§>b§(this.§=!-§)]);
               break;
            case "UP":
               if(this.§3#§ == §#P§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§`!0§)) != null)
                  {
                     _loc4_.§'!L§();
                     this.§8Q§(HighscoreSidebar.§`!0§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§`B§)) != null)
               {
                  _loc4_.§'!L§();
                  this.§8Q§(this.§`B§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§3#§ == §#P§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§`!0§))
                  {
                     _loc4_.§%!+§();
                     this.§8Q§(HighscoreSidebar.§`!0§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§`B§))
               {
                  _loc4_.§%!+§();
                  this.§8Q§(this.§`B§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§#P§);
               this.loadScoreTable(HighscoreSidebar.§`!0§);
               break;
            case "TAB_SCORES":
               this.changeState(§'B§);
               this.loadScoreTable(HighscoreSidebar.§1u§[this.§=!-§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §'B§:
               (this.§&!'§.getItemByName("TextField_Level_Num") as §#u§).§=J§.text = "";
               this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("Container_Highscores"));
               this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("Container_Sidebar_Buttons"));
               this.§&!'§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(false);
               this.§&!'§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(true);
               this.§&!'§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§&!'§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.loadScoreTable(this.§`B§,param2);
               break;
            case §#P§:
               (this.§&!'§.getItemByName("TextField_Level_Num") as §#u§).§=J§.text = "";
               this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("Container_SideBar_Tab_Beats"));
               this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("Container_Highscores"));
               this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("Container_SideBar_Buttons"));
               this.§&!'§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(true);
               this.§&!'§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(false);
               this.§&!'§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§&!'§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.loadScoreTable(HighscoreSidebar.§`!0§,param2);
               break;
            case §=!"§:
               this.changeState(§#P§);
               this.enableHighScoreTab(false);
         }
         this.§3#§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!'§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§&!'§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§&!'§.getItemByName("Button_Tab_Beat").setEnabled(true);
         }
         else
         {
            this.§&!'§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§&!'§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§&!'§.getItemByName("Button_Tab_Beat").setEnabled(false);
         }
      }
      
      private function §%w§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§1u§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §>b§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§1u§.length - 1;
         }
         return param1;
      }
      
      public function §9P§(param1:§^+§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §@2§.§=!'§)
         {
            _loc4_ = param1.§?!%§;
            do
            {
               _loc3_++;
               param1.§%!+§();
               _loc5_ = param1.§1h§;
               _loc6_ = 0;
               while(_loc6_ < §0z§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §0z§;
                  if((_loc8_ = _loc4_[_loc7_]) && §@2§.§=!'§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §,1§)
                  {
                     _loc2_ = true;
                     param1.§'!L§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §8Q§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §1u§)
         {
            if(_loc3_ == param1)
            {
               this.§`B§ = param1;
               this.§+!@§(param1);
               (this.§&!'§.getItemByName("TextField_MyScoreNumber") as §#u§).§=J§.text = "" + §6T§.§>c§.§[!Q§(param1);
               break;
            }
         }
         if(param1 == §`!0§)
         {
            (this.§&!'§.getItemByName("TextField_MyScoreNumber") as §#u§).§=J§.text = "" + §6T§.§>c§.§^!b§();
         }
         if(this.§&!'§)
         {
            _loc5_ = this.§&!'§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§^+§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§=!Y§)
         {
            if(_loc4_.§?!%§)
            {
               if(param2)
               {
                  this.§9P§(_loc4_);
               }
               this.§78§(_loc4_.§?!%§,_loc4_.§1h§);
               this.§@Y§();
               this.§%z§(true);
               this.§&!'§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("Container_Highscores"));
               if(param1 != HighscoreSidebar.§`!0§)
               {
                  (this.§&!'§.getItemByName("TextField_Level_Num") as §#u§).§=J§.text = "" + param1.substring(2);
               }
            }
         }
         else
         {
            _loc4_.addEventListener(§0!4§.§7_§,this.§0]§);
         }
      }
      
      private function §0]§(param1:Event) : void
      {
         var _loc2_:§^+§ = param1.currentTarget as §^+§;
         _loc2_.removeEventListener(§0!4§.§7_§,this.§0]§);
         this.§`B§ = _loc2_.levelId;
         if(this.§`B§ != HighscoreSidebar.§`!0§)
         {
            (this.§&!'§.getItemByName("TextField_Level_Num") as §#u§).§=J§.text = "" + this.§`B§.substring(2);
         }
         this.§9P§(_loc2_);
         this.§78§(_loc2_.§?!%§,_loc2_.§1h§);
         this.§@Y§();
         this.§79§();
         this.§%z§(true);
         this.§&!'§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("Container_Highscores"));
         this.§8Q§(this.§`B§);
      }
      
      private function §@Y§() : void
      {
         var _loc1_:String = null;
         if(this.§3#§ == §'B§)
         {
            for each(_loc1_ in §1u§)
            {
               if(_loc1_ == this.§`B§)
               {
                  this.§`B§ = this.§`B§;
                  this.§+!@§(this.§`B§);
                  (this.§&!'§.getItemByName("TextField_MyScoreNumber") as §#u§).§=J§.text = "" + §6T§.§>c§.§[!Q§(this.§`B§);
                  break;
               }
            }
         }
         else
         {
            (this.§&!'§.getItemByName("TextField_MyScoreNumber") as §#u§).§=J§.text = "" + §6T§.§>c§.§4!5§;
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§,N§(param1);
      }
      
      private function §79§(param1:Boolean = true) : void
      {
         this.§1!Y§ = 0;
         this.§ !_§ = param1;
         this.§]!P§ = 0;
      }
      
      private function §,N§(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§&!'§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§&!'§.getItemByName("MovieClip_SideBar_MyBeats").mClip;
         var _loc4_:MovieClip = this.§&!'§.getItemByName("MovieClip_SideBar_MyScore").mClip;
         if(this.§ !_§)
         {
            if(this.§3!§)
            {
               this.§3!§.filters = [new GlowFilter(16777215,1,32,8,this.§]!P§,5,false,false)];
            }
            if(int((this.§&!'§.getItemByName("TextField_MyScoreNumber") as §#u§).§=J§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§]!P§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§]!P§,3,false,false)];
               _loc4_.filters = [new GlowFilter(16777215,0.5,16,4,this.§]!P§,3,false,false)];
            }
            if(this.§1!Y§ > 3)
            {
               this.§]!P§ = 0;
               this.§1!Y§ = 0;
               this.§3!§ = null;
               this.§ !_§ = false;
            }
            if(this.§1!Y§ % 2 == 0)
            {
               this.§]!P§ += param1 / 200;
               if(this.§]!P§ > 5.5)
               {
                  this.§]!P§ = 5.5;
                  ++this.§1!Y§;
               }
            }
            else
            {
               this.§]!P§ -= param1 / 200;
               if(this.§]!P§ < 0)
               {
                  this.§]!P§ = 0;
                  ++this.§1!Y§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§1!X§;
            _loc3_.filters = this.§1!X§;
            _loc4_.filters = this.§1!X§;
            if(this.§3!§)
            {
               this.§3!§.filters = this.§1!X§;
            }
         }
      }
      
      public function renderCollectedBeats() : void
      {
         (this.§&!'§.getItemByName("TextField_Collected_Beats") as §#u§).§=J§.text = "" + §6T§.§>c§.§,j§;
      }
      
      private function §78§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         var _loc3_:Boolean = false;
         this.§,v§ = param1;
         if(!this.§&!'§)
         {
            return;
         }
         var _loc4_:Class = §'h§.§`E§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§&!'§.getItemByName("Highscore_Holder").mClip;
         this.renderCollectedBeats();
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§3!§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §0z§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §0z§;
            _loc9_ = param1[_loc8_];
            (_loc10_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
            if(_loc9_)
            {
               if(§@2§.§=!'§ && _loc9_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = §<!H§;
                  _loc10_.TextField_Name.textColor = §<!H§;
                  _loc10_.TextField_Points.textColor = §<!H§;
                  this.§3!§ = _loc10_;
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
      
      public function §+!@§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§1u§)
         {
            if(_loc3_ == param1)
            {
               this.§=!-§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§^+§ = null;
         for each(_loc4_ in this.§-6§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§`!A§(param2) == false)
               {
                  if(param3)
                  {
                     this.§%z§(false);
                     this.§&!'§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§78§(_loc4_.§?!%§,_loc4_.§1h§);
                     this.§@Y§();
                     this.§8Q§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§%z§(false);
                  this.§&!'§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§&!'§.setObjectToFront(this.§&!'§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§0!4§.§7_§,this.§0]§);
                  break;
               }
            }
         }
      }
      
      public function clearReloadTimers() : void
      {
         var _loc1_:§^+§ = null;
         for each(_loc1_ in this.§-6§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§2W§ = null;
         this.§%z§(false);
         if(this.§&!'§)
         {
            _loc1_ = this.§&!'§.getItemByName("HighscoreSidebar") as §2W§;
            this.§&!'§.clear();
            this.§&!'§ = null;
         }
      }
      
      public function get §>!L§() : int
      {
         return this.§=!-§;
      }
      
      public function set container(param1:§2W§) : void
      {
         this.§&!'§ = param1;
      }
      
      public function get container() : §2W§
      {
         return this.§&!'§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§`B§;
      }
      
      public function get currentState() : String
      {
         return this.§3#§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§`B§ = param1;
      }
   }
}
