package §[!C§
{
   import § !Y§.§if§;
   import §2H§.§>!^§;
   import §93§.§^!H§;
   import §=!c§.§#=§;
   import §=!c§.§63§;
   import §=!c§.§=>§;
   import §?!"§.§^!`§;
   import §@u§.§]!-§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §63§
   {
      
      public static const §[?§:String = "StateHighScores";
      
      public static const §#W§:String = "StateOverall";
      
      public static const §#]§:String = "StateDisableHighScores";
      
      public static const §7!Q§:String = "TopOverallScores";
      
      public static const §]"§:String = "2-13";
      
      public static const §=!J§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10","2-11","2-12");
      
      public static const §""§:Array = ["Britain","Hockenheim","Budapest","Spa","Monza","Singapore","Suzuka","Yeongam","New Delhi","Yas Marina","Austin","São Paulo"];
      
      public static const §2k§:Array = ["18.6.2012","11.7.2012","25.7.2012","22.8.2012","5.9.2012","12.9.2012","26.9.2012","3.10.2012","17.10.2012","31.10.2012","7.11.2012","21.11.2012",""];
      
      public static const §%p§:int = 10;
      
      public static const §!!V§:int = 5;
      
      public static const § !^§:uint = 16711680;
       
      
      private var §4!B§:String = "StateOverall";
      
      private var §5!^§:Array;
      
      private var §'E§:int = 0;
      
      private var §43§:String;
      
      private var §5!"§:Array;
      
      private var §,E§:§=>§;
      
      private var §>![§:MovieClip = null;
      
      private var §#`§:Number = 0;
      
      private var §+!B§:int = 0;
      
      private var §34§:Boolean = false;
      
      private var §6=§:Array;
      
      public function HighscoreSidebar()
      {
         this.§6=§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§3!U§ = null;
         this.§5!^§ = [];
         this.§'E§ = 0;
         this.§43§ = "";
         for each(_loc1_ in §=!J§)
         {
            _loc2_ = new §3!U§(_loc1_);
            this.§5!^§.push(_loc2_);
         }
         _loc2_ = new §3!U§(HighscoreSidebar.§7!Q§);
         this.§5!^§.push(_loc2_);
         this.§43§ = §7!Q§;
         this.§>![§ = null;
         this.§#`§ = 0;
         this.§+!B§ = 0;
         this.§34§ = false;
      }
      
      public function §7!!§(param1:XML, param2:§=>§, param3:§if§, param4:§>!^§, param5:MovieClip = null) : void
      {
         this.§,E§ = new §=>§(param1,param2,param3,param5);
         this.changeState(this.§4!B§);
         this.§!L§(false);
         this.§6=§ = this.§,E§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §!L§(param1:Boolean) : void
      {
         this.§,E§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§,E§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§,E§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§,E§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§,E§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§,E§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§,E§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§,E§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§,E§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§,E§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§,E§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§,E§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§,E§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §3!U§
      {
         var _loc2_:§3!U§ = null;
         for each(_loc2_ in this.§5!^§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         var _loc4_:§3!U§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.§,x§(HighscoreSidebar.§=!J§[this.§@0§(this.§'E§)]);
               break;
            case "LEFT":
               this.§,x§(HighscoreSidebar.§=!J§[this.§+!;§(this.§'E§)]);
               break;
            case "UP":
               if(this.§4!B§ == §#W§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§7!Q§)) != null)
                  {
                     _loc4_.§=!P§();
                     this.§<`§(HighscoreSidebar.§7!Q§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§43§)) != null)
               {
                  _loc4_.§=!P§();
                  this.§<`§(this.§43§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§4!B§ == §#W§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§7!Q§))
                  {
                     _loc4_.§5!W§();
                     this.§<`§(HighscoreSidebar.§7!Q§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§43§))
               {
                  _loc4_.§5!W§();
                  this.§<`§(this.§43§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§#W§);
               this.§,x§(HighscoreSidebar.§7!Q§);
               break;
            case "TAB_SCORES":
               this.changeState(§[?§);
               this.§,x§(HighscoreSidebar.§=!J§[this.§'E§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §[?§:
               (this.§,E§.getItemByName("TextField_Level_Num") as §#=§).§5!R§.text = "";
               this.§,E§.setObjectToFront(this.§,E§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§,E§.setObjectToFront(this.§,E§.getItemByName("Container_Highscores"));
               this.§,E§.setObjectToFront(this.§,E§.getItemByName("Container_Sidebar_Buttons"));
               this.§,E§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§,E§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§,x§(this.§43§,param2);
               break;
            case §#W§:
               (this.§,E§.getItemByName("TextField_Level_Num") as §#=§).§5!R§.text = "";
               this.§,E§.setObjectToFront(this.§,E§.getItemByName("Container_SideBar_Tab_Overall"));
               this.§,E§.setObjectToFront(this.§,E§.getItemByName("Container_Highscores"));
               this.§,E§.setObjectToFront(this.§,E§.getItemByName("Container_SideBar_Buttons"));
               this.§,E§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§,E§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§,x§(HighscoreSidebar.§7!Q§,param2);
               break;
            case §#]§:
               this.changeState(§#W§);
               this.enableHighScoreTab(false);
         }
         this.§4!B§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,E§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§,E§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§,E§.getItemByName("Button_Tab_Overall").setEnabled(true);
         }
         else
         {
            this.§,E§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§,E§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§,E§.getItemByName("Button_Tab_Overall").setEnabled(false);
         }
      }
      
      private function §@0§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§=!J§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §+!;§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§=!J§.length - 1;
         }
         return param1;
      }
      
      public function §^T§(param1:§3!U§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §^!`§.§[K§)
         {
            _loc4_ = param1.§'!8§;
            do
            {
               _loc3_++;
               param1.§5!W§();
               _loc5_ = param1.§8!b§;
               _loc6_ = 0;
               while(_loc6_ < §%p§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §%p§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §^!`§.§[K§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §!!V§)
                  {
                     _loc2_ = true;
                     param1.§=!P§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §<`§(param1:String, param2:Boolean = true) : void
      {
         var levelNameInList:String = null;
         var highscoreHolderClip:MovieClip = null;
         var levelNum:String = null;
         var levelName:String = param1;
         var centerOnPlayer:Boolean = param2;
         for each(levelNameInList in §=!J§)
         {
            if(levelNameInList == levelName)
            {
               this.§43§ = levelName;
               this.§'F§(levelName);
               (this.§,E§.getItemByName("TextField_MyScoreNumber") as §#=§).§5!R§.text = "" + §,-§.§?+§.§+,§(levelName);
               break;
            }
         }
         if(levelName == §7!Q§)
         {
            (this.§,E§.getItemByName("TextField_MyScoreNumber") as §#=§).§5!R§.text = "" + §,-§.§?+§.overallScore;
         }
         if(this.§,E§)
         {
            highscoreHolderClip = this.§,E§.getItemByName("Highscore_Holder").mClip;
            while(highscoreHolderClip.numChildren > 0)
            {
               highscoreHolderClip.removeChildAt(0);
            }
         }
         var currentLoader:§3!U§ = this.getScoreLoaderById(levelName);
         if(currentLoader == null)
         {
            return;
         }
         if(currentLoader.§0^§)
         {
            if(currentLoader.§'!8§)
            {
               if(centerOnPlayer)
               {
                  this.§^T§(currentLoader);
               }
               this.§5!c§(currentLoader.§'!8§,currentLoader.§8!b§,currentLoader.heikkiScore);
               this.§3I§();
               this.§!L§(true);
               this.§,E§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§,E§.setObjectToFront(this.§,E§.getItemByName("Container_Highscores"));
               if(levelName != HighscoreSidebar.§7!Q§)
               {
                  try
                  {
                     levelNum = levelName.substring(2);
                     (this.§,E§.getItemByName("TextField_Level_Num") as §#=§).§5!R§.text = HighscoreSidebar.§""§[int(levelNum) - 1];
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
         else
         {
            currentLoader.addEventListener(§=!!§.§7B§,this.§`4§);
         }
      }
      
      private function §`4§(param1:Event) : void
      {
         var levelName:String = null;
         var e:Event = param1;
         var currentLoader:§3!U§ = e.currentTarget as §3!U§;
         currentLoader.removeEventListener(§=!!§.§7B§,this.§`4§);
         this.§43§ = currentLoader.levelId;
         if(this.§43§ != HighscoreSidebar.§7!Q§)
         {
            levelName = this.§43§;
            try
            {
               levelName = levelName.substring(2);
               (this.§,E§.getItemByName("TextField_Level_Num") as §#=§).§5!R§.text = HighscoreSidebar.§""§[int(levelName) - 1];
            }
            catch(e:Error)
            {
            }
         }
         this.§^T§(currentLoader);
         this.§5!c§(currentLoader.§'!8§,currentLoader.§8!b§,currentLoader.heikkiScore);
         this.§3I§();
         this.§#!4§();
         this.§!L§(true);
         this.§,E§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§,E§.setObjectToFront(this.§,E§.getItemByName("Container_Highscores"));
         this.§<`§(this.§43§);
      }
      
      private function §3I§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §^!`§.§[K§;
         if(_loc1_.name)
         {
            (this.§,E§.getItemByName("TextField_MyScoreName") as §#=§).§5!R§.text = _loc1_.name + ":";
         }
         else
         {
            (this.§,E§.getItemByName("TextField_MyScoreName") as §#=§).§5!R§.text = "My Score:";
         }
         if(this.§4!B§ == §[?§)
         {
            for each(_loc2_ in §=!J§)
            {
               if(_loc2_ == this.§43§)
               {
                  this.§43§ = this.§43§;
                  this.§'F§(this.§43§);
                  (this.§,E§.getItemByName("TextField_MyScoreNumber") as §#=§).§5!R§.text = "" + §,-§.§?+§.§+,§(this.§43§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§4X§(param1);
      }
      
      private function §#!4§(param1:Boolean = true) : void
      {
         this.§+!B§ = 0;
         this.§34§ = param1;
         this.§#`§ = 0;
      }
      
      private function §4X§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§,E§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§,E§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§34§)
         {
            if(this.§>![§)
            {
               this.§>![§.filters = [new GlowFilter(16777215,1,32,8,this.§#`§,5,false,false)];
               for each(_loc4_ in this.§6=§)
               {
                  this.§>![§.filters.push(_loc4_);
               }
            }
            if(int((this.§,E§.getItemByName("TextField_MyScoreNumber") as §#=§).§5!R§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§#`§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§#`§,3,false,false)];
               for each(_loc4_ in this.§6=§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§+!B§ > 3)
            {
               this.§#`§ = 0;
               this.§+!B§ = 0;
               this.§>![§ = null;
               this.§34§ = false;
            }
            if(this.§+!B§ % 2 == 0)
            {
               this.§#`§ += param1 / 200;
               if(this.§#`§ > 5.5)
               {
                  this.§#`§ = 5.5;
                  ++this.§+!B§;
               }
            }
            else
            {
               this.§#`§ -= param1 / 200;
               if(this.§#`§ < 0)
               {
                  this.§#`§ = 0;
                  ++this.§+!B§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§6=§;
            _loc3_.filters = this.§6=§;
            if(this.§>![§)
            {
               this.§>![§.filters = this.§6=§;
            }
         }
      }
      
      private function §5!c§(param1:Array, param2:int, param3:int) : void
      {
         var _loc9_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:Object = null;
         var _loc4_:Boolean = false;
         this.§5!"§ = param1;
         if(!this.§,E§)
         {
            return;
         }
         var _loc5_:Class = §]!-§.§=!M§("Component_HighscoreEntry");
         var _loc6_:MovieClip = this.§,E§.getItemByName("Highscore_Holder").mClip;
         while(_loc6_.numChildren > 0)
         {
            _loc6_.removeChildAt(0);
         }
         this.§>![§ = null;
         var _loc7_:int = 0;
         (this.§,E§.getItemByName("TextField_HeikkiScoreNumber") as §#=§).§5!R§.text = "" + param3;
         var _loc8_:int = 0;
         while(_loc8_ < §%p§)
         {
            _loc9_ = _loc8_ + (param2 - 1) * §%p§;
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
               if(§^!`§.§[K§ && _loc11_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = § !^§;
                  _loc10_.TextField_Name.textColor = § !^§;
                  _loc10_.TextField_Points.textColor = § !^§;
                  this.§>![§ = _loc10_;
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
      
      public function §'F§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§=!J§)
         {
            if(_loc3_ == param1)
            {
               this.§'E§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §,x§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§3!U§ = null;
         for each(_loc4_ in this.§5!^§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§;D§(param2) == false)
               {
                  if(param3)
                  {
                     this.§!L§(false);
                     this.§,E§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§,E§.setObjectToFront(this.§,E§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§5!c§(_loc4_.§'!8§,_loc4_.§8!b§,_loc4_.heikkiScore);
                     this.§3I§();
                     this.§<`§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§!L§(false);
                  this.§,E§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§,E§.setObjectToFront(this.§,E§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§=!!§.§7B§,this.§`4§);
                  break;
               }
            }
         }
      }
      
      public function §each §() : void
      {
         var _loc1_:§3!U§ = null;
         for each(_loc1_ in this.§5!^§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§=>§ = null;
         this.§!L§(false);
         if(this.§,E§)
         {
            _loc1_ = this.§,E§.getItemByName("HighscoreSidebar") as §=>§;
            this.§,E§.clear();
            this.§,E§ = null;
         }
      }
      
      public function get §`N§() : int
      {
         return this.§'E§;
      }
      
      public function set container(param1:§=>§) : void
      {
         this.§,E§ = param1;
      }
      
      public function get container() : §=>§
      {
         return this.§,E§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§43§;
      }
      
      public function get currentState() : String
      {
         return this.§4!B§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§43§ = param1;
      }
   }
}
