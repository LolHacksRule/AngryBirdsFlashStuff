package §`V§
{
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §,y§.§?!0§;
   import §-!V§.§&K§;
   import §-!V§.§+V§;
   import §-!V§.§@§;
   import §0;§.§]U§;
   import §;!0§.§4!I§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §&K§
   {
      
      public static const §2§:String = "StateHighScores";
      
      public static const §&!4§:String = "StateOverall";
      
      public static const §!!1§:String = "StateDisableHighScores";
      
      public static const §[!Z§:String = "TopOverallScores";
      
      public static const §0!I§:String = "2-13";
      
      public static const §#R§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10","2-11","2-12");
      
      public static const §1r§:Array = ["Britain","Hockenheim","Budapest","Spa","Monza","Singapore","Suzuka","Yeongam","New Delhi","Yas Marina","Austin","São Paulo"];
      
      public static const §<M§:Array = ["18.6.2012","11.7.2012","25.7.2012","22.8.2012","5.9.2012","12.9.2012","26.9.2012","3.10.2012","17.10.2012","31.10.2012","7.11.2012","21.11.2012",""];
      
      public static const §"!1§:int = 10;
      
      public static const §'E§:int = 5;
      
      public static const §>!@§:uint = 16711680;
       
      
      private var §=!&§:String = "StateOverall";
      
      private var §`!M§:Array;
      
      private var §1Z§:int = 0;
      
      private var §6V§:String;
      
      private var §-X§:Array;
      
      private var §5!P§:§@§;
      
      private var §-!b§:MovieClip = null;
      
      private var § 3§:Number = 0;
      
      private var §6!]§:int = 0;
      
      private var §"c§:Boolean = false;
      
      private var §-p§:Array;
      
      public function HighscoreSidebar()
      {
         this.§-p§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§]s§ = null;
         this.§`!M§ = [];
         this.§1Z§ = 0;
         this.§6V§ = "";
         for each(_loc1_ in §#R§)
         {
            _loc2_ = new §]s§(_loc1_);
            this.§`!M§.push(_loc2_);
         }
         _loc2_ = new §]s§(HighscoreSidebar.§[!Z§);
         this.§`!M§.push(_loc2_);
         this.§6V§ = §[!Z§;
         this.§-!b§ = null;
         this.§ 3§ = 0;
         this.§6!]§ = 0;
         this.§"c§ = false;
      }
      
      public function §]m§(param1:XML, param2:§@§, param3:§"$§, param4:§&6§, param5:MovieClip = null) : void
      {
         this.§5!P§ = new §@§(param1,param2,param3,param5);
         this.changeState(this.§=!&§);
         this.§?F§(false);
         this.§-p§ = this.§5!P§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §?F§(param1:Boolean) : void
      {
         this.§5!P§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§5!P§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§5!P§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§5!P§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§5!P§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§5!P§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§5!P§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§5!P§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§5!P§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§5!P§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§5!P§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§5!P§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§5!P§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §]s§
      {
         var _loc2_:§]s§ = null;
         for each(_loc2_ in this.§`!M§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         var _loc4_:§]s§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.§2!§(HighscoreSidebar.§#R§[this.§9C§(this.§1Z§)]);
               break;
            case "LEFT":
               this.§2!§(HighscoreSidebar.§#R§[this.§>!M§(this.§1Z§)]);
               break;
            case "UP":
               if(this.§=!&§ == §&!4§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§[!Z§)) != null)
                  {
                     _loc4_.§;C§();
                     this.§!f§(HighscoreSidebar.§[!Z§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§6V§)) != null)
               {
                  _loc4_.§;C§();
                  this.§!f§(this.§6V§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§=!&§ == §&!4§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§[!Z§))
                  {
                     _loc4_.§2!6§();
                     this.§!f§(HighscoreSidebar.§[!Z§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§6V§))
               {
                  _loc4_.§2!6§();
                  this.§!f§(this.§6V§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§&!4§);
               this.§2!§(HighscoreSidebar.§[!Z§);
               break;
            case "TAB_SCORES":
               this.changeState(§2§);
               this.§2!§(HighscoreSidebar.§#R§[this.§1Z§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §2§:
               (this.§5!P§.getItemByName("TextField_Level_Num") as §+V§).§3x§.text = "";
               this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("Container_Highscores"));
               this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("Container_Sidebar_Buttons"));
               this.§5!P§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§5!P§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§2!§(this.§6V§,param2);
               break;
            case §&!4§:
               (this.§5!P§.getItemByName("TextField_Level_Num") as §+V§).§3x§.text = "";
               this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("Container_SideBar_Tab_Overall"));
               this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("Container_Highscores"));
               this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("Container_SideBar_Buttons"));
               this.§5!P§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§5!P§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§2!§(HighscoreSidebar.§[!Z§,param2);
               break;
            case §!!1§:
               this.changeState(§&!4§);
               this.enableHighScoreTab(false);
         }
         this.§=!&§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!P§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§5!P§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§5!P§.getItemByName("Button_Tab_Overall").setEnabled(true);
         }
         else
         {
            this.§5!P§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§5!P§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§5!P§.getItemByName("Button_Tab_Overall").setEnabled(false);
         }
      }
      
      private function §9C§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§#R§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §>!M§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§#R§.length - 1;
         }
         return param1;
      }
      
      public function §8"§(param1:§]s§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §]U§.§-v§)
         {
            _loc4_ = param1.§34§;
            do
            {
               _loc3_++;
               param1.§2!6§();
               _loc5_ = param1.§0p§;
               _loc6_ = 0;
               while(_loc6_ < §"!1§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §"!1§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §]U§.§-v§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §'E§)
                  {
                     _loc2_ = true;
                     param1.§;C§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §!f§(param1:String, param2:Boolean = true) : void
      {
         var levelNameInList:String = null;
         var highscoreHolderClip:MovieClip = null;
         var levelNum:String = null;
         var levelName:String = param1;
         var centerOnPlayer:Boolean = param2;
         for each(levelNameInList in §#R§)
         {
            if(levelNameInList == levelName)
            {
               this.§6V§ = levelName;
               this.§9!§(levelName);
               (this.§5!P§.getItemByName("TextField_MyScoreNumber") as §+V§).§3x§.text = "" + §2!S§.§<P§.§1!_§(levelName);
               break;
            }
         }
         if(levelName == §[!Z§)
         {
            (this.§5!P§.getItemByName("TextField_MyScoreNumber") as §+V§).§3x§.text = "" + §2!S§.§<P§.overallScore;
         }
         if(this.§5!P§)
         {
            highscoreHolderClip = this.§5!P§.getItemByName("Highscore_Holder").mClip;
            while(highscoreHolderClip.numChildren > 0)
            {
               highscoreHolderClip.removeChildAt(0);
            }
         }
         var currentLoader:§]s§ = this.getScoreLoaderById(levelName);
         if(currentLoader == null)
         {
            return;
         }
         if(currentLoader.§ true§)
         {
            if(currentLoader.§34§)
            {
               if(centerOnPlayer)
               {
                  this.§8"§(currentLoader);
               }
               this.§set §(currentLoader.§34§,currentLoader.§0p§,currentLoader.heikkiScore);
               this.§&!X§();
               this.§?F§(true);
               this.§5!P§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("Container_Highscores"));
               if(levelName != HighscoreSidebar.§[!Z§)
               {
                  try
                  {
                     levelNum = levelName.substring(2);
                     (this.§5!P§.getItemByName("TextField_Level_Num") as §+V§).§3x§.text = HighscoreSidebar.§1r§[int(levelNum) - 1];
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
         else
         {
            currentLoader.addEventListener(§3O§.§@!;§,this.§>f§);
         }
      }
      
      private function §>f§(param1:Event) : void
      {
         var levelName:String = null;
         var e:Event = param1;
         var currentLoader:§]s§ = e.currentTarget as §]s§;
         currentLoader.removeEventListener(§3O§.§@!;§,this.§>f§);
         this.§6V§ = currentLoader.levelId;
         if(this.§6V§ != HighscoreSidebar.§[!Z§)
         {
            levelName = this.§6V§;
            try
            {
               levelName = levelName.substring(2);
               (this.§5!P§.getItemByName("TextField_Level_Num") as §+V§).§3x§.text = HighscoreSidebar.§1r§[int(levelName) - 1];
            }
            catch(e:Error)
            {
            }
         }
         this.§8"§(currentLoader);
         this.§set §(currentLoader.§34§,currentLoader.§0p§,currentLoader.heikkiScore);
         this.§&!X§();
         this.§%!F§();
         this.§?F§(true);
         this.§5!P§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("Container_Highscores"));
         this.§!f§(this.§6V§);
      }
      
      private function §&!X§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §]U§.§-v§;
         if(_loc1_.name)
         {
            (this.§5!P§.getItemByName("TextField_MyScoreName") as §+V§).§3x§.text = _loc1_.name + ":";
         }
         else
         {
            (this.§5!P§.getItemByName("TextField_MyScoreName") as §+V§).§3x§.text = "My Score:";
         }
         if(this.§=!&§ == §2§)
         {
            for each(_loc2_ in §#R§)
            {
               if(_loc2_ == this.§6V§)
               {
                  this.§6V§ = this.§6V§;
                  this.§9!§(this.§6V§);
                  (this.§5!P§.getItemByName("TextField_MyScoreNumber") as §+V§).§3x§.text = "" + §2!S§.§<P§.§1!_§(this.§6V§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§6v§(param1);
      }
      
      private function §%!F§(param1:Boolean = true) : void
      {
         this.§6!]§ = 0;
         this.§"c§ = param1;
         this.§ 3§ = 0;
      }
      
      private function §6v§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§5!P§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§5!P§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§"c§)
         {
            if(this.§-!b§)
            {
               this.§-!b§.filters = [new GlowFilter(16777215,1,32,8,this.§ 3§,5,false,false)];
               for each(_loc4_ in this.§-p§)
               {
                  this.§-!b§.filters.push(_loc4_);
               }
            }
            if(int((this.§5!P§.getItemByName("TextField_MyScoreNumber") as §+V§).§3x§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§ 3§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§ 3§,3,false,false)];
               for each(_loc4_ in this.§-p§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§6!]§ > 3)
            {
               this.§ 3§ = 0;
               this.§6!]§ = 0;
               this.§-!b§ = null;
               this.§"c§ = false;
            }
            if(this.§6!]§ % 2 == 0)
            {
               this.§ 3§ += param1 / 200;
               if(this.§ 3§ > 5.5)
               {
                  this.§ 3§ = 5.5;
                  ++this.§6!]§;
               }
            }
            else
            {
               this.§ 3§ -= param1 / 200;
               if(this.§ 3§ < 0)
               {
                  this.§ 3§ = 0;
                  ++this.§6!]§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§-p§;
            _loc3_.filters = this.§-p§;
            if(this.§-!b§)
            {
               this.§-!b§.filters = this.§-p§;
            }
         }
      }
      
      private function §set §(param1:Array, param2:int, param3:int) : void
      {
         var _loc9_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:Object = null;
         var _loc4_:Boolean = false;
         this.§-X§ = param1;
         if(!this.§5!P§)
         {
            return;
         }
         var _loc5_:Class = §?!0§.§^e§("Component_HighscoreEntry");
         var _loc6_:MovieClip = this.§5!P§.getItemByName("Highscore_Holder").mClip;
         while(_loc6_.numChildren > 0)
         {
            _loc6_.removeChildAt(0);
         }
         this.§-!b§ = null;
         var _loc7_:int = 0;
         (this.§5!P§.getItemByName("TextField_HeikkiScoreNumber") as §+V§).§3x§.text = "" + param3;
         var _loc8_:int = 0;
         while(_loc8_ < §"!1§)
         {
            _loc9_ = _loc8_ + (param2 - 1) * §"!1§;
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
               if(§]U§.§-v§ && _loc11_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = §>!@§;
                  _loc10_.TextField_Name.textColor = §>!@§;
                  _loc10_.TextField_Points.textColor = §>!@§;
                  this.§-!b§ = _loc10_;
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
      
      public function §9!§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§#R§)
         {
            if(_loc3_ == param1)
            {
               this.§1Z§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §2!§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§]s§ = null;
         for each(_loc4_ in this.§`!M§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§^?§(param2) == false)
               {
                  if(param3)
                  {
                     this.§?F§(false);
                     this.§5!P§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§set §(_loc4_.§34§,_loc4_.§0p§,_loc4_.heikkiScore);
                     this.§&!X§();
                     this.§!f§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§?F§(false);
                  this.§5!P§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§5!P§.setObjectToFront(this.§5!P§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§3O§.§@!;§,this.§>f§);
                  break;
               }
            }
         }
      }
      
      public function §!t§() : void
      {
         var _loc1_:§]s§ = null;
         for each(_loc1_ in this.§`!M§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§@§ = null;
         this.§?F§(false);
         if(this.§5!P§)
         {
            _loc1_ = this.§5!P§.getItemByName("HighscoreSidebar") as §@§;
            this.§5!P§.clear();
            this.§5!P§ = null;
         }
      }
      
      public function get §9c§() : int
      {
         return this.§1Z§;
      }
      
      public function set container(param1:§@§) : void
      {
         this.§5!P§ = param1;
      }
      
      public function get container() : §@§
      {
         return this.§5!P§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§6V§;
      }
      
      public function get currentState() : String
      {
         return this.§=!&§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§6V§ = param1;
      }
   }
}
