package §1"§
{
   import §!E§.§,!B§;
   import §!E§.§-!%§;
   import §!E§.§>! §;
   import §%!G§.§ !G§;
   import §2!$§.§<!%§;
   import §6!@§.§ !!§;
   import §^!5§.§+^§;
   import §^!L§.§@x§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §>! §
   {
      
      public static const §"!`§:String = "StateHighScores";
      
      public static const §^@§:String = "StateBeats";
      
      public static const §`<§:String = "StateDisableHighScores";
      
      public static const §[!4§:String = "TopBeatCollectors";
      
      public static const §=Z§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10");
      
      public static const §[G§:int = 10;
      
      public static const §&!@§:int = 5;
      
      public static const §!!;§:uint = 16711680;
       
      
      private var §0<§:String = "StateBeats";
      
      private var §^!8§:Array;
      
      private var §#c§:int = 0;
      
      private var §&0§:String;
      
      private var §-!E§:Array;
      
      private var §8!S§:§-!%§;
      
      private var §"!"§:MovieClip = null;
      
      private var §32§:Number = 0;
      
      private var §import§:int = 0;
      
      private var §0!b§:Boolean = false;
      
      private var §"!&§:Array;
      
      public function HighscoreSidebar()
      {
         this.§"!&§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§!^§ = null;
         this.§^!8§ = [];
         this.§#c§ = 0;
         this.§&0§ = "";
         for each(_loc1_ in §=Z§)
         {
            _loc2_ = new §!^§(_loc1_);
            this.§^!8§.push(_loc2_);
         }
         _loc2_ = new §!^§(HighscoreSidebar.§[!4§);
         this.§^!8§.push(_loc2_);
         this.§&0§ = §[!4§;
         this.§"!"§ = null;
         this.§32§ = 0;
         this.§import§ = 0;
         this.§0!b§ = false;
      }
      
      public function §,0§(param1:XML, param2:§-!%§, param3:§ !G§, param4:§ !!§, param5:MovieClip = null) : void
      {
         this.§8!S§ = new §-!%§(param1,param2,param3,param5);
         this.changeState(this.§0<§);
         this.§?;§(false);
         this.§>!J§();
         this.§"!&§ = this.§8!S§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §?;§(param1:Boolean) : void
      {
         this.§8!S§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      private function §>!J§() : void
      {
         this.§8!S§.getItemByName("MovieClip_Community_Counter").setVisibility(!§"!@§.§6!-§.§3u§);
         this.§8!S§.getItemByName("MovieClip_Community_Counter_Achieved").setVisibility(§"!@§.§6!-§.§3u§);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§8!S§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§8!S§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§8!S§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§8!S§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§8!S§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§8!S§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§8!S§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§8!S§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§8!S§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§8!S§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§8!S§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§8!S§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §!^§
      {
         var _loc2_:§!^§ = null;
         for each(_loc2_ in this.§^!8§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         var _loc4_:§!^§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.loadScoreTable(HighscoreSidebar.§=Z§[this.§1!R§(this.§#c§)]);
               break;
            case "LEFT":
               this.loadScoreTable(HighscoreSidebar.§=Z§[this.§in §(this.§#c§)]);
               break;
            case "UP":
               if(this.§0<§ == §^@§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§[!4§)) != null)
                  {
                     _loc4_.§#4§();
                     this.§3+§(HighscoreSidebar.§[!4§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§&0§)) != null)
               {
                  _loc4_.§#4§();
                  this.§3+§(this.§&0§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§0<§ == §^@§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§[!4§))
                  {
                     _loc4_.§^I§();
                     this.§3+§(HighscoreSidebar.§[!4§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§&0§))
               {
                  _loc4_.§^I§();
                  this.§3+§(this.§&0§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§^@§);
               this.loadScoreTable(HighscoreSidebar.§[!4§);
               break;
            case "TAB_SCORES":
               this.changeState(§"!`§);
               this.loadScoreTable(HighscoreSidebar.§=Z§[this.§#c§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §"!`§:
               (this.§8!S§.getItemByName("TextField_Level_Num") as §,!B§).§&J§.text = "";
               this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("Container_Highscores"));
               this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("Container_Sidebar_Buttons"));
               this.§8!S§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(false);
               this.§8!S§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(true);
               this.§8!S§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§8!S§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.loadScoreTable(this.§&0§,param2);
               break;
            case §^@§:
               (this.§8!S§.getItemByName("TextField_Level_Num") as §,!B§).§&J§.text = "";
               this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("Container_SideBar_Tab_Beats"));
               this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("Container_Highscores"));
               this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("Container_SideBar_Buttons"));
               this.§8!S§.getItemByName("MovieClip_SideBar_MyBeats").setVisibility(true);
               this.§8!S§.getItemByName("MovieClip_SideBar_MyScore").setVisibility(false);
               this.§8!S§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§8!S§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.loadScoreTable(HighscoreSidebar.§[!4§,param2);
               break;
            case §`<§:
               this.changeState(§^@§);
               this.enableHighScoreTab(false);
         }
         this.§0<§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!S§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§8!S§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§8!S§.getItemByName("Button_Tab_Beat").setEnabled(true);
         }
         else
         {
            this.§8!S§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§8!S§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§8!S§.getItemByName("Button_Tab_Beat").setEnabled(false);
         }
      }
      
      private function §1!R§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§=Z§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §in §(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§=Z§.length - 1;
         }
         return param1;
      }
      
      public function §+!V§(param1:§!^§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §+^§.§@U§)
         {
            _loc4_ = param1.§6P§;
            do
            {
               _loc3_++;
               param1.§^I§();
               _loc5_ = param1.§0!a§;
               _loc6_ = 0;
               while(_loc6_ < §[G§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §[G§;
                  if((_loc8_ = _loc4_[_loc7_]) && §+^§.§@U§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §&!@§)
                  {
                     _loc2_ = true;
                     param1.§#4§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §3+§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §=Z§)
         {
            if(_loc3_ == param1)
            {
               this.§&0§ = param1;
               this.§;K§(param1);
               (this.§8!S§.getItemByName("TextField_MyScoreNumber") as §,!B§).§&J§.text = "" + §"!@§.§6!-§.§;!K§(param1);
               break;
            }
         }
         if(param1 == §[!4§)
         {
            (this.§8!S§.getItemByName("TextField_MyScoreNumber") as §,!B§).§&J§.text = "" + §"!@§.§6!-§.§+L§();
         }
         if(this.§8!S§)
         {
            _loc5_ = this.§8!S§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§!^§;
         if((_loc4_ = this.getScoreLoaderById(param1)) == null)
         {
            return;
         }
         if(_loc4_.§4C§)
         {
            if(_loc4_.§6P§)
            {
               if(param2)
               {
                  this.§+!V§(_loc4_);
               }
               this.§%0§(_loc4_.§6P§,_loc4_.§0!a§);
               this.§0!-§();
               this.§?;§(true);
               this.§8!S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("Container_Highscores"));
               if(param1 != HighscoreSidebar.§[!4§)
               {
                  (this.§8!S§.getItemByName("TextField_Level_Num") as §,!B§).§&J§.text = "" + param1.substring(2);
               }
            }
         }
         else
         {
            _loc4_.addEventListener(§+,§.§@!=§,this.§1x§);
         }
      }
      
      private function §1x§(param1:Event) : void
      {
         var _loc2_:§!^§ = param1.currentTarget as §!^§;
         _loc2_.removeEventListener(§+,§.§@!=§,this.§1x§);
         this.§&0§ = _loc2_.levelId;
         if(this.§&0§ != HighscoreSidebar.§[!4§)
         {
            (this.§8!S§.getItemByName("TextField_Level_Num") as §,!B§).§&J§.text = "" + this.§&0§.substring(2);
         }
         this.§+!V§(_loc2_);
         this.§%0§(_loc2_.§6P§,_loc2_.§0!a§);
         this.§0!-§();
         this.§5!B§();
         this.§?;§(true);
         this.§8!S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("Container_Highscores"));
         this.§3+§(this.§&0§);
      }
      
      private function §0!-§() : void
      {
         var _loc1_:String = null;
         if(this.§0<§ == §"!`§)
         {
            for each(_loc1_ in §=Z§)
            {
               if(_loc1_ == this.§&0§)
               {
                  this.§&0§ = this.§&0§;
                  this.§;K§(this.§&0§);
                  (this.§8!S§.getItemByName("TextField_MyScoreNumber") as §,!B§).§&J§.text = "" + §"!@§.§6!-§.§;!K§(this.§&0§);
                  break;
               }
            }
         }
         else
         {
            (this.§8!S§.getItemByName("TextField_MyScoreNumber") as §,!B§).§&J§.text = "" + §"!@§.§6!-§.§@!L§;
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§4§(param1);
      }
      
      private function §5!B§(param1:Boolean = true) : void
      {
         this.§import§ = 0;
         this.§0!b§ = param1;
         this.§32§ = 0;
      }
      
      private function §4§(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§8!S§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§8!S§.getItemByName("MovieClip_SideBar_MyBeats").mClip;
         var _loc4_:MovieClip = this.§8!S§.getItemByName("MovieClip_SideBar_MyScore").mClip;
         if(this.§0!b§)
         {
            if(this.§"!"§)
            {
               this.§"!"§.filters = [new GlowFilter(16777215,1,32,8,this.§32§,5,false,false)];
            }
            if(int((this.§8!S§.getItemByName("TextField_MyScoreNumber") as §,!B§).§&J§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§32§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§32§,3,false,false)];
               _loc4_.filters = [new GlowFilter(16777215,0.5,16,4,this.§32§,3,false,false)];
            }
            if(this.§import§ > 3)
            {
               this.§32§ = 0;
               this.§import§ = 0;
               this.§"!"§ = null;
               this.§0!b§ = false;
            }
            if(this.§import§ % 2 == 0)
            {
               this.§32§ += param1 / 200;
               if(this.§32§ > 5.5)
               {
                  this.§32§ = 5.5;
                  ++this.§import§;
               }
            }
            else
            {
               this.§32§ -= param1 / 200;
               if(this.§32§ < 0)
               {
                  this.§32§ = 0;
                  ++this.§import§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§"!&§;
            _loc3_.filters = this.§"!&§;
            _loc4_.filters = this.§"!&§;
            if(this.§"!"§)
            {
               this.§"!"§.filters = this.§"!&§;
            }
         }
      }
      
      public function renderCollectedBeats() : void
      {
         (this.§8!S§.getItemByName("TextField_Collected_Beats") as §,!B§).§&J§.text = "" + §"!@§.§6!-§.§ !^§;
      }
      
      private function §%0§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         var _loc3_:Boolean = false;
         this.§-!E§ = param1;
         if(!this.§8!S§)
         {
            return;
         }
         var _loc4_:Class = §@x§.§="§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§8!S§.getItemByName("Highscore_Holder").mClip;
         this.renderCollectedBeats();
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§"!"§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §[G§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §[G§;
            _loc9_ = param1[_loc8_];
            (_loc10_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
            if(_loc9_)
            {
               if(§+^§.§@U§ && _loc9_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = §!!;§;
                  _loc10_.TextField_Name.textColor = §!!;§;
                  _loc10_.TextField_Points.textColor = §!!;§;
                  this.§"!"§ = _loc10_;
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
      
      public function §;K§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§=Z§)
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
         var _loc4_:§!^§ = null;
         for each(_loc4_ in this.§^!8§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§-!&§(param2) == false)
               {
                  if(param3)
                  {
                     this.§?;§(false);
                     this.§8!S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§%0§(_loc4_.§6P§,_loc4_.§0!a§);
                     this.§0!-§();
                     this.§3+§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§?;§(false);
                  this.§8!S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§8!S§.setObjectToFront(this.§8!S§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§+,§.§@!=§,this.§1x§);
                  break;
               }
            }
         }
      }
      
      public function clearReloadTimers() : void
      {
         var _loc1_:§!^§ = null;
         for each(_loc1_ in this.§^!8§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§-!%§ = null;
         this.§?;§(false);
         if(this.§8!S§)
         {
            _loc1_ = this.§8!S§.getItemByName("HighscoreSidebar") as §-!%§;
            this.§8!S§.clear();
            this.§8!S§ = null;
         }
      }
      
      public function get §,!-§() : int
      {
         return this.§#c§;
      }
      
      public function set container(param1:§-!%§) : void
      {
         this.§8!S§ = param1;
      }
      
      public function get container() : §-!%§
      {
         return this.§8!S§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§&0§;
      }
      
      public function get currentState() : String
      {
         return this.§0<§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§&0§ = param1;
      }
   }
}
