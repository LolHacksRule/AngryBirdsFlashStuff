package §2`§
{
   import §'!N§.§2O§;
   import §'!N§.§@!]§;
   import §'!N§.§[!%§;
   import §-!"§.§=p§;
   import §3Y§.§4!_§;
   import §8P§.§1A§;
   import §<u§.§]!Q§;
   import §]!6§.§false§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §@!]§
   {
      
      public static const §`!e§:String = "StateHighScores";
      
      public static const §4!@§:String = "StateOverall";
      
      public static const §`M§:String = "StateDisableHighScores";
      
      public static const §<>§:String = "TopOverallScores";
      
      public static const §1!§:String = "2-13";
      
      public static const §"!P§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10","2-11","2-12");
      
      public static const §&!`§:Array = ["Britain","Hockenheim","Budapest","Spa","Monza","Singapore","Suzuka","Yeongam","New Delhi","Yas Marina","Austin","São Paulo"];
      
      public static const §2g§:Array = ["18.6.2012","11.7.2012","25.7.2012","22.8.2012","5.9.2012","12.9.2012","26.9.2012","3.10.2012","17.10.2012","31.10.2012","7.11.2012","21.11.2012",""];
      
      public static const §,g§:int = 10;
      
      public static const §2>§:int = 5;
      
      public static const § -§:uint = 16711680;
       
      
      private var §5d§:String = "StateOverall";
      
      private var §]S§:Array;
      
      private var §2!T§:int = 0;
      
      private var §,x§:String;
      
      private var §-B§:Array;
      
      private var §6!"§:§2O§;
      
      private var §4-§:MovieClip = null;
      
      private var §]e§:Number = 0;
      
      private var §]§:int = 0;
      
      private var §8-§:Boolean = false;
      
      private var §@!7§:Array;
      
      public function HighscoreSidebar()
      {
         this.§@!7§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§>x§ = null;
         this.§]S§ = [];
         this.§2!T§ = 0;
         this.§,x§ = "";
         for each(_loc1_ in §"!P§)
         {
            _loc2_ = new §>x§(_loc1_);
            this.§]S§.push(_loc2_);
         }
         _loc2_ = new §>x§(HighscoreSidebar.§<>§);
         this.§]S§.push(_loc2_);
         this.§,x§ = §<>§;
         this.§4-§ = null;
         this.§]e§ = 0;
         this.§]§ = 0;
         this.§8-§ = false;
      }
      
      public function §%?§(param1:XML, param2:§2O§, param3:§]!Q§, param4:§=p§, param5:MovieClip = null) : void
      {
         this.§6!"§ = new §2O§(param1,param2,param3,param5);
         this.changeState(this.§5d§);
         this.§-V§(false);
         this.§@!7§ = this.§6!"§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §-V§(param1:Boolean) : void
      {
         this.§6!"§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§6!"§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§6!"§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§6!"§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§6!"§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§6!"§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§6!"§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§6!"§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§6!"§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§6!"§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§6!"§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§6!"§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§6!"§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §>x§
      {
         var _loc2_:§>x§ = null;
         for each(_loc2_ in this.§]S§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc4_:§>x§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.§<1§(HighscoreSidebar.§"!P§[this.§9!D§(this.§2!T§)]);
               break;
            case "LEFT":
               this.§<1§(HighscoreSidebar.§"!P§[this.§#!d§(this.§2!T§)]);
               break;
            case "UP":
               if(this.§5d§ == §4!@§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§<>§)) != null)
                  {
                     _loc4_.§<$§();
                     this.§#!Z§(HighscoreSidebar.§<>§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§,x§)) != null)
               {
                  _loc4_.§<$§();
                  this.§#!Z§(this.§,x§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§5d§ == §4!@§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§<>§))
                  {
                     _loc4_.§4§();
                     this.§#!Z§(HighscoreSidebar.§<>§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§,x§))
               {
                  _loc4_.§4§();
                  this.§#!Z§(this.§,x§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§4!@§);
               this.§<1§(HighscoreSidebar.§<>§);
               break;
            case "TAB_SCORES":
               this.changeState(§`!e§);
               this.§<1§(HighscoreSidebar.§"!P§[this.§2!T§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §`!e§:
               (this.§6!"§.getItemByName("TextField_Level_Num") as §[!%§).§^!1§.text = "";
               this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_Highscores"));
               this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_Sidebar_Buttons"));
               this.§6!"§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§6!"§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§<1§(this.§,x§,param2);
               break;
            case §4!@§:
               (this.§6!"§.getItemByName("TextField_Level_Num") as §[!%§).§^!1§.text = "";
               this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_SideBar_Tab_Overall"));
               this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_Highscores"));
               this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_SideBar_Buttons"));
               this.§6!"§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§6!"§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§<1§(HighscoreSidebar.§<>§,param2);
               break;
            case §`M§:
               this.changeState(§4!@§);
               this.enableHighScoreTab(false);
         }
         this.§5d§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6!"§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§6!"§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§6!"§.getItemByName("Button_Tab_Overall").setEnabled(true);
         }
         else
         {
            this.§6!"§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§6!"§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§6!"§.getItemByName("Button_Tab_Overall").setEnabled(false);
         }
      }
      
      private function §9!D§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§"!P§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §#!d§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§"!P§.length - 1;
         }
         return param1;
      }
      
      public function §!!,§(param1:§>x§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §4!_§.§,t§)
         {
            _loc4_ = param1.§"!?§;
            do
            {
               _loc3_++;
               param1.§4§();
               _loc5_ = param1.§`^§;
               _loc6_ = 0;
               while(_loc6_ < §,g§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §,g§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §4!_§.§,t§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §2>§)
                  {
                     _loc2_ = true;
                     param1.§<$§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §#!Z§(param1:String, param2:Boolean = true) : void
      {
         var levelNameInList:String = null;
         var highscoreHolderClip:MovieClip = null;
         var levelNum:String = null;
         var levelName:String = param1;
         var centerOnPlayer:Boolean = param2;
         for each(levelNameInList in §"!P§)
         {
            if(levelNameInList == levelName)
            {
               this.§,x§ = levelName;
               this.§[!S§(levelName);
               (this.§6!"§.getItemByName("TextField_MyScoreNumber") as §[!%§).§^!1§.text = "" + §,L§.§8!F§.§%=§(levelName);
               break;
            }
         }
         if(levelName == §<>§)
         {
            (this.§6!"§.getItemByName("TextField_MyScoreNumber") as §[!%§).§^!1§.text = "" + §,L§.§8!F§.overallScore;
         }
         if(this.§6!"§)
         {
            highscoreHolderClip = this.§6!"§.getItemByName("Highscore_Holder").mClip;
            while(highscoreHolderClip.numChildren > 0)
            {
               highscoreHolderClip.removeChildAt(0);
            }
         }
         var currentLoader:§>x§ = this.getScoreLoaderById(levelName);
         if(currentLoader == null)
         {
            return;
         }
         if(currentLoader.§0!7§)
         {
            if(currentLoader.§"!?§)
            {
               if(centerOnPlayer)
               {
                  this.§!!,§(currentLoader);
               }
               this.§%Y§(currentLoader.§"!?§,currentLoader.§`^§,currentLoader.heikkiScore);
               this.§-!X§();
               this.§-V§(true);
               this.§6!"§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_Highscores"));
               if(levelName != HighscoreSidebar.§<>§)
               {
                  try
                  {
                     levelNum = levelName.substring(2);
                     (this.§6!"§.getItemByName("TextField_Level_Num") as §[!%§).§^!1§.text = HighscoreSidebar.§&!`§[int(levelNum) - 1];
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
         else
         {
            currentLoader.addEventListener(§"0§.§3!A§,this.§1,§);
         }
      }
      
      private function §1,§(param1:Event) : void
      {
         var levelName:String = null;
         var e:Event = param1;
         var currentLoader:§>x§ = e.currentTarget as §>x§;
         currentLoader.removeEventListener(§"0§.§3!A§,this.§1,§);
         this.§,x§ = currentLoader.levelId;
         if(this.§,x§ != HighscoreSidebar.§<>§)
         {
            levelName = this.§,x§;
            try
            {
               levelName = levelName.substring(2);
               (this.§6!"§.getItemByName("TextField_Level_Num") as §[!%§).§^!1§.text = HighscoreSidebar.§&!`§[int(levelName) - 1];
            }
            catch(e:Error)
            {
            }
         }
         this.§!!,§(currentLoader);
         this.§%Y§(currentLoader.§"!?§,currentLoader.§`^§,currentLoader.heikkiScore);
         this.§-!X§();
         this.§1O§();
         this.§-V§(true);
         this.§6!"§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_Highscores"));
         this.§#!Z§(this.§,x§);
      }
      
      private function §-!X§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §4!_§.§,t§;
         if(_loc1_.name)
         {
            (this.§6!"§.getItemByName("TextField_MyScoreName") as §[!%§).§^!1§.text = _loc1_.name + ":";
         }
         else
         {
            (this.§6!"§.getItemByName("TextField_MyScoreName") as §[!%§).§^!1§.text = "My Score:";
         }
         if(this.§5d§ == §`!e§)
         {
            for each(_loc2_ in §"!P§)
            {
               if(_loc2_ == this.§,x§)
               {
                  this.§,x§ = this.§,x§;
                  this.§[!S§(this.§,x§);
                  (this.§6!"§.getItemByName("TextField_MyScoreNumber") as §[!%§).§^!1§.text = "" + §,L§.§8!F§.§%=§(this.§,x§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§,!X§(param1);
      }
      
      private function §1O§(param1:Boolean = true) : void
      {
         this.§]§ = 0;
         this.§8-§ = param1;
         this.§]e§ = 0;
      }
      
      private function §,!X§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§6!"§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§6!"§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§8-§)
         {
            if(this.§4-§)
            {
               this.§4-§.filters = [new GlowFilter(16777215,1,32,8,this.§]e§,5,false,false)];
               for each(_loc4_ in this.§@!7§)
               {
                  this.§4-§.filters.push(_loc4_);
               }
            }
            if(int((this.§6!"§.getItemByName("TextField_MyScoreNumber") as §[!%§).§^!1§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§]e§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§]e§,3,false,false)];
               for each(_loc4_ in this.§@!7§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§]§ > 3)
            {
               this.§]e§ = 0;
               this.§]§ = 0;
               this.§4-§ = null;
               this.§8-§ = false;
            }
            if(this.§]§ % 2 == 0)
            {
               this.§]e§ += param1 / 200;
               if(this.§]e§ > 5.5)
               {
                  this.§]e§ = 5.5;
                  ++this.§]§;
               }
            }
            else
            {
               this.§]e§ -= param1 / 200;
               if(this.§]e§ < 0)
               {
                  this.§]e§ = 0;
                  ++this.§]§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§@!7§;
            _loc3_.filters = this.§@!7§;
            if(this.§4-§)
            {
               this.§4-§.filters = this.§@!7§;
            }
         }
      }
      
      private function §%Y§(param1:Array, param2:int, param3:int) : void
      {
         var _loc9_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:Object = null;
         var _loc4_:Boolean = false;
         this.§-B§ = param1;
         if(!this.§6!"§)
         {
            return;
         }
         var _loc5_:Class = §false§.§5#§("Component_HighscoreEntry");
         var _loc6_:MovieClip = this.§6!"§.getItemByName("Highscore_Holder").mClip;
         while(_loc6_.numChildren > 0)
         {
            _loc6_.removeChildAt(0);
         }
         this.§4-§ = null;
         var _loc7_:int = 0;
         (this.§6!"§.getItemByName("TextField_HeikkiScoreNumber") as §[!%§).§^!1§.text = "" + param3;
         var _loc8_:int = 0;
         while(_loc8_ < §,g§)
         {
            _loc9_ = _loc8_ + (param2 - 1) * §,g§;
            try
            {
               _loc11_ = param1[_loc9_];
            }
            catch(e:Error)
            {
            }
            (_loc10_ = new _loc5_()).TextField_Rank.text = _loc9_ + 1 + ".";
            if(_loc11_)
            {
               if(§4!_§.§,t§ && _loc11_.isPlayer)
               {
                  _loc4_ = true;
               }
               else
               {
                  _loc4_ = false;
               }
               _loc10_.TextField_Name.text = _loc11_.nickName;
               _loc10_.TextField_Points.text = _loc11_.score;
               if(_loc4_)
               {
                  _loc10_.TextField_Rank.textColor = § -§;
                  _loc10_.TextField_Name.textColor = § -§;
                  _loc10_.TextField_Points.textColor = § -§;
                  this.§4-§ = _loc10_;
               }
            }
            else
            {
               _loc10_.TextField_Name.text = "";
               _loc10_.TextField_Points.text = "0";
            }
            _loc10_.y = _loc7_;
            _loc7_ += 19;
            _loc6_.addChild(_loc10_);
            _loc8_++;
         }
      }
      
      public function §[!S§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§"!P§)
         {
            if(_loc3_ == param1)
            {
               this.§2!T§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §<1§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§>x§ = null;
         for each(_loc4_ in this.§]S§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§^9§(param2) == false)
               {
                  if(param3)
                  {
                     this.§-V§(false);
                     this.§6!"§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§%Y§(_loc4_.§"!?§,_loc4_.§`^§,_loc4_.heikkiScore);
                     this.§-!X§();
                     this.§#!Z§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§-V§(false);
                  this.§6!"§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§"0§.§3!A§,this.§1,§);
                  break;
               }
            }
         }
      }
      
      public function §5K§() : void
      {
         var _loc1_:§>x§ = null;
         for each(_loc1_ in this.§]S§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§2O§ = null;
         this.§-V§(false);
         if(this.§6!"§)
         {
            _loc1_ = this.§6!"§.getItemByName("HighscoreSidebar") as §2O§;
            this.§6!"§.clear();
            this.§6!"§ = null;
         }
      }
      
      public function get §2l§() : int
      {
         return this.§2!T§;
      }
      
      public function set container(param1:§2O§) : void
      {
         this.§6!"§ = param1;
      }
      
      public function get container() : §2O§
      {
         return this.§6!"§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§,x§;
      }
      
      public function get currentState() : String
      {
         return this.§5d§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§,x§ = param1;
      }
   }
}
