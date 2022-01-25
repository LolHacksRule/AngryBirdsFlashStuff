package § ]§
{
   import § !C§.§6!W§;
   import § 9§.§=!a§;
   import §&V§.§9t§;
   import §-"§.§,_§;
   import §68§.§+h§;
   import §68§.§9v§;
   import §68§.§`?§;
   import §^6§.§;l§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §+h§
   {
      
      public static const §^!%§:String = "StateHighScores";
      
      public static const §7!3§:String = "StateBeats";
      
      public static const §=8§:String = "StateDisableHighScores";
      
      public static const §5!<§:String = "TopBeatCollectors";
      
      public static const §9Y§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10");
      
      public static const §2!B§:int = 10;
      
      public static const §]§:int = 5;
      
      public static const §7s§:uint = 16711680;
       
      
      private var §8!^§:String = "StateBeats";
      
      private var §5!Q§:Array;
      
      private var §++§:int = 0;
      
      private var §2I§:String;
      
      private var §;x§:Array;
      
      private var §&!G§:§`?§;
      
      private var dynamic:MovieClip = null;
      
      private var §,!S§:Number = 0;
      
      private var §]!§:int = 0;
      
      private var §!+§:Boolean = false;
      
      private var §+=§:Array;
      
      public function HighscoreSidebar()
      {
         this.§+=§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§,G§ = null;
         this.§5!Q§ = [];
         this.§++§ = 0;
         this.§2I§ = "";
         for each(_loc1_ in §9Y§)
         {
            _loc2_ = new §,G§(_loc1_);
            this.§5!Q§.push(_loc2_);
         }
         _loc2_ = new §,G§(HighscoreSidebar.§5!<§);
         this.§5!Q§.push(_loc2_);
         this.§2I§ = §5!<§;
         this.dynamic = null;
         this.§,!S§ = 0;
         this.§]!§ = 0;
         this.§!+§ = false;
      }
      
      public function §2c§(param1:XML, param2:§`?§, param3:§;l§, param4:§6!W§, param5:MovieClip = null) : void
      {
         this.§&!G§ = new §`?§(param1,param2,param3,param5);
         this.changeState(this.§8!^§);
         this.§ [§(false);
         this.§%+§();
         this.§+=§ = this.§&!G§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function § [§(param1:Boolean) : void
      {
         this.§&!G§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      private function §%+§() : void
      {
         this.§&!G§.getItemByName("MovieClip_Community_Counter").setVisibility(!§-!#§.§4,§.§>b§);
         this.§&!G§.getItemByName("MovieClip_Community_Counter_Achieved").setVisibility(§-!#§.§4,§.§>b§);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§&!G§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§&!G§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§&!G§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§&!G§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§&!G§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§&!G§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§&!G§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§&!G§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§&!G§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§&!G§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§&!G§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§&!G§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §,G§
      {
         var _loc2_:§,G§ = null;
         for each(_loc2_ in this.§5!Q§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         var _loc4_:§,G§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§9Y§[this.§1I§(this.§++§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§9Y§[this.§7!$§(this.§++§)]);
               break;
            case "UP":
               if(this.§8!^§ == §7!3§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§5!<§)) != null)
                  {
                     _loc4_.§^?§();
                     this.§7M§(HighscoreSidebar.§5!<§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§2I§)) != null)
               {
                  _loc4_.§^?§();
                  this.§7M§(this.§2I§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§8!^§ == §7!3§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§5!<§))
                  {
                     _loc4_.§ >§();
                     this.§7M§(HighscoreSidebar.§5!<§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§2I§))
               {
                  _loc4_.§ >§();
                  this.§7M§(this.§2I§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§7!3§);
               this.loadScoreTable(HighscoreSidebar.§5!<§);
               break;
            case "TAB_SCORES":
               this.changeState(§^!%§);
               this.loadScoreTable(HighscoreSidebar.§9Y§[this.§++§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §^!%§:
               (this.§&!G§.getItemByName("TextField_Level_Num") as §9v§).§@!G§.text = "";
               this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("Container_Highscores"));
               this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("Container_Sidebar_Buttons"));
               this.§&!G§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(false);
               this.§&!G§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(true);
               this.§&!G§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§&!G§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.loadScoreTable(this.§2I§,param2);
               break;
            case §7!3§:
               (this.§&!G§.getItemByName("TextField_Level_Num") as §9v§).§@!G§.text = "";
               this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("Container_SideBar_Tab_Beats"));
               this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("Container_Highscores"));
               this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("Container_SideBar_Buttons"));
               this.§&!G§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(true);
               this.§&!G§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(false);
               this.§&!G§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§&!G§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.loadScoreTable(HighscoreSidebar.§5!<§,param2);
               break;
            case §=8§:
               this.changeState(§7!3§);
               this.enableHighScoreTab(false);
         }
         this.§8!^§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!G§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§&!G§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§&!G§.getItemByName("Button_Tab_Beat").setEnabled(true);
         }
         else
         {
            this.§&!G§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§&!G§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§&!G§.getItemByName("Button_Tab_Beat").setEnabled(false);
         }
      }
      
      private function §1I§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§9Y§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §7!$§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§9Y§.length - 1;
         }
         return param1;
      }
      
      public function §5P§(param1:§,G§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §,_§.§9;§)
         {
            _loc4_ = param1.§<!8§;
            do
            {
               _loc3_++;
               param1.§ >§();
               _loc5_ = param1.§>!"§;
               _loc6_ = 0;
               while(_loc6_ < §2!B§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §2!B§;
                  if((_loc8_ = _loc4_[_loc7_]) && §,_§.§9;§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §]§)
                  {
                     _loc2_ = true;
                     param1.§^?§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §7M§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §9Y§)
         {
            if(_loc3_ == param1)
            {
               this.§2I§ = param1;
               this.§&C§(param1);
               (this.§&!G§.getItemByName("TextField_MyScoreNumber") as §9v§).§@!G§.text = "" + §-!#§.§4,§.§6!;§(param1);
               break;
            }
         }
         if(param1 == §5!<§)
         {
            (this.§&!G§.getItemByName("TextField_MyScoreNumber") as §9v§).§@!G§.text = "" + §-!#§.§4,§.§3!&§();
         }
         if(this.§&!G§)
         {
            _loc5_ = this.§&!G§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§,G§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§+!G§)
         {
            if(_loc4_.§<!8§)
            {
               if(param2)
               {
                  this.§5P§(_loc4_);
               }
               this.§"?§(_loc4_.§<!8§,_loc4_.§>!"§);
               this.§5!P§();
               this.§ [§(true);
               this.§&!G§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("Container_Highscores"));
               if(param1 != HighscoreSidebar.§5!<§)
               {
                  (this.§&!G§.getItemByName("TextField_Level_Num") as §9v§).§@!G§.text = "" + param1.substring(2);
               }
            }
         }
         else
         {
            _loc4_.addEventListener(§%P§.§=!9§,this.§3!B§);
         }
      }
      
      private function §3!B§(param1:Event) : void
      {
         var _loc2_:§,G§ = param1.currentTarget as §,G§;
         _loc2_.removeEventListener(§%P§.§=!9§,this.§3!B§);
         this.§2I§ = _loc2_.levelId;
         if(this.§2I§ != HighscoreSidebar.§5!<§)
         {
            (this.§&!G§.getItemByName("TextField_Level_Num") as §9v§).§@!G§.text = "" + this.§2I§.substring(2);
         }
         this.§5P§(_loc2_);
         this.§"?§(_loc2_.§<!8§,_loc2_.§>!"§);
         this.§5!P§();
         this.§ T§();
         this.§ [§(true);
         this.§&!G§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("Container_Highscores"));
         this.§7M§(this.§2I§);
      }
      
      private function §5!P§() : void
      {
         var _loc1_:String = null;
         if(this.§8!^§ == §^!%§)
         {
            for each(_loc1_ in §9Y§)
            {
               if(_loc1_ == this.§2I§)
               {
                  this.§2I§ = this.§2I§;
                  this.§&C§(this.§2I§);
                  (this.§&!G§.getItemByName("TextField_MyScoreNumber") as §9v§).§@!G§.text = "" + §-!#§.§4,§.§6!;§(this.§2I§);
                  break;
               }
            }
         }
         else
         {
            (this.§&!G§.getItemByName("TextField_MyScoreNumber") as §9v§).§@!G§.text = "" + §-!#§.§4,§.§<M§;
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§+!R§(param1);
      }
      
      private function § T§(param1:Boolean = true) : void
      {
         this.§]!§ = 0;
         this.§!+§ = param1;
         this.§,!S§ = 0;
      }
      
      private function §+!R§(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§&!G§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§&!G§.getItemByName("MovieClip_SideBar_MyBeats").mClip;
         var _loc4_:MovieClip = this.§&!G§.getItemByName("MovieClip_SideBar_MyScore").mClip;
         if(this.§!+§)
         {
            if(this.dynamic)
            {
               this.dynamic.filters = [new GlowFilter(16777215,1,32,8,this.§,!S§,5,false,false)];
            }
            if(int((this.§&!G§.getItemByName("TextField_MyScoreNumber") as §9v§).§@!G§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§,!S§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§,!S§,3,false,false)];
               _loc4_.filters = [new GlowFilter(16777215,0.5,16,4,this.§,!S§,3,false,false)];
            }
            if(this.§]!§ > 3)
            {
               this.§,!S§ = 0;
               this.§]!§ = 0;
               this.dynamic = null;
               this.§!+§ = false;
            }
            if(this.§]!§ % 2 == 0)
            {
               this.§,!S§ += param1 / 200;
               if(this.§,!S§ > 5.5)
               {
                  this.§,!S§ = 5.5;
                  ++this.§]!§;
               }
            }
            else
            {
               this.§,!S§ -= param1 / 200;
               if(this.§,!S§ < 0)
               {
                  this.§,!S§ = 0;
                  ++this.§]!§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§+=§;
            _loc3_.filters = this.§+=§;
            _loc4_.filters = this.§+=§;
            if(this.dynamic)
            {
               this.dynamic.filters = this.§+=§;
            }
         }
      }
      
      public function renderCollectedBeats() : void
      {
         (this.§&!G§.getItemByName("TextField_Collected_Beats") as §9v§).§@!G§.text = "" + §-!#§.§4,§.§=t§;
      }
      
      private function §"?§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         var _loc3_:Boolean = false;
         this.§;x§ = param1;
         if(!this.§&!G§)
         {
            return;
         }
         var _loc4_:Class = §=!a§.§@o§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§&!G§.getItemByName("Highscore_Holder").mClip;
         this.renderCollectedBeats();
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.dynamic = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §2!B§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §2!B§;
            _loc9_ = param1[_loc8_];
            (_loc10_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
            if(_loc9_)
            {
               if(§,_§.§9;§ && _loc9_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = §7s§;
                  _loc10_.TextField_Name.textColor = §7s§;
                  _loc10_.TextField_Points.textColor = §7s§;
                  this.dynamic = _loc10_;
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
      
      public function §&C§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§9Y§)
         {
            if(_loc3_ == param1)
            {
               this.§++§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function loadScoreTable(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§,G§ = null;
         for each(_loc4_ in this.§5!Q§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§6!D§(param2) == false)
               {
                  if(param3)
                  {
                     this.§ [§(false);
                     this.§&!G§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§"?§(_loc4_.§<!8§,_loc4_.§>!"§);
                     this.§5!P§();
                     this.§7M§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§ [§(false);
                  this.§&!G§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§&!G§.setObjectToFront(this.§&!G§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§%P§.§=!9§,this.§3!B§);
                  break;
               }
            }
         }
      }
      
      public function clearReloadTimers() : void
      {
         var _loc1_:§,G§ = null;
         for each(_loc1_ in this.§5!Q§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§`?§ = null;
         this.§ [§(false);
         if(this.§&!G§)
         {
            _loc1_ = this.§&!G§.getItemByName("HighscoreSidebar") as §`?§;
            this.§&!G§.clear();
            this.§&!G§ = null;
         }
      }
      
      public function get § &§() : int
      {
         return this.§++§;
      }
      
      public function set container(param1:§`?§) : void
      {
         this.§&!G§ = param1;
      }
      
      public function get container() : §`?§
      {
         return this.§&!G§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§2I§;
      }
      
      public function get currentState() : String
      {
         return this.§8!^§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§2I§ = param1;
      }
   }
}
