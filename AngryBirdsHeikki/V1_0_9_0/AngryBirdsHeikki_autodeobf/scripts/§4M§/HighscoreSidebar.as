package §4M§
{
   import §"!S§.§<s§;
   import §#Q§.§8Y§;
   import §&!6§.§5r§;
   import §1Q§.§'!`§;
   import §@!]§.§%!S§;
   import §@!]§.§'!9§;
   import §@!]§.§7Y§;
   import §^E§.§9!Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §7Y§
   {
      
      public static const §'o§:String = "StateHighScores";
      
      public static const §"7§:String = "StateOverall";
      
      public static const §#f§:String = "StateDisableHighScores";
      
      public static const §6!_§:String = "TopOverallScores";
      
      public static const § null§:String = "2-13";
      
      public static const §?'§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10","2-11","2-12");
      
      public static const §+h§:Array = ["Britain","Hockenheim","Budapest","Spa","Monza","Singapore","Suzuka","Yeongam","New Delhi","Yas Marina","Austin","São Paulo"];
      
      public static const §95§:Array = ["18.6.2012","11.7.2012","25.7.2012","22.8.2012","5.9.2012","12.9.2012","26.9.2012","3.10.2012","17.10.2012","31.10.2012","7.11.2012","21.11.2012",""];
      
      public static const §'d§:int = 10;
      
      public static const §8s§:int = 5;
      
      public static const §]h§:uint = 16711680;
       
      
      private var §5!`§:String = "StateOverall";
      
      private var §&!_§:Array;
      
      private var §&;§:int = 0;
      
      private var §1!I§:String;
      
      private var §[!5§:Array;
      
      private var § !2§:§'!9§;
      
      private var §;D§:MovieClip = null;
      
      private var §5Z§:Number = 0;
      
      private var §5]§:int = 0;
      
      private var §;i§:Boolean = false;
      
      private var §,!8§:Array;
      
      public function HighscoreSidebar()
      {
         this.§,!8§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§ !a§ = null;
         this.§&!_§ = [];
         this.§&;§ = 0;
         this.§1!I§ = "";
         for each(_loc1_ in §?'§)
         {
            _loc2_ = new § !a§(_loc1_);
            this.§&!_§.push(_loc2_);
         }
         _loc2_ = new § !a§(HighscoreSidebar.§6!_§);
         this.§&!_§.push(_loc2_);
         this.§1!I§ = §6!_§;
         this.§;D§ = null;
         this.§5Z§ = 0;
         this.§5]§ = 0;
         this.§;i§ = false;
      }
      
      public function §1!`§(param1:XML, param2:§'!9§, param3:§8Y§, param4:§5r§, param5:MovieClip = null) : void
      {
         this.§ !2§ = new §'!9§(param1,param2,param3,param5);
         this.changeState(this.§5!`§);
         this.§]!X§(false);
         this.§,!8§ = this.§ !2§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §]!X§(param1:Boolean) : void
      {
         this.§ !2§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§ !2§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§ !2§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§ !2§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§ !2§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§ !2§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§ !2§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§ !2§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§ !2§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§ !2§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§ !2§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§ !2§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§ !2§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : § !a§
      {
         var _loc2_:§ !a§ = null;
         for each(_loc2_ in this.§&!_§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         var _loc4_:§ !a§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.§,X§(HighscoreSidebar.§?'§[this.§9f§(this.§&;§)]);
               break;
            case "LEFT":
               this.§,X§(HighscoreSidebar.§?'§[this.§!!"§(this.§&;§)]);
               break;
            case "UP":
               if(this.§5!`§ == §"7§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§6!_§)) != null)
                  {
                     _loc4_.§<d§();
                     this.§6&§(HighscoreSidebar.§6!_§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§1!I§)) != null)
               {
                  _loc4_.§<d§();
                  this.§6&§(this.§1!I§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§5!`§ == §"7§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§6!_§))
                  {
                     _loc4_.§2B§();
                     this.§6&§(HighscoreSidebar.§6!_§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§1!I§))
               {
                  _loc4_.§2B§();
                  this.§6&§(this.§1!I§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§"7§);
               this.§,X§(HighscoreSidebar.§6!_§);
               break;
            case "TAB_SCORES":
               this.changeState(§'o§);
               this.§,X§(HighscoreSidebar.§?'§[this.§&;§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §'o§:
               (this.§ !2§.getItemByName("TextField_Level_Num") as §%!S§).§9!"§.text = "";
               this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("Container_Highscores"));
               this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("Container_Sidebar_Buttons"));
               this.§ !2§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§ !2§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§,X§(this.§1!I§,param2);
               break;
            case §"7§:
               (this.§ !2§.getItemByName("TextField_Level_Num") as §%!S§).§9!"§.text = "";
               this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("Container_SideBar_Tab_Overall"));
               this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("Container_Highscores"));
               this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("Container_SideBar_Buttons"));
               this.§ !2§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§ !2§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§,X§(HighscoreSidebar.§6!_§,param2);
               break;
            case §#f§:
               this.changeState(§"7§);
               this.enableHighScoreTab(false);
         }
         this.§5!`§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !2§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§ !2§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§ !2§.getItemByName("Button_Tab_Overall").setEnabled(true);
         }
         else
         {
            this.§ !2§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§ !2§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§ !2§.getItemByName("Button_Tab_Overall").setEnabled(false);
         }
      }
      
      private function §9f§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§?'§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §!!"§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§?'§.length - 1;
         }
         return param1;
      }
      
      public function §8!!§(param1:§ !a§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §9!Q§.§`!$§)
         {
            _loc4_ = param1.§`w§;
            do
            {
               _loc3_++;
               param1.§2B§();
               _loc5_ = param1.§]2§;
               _loc6_ = 0;
               while(_loc6_ < §'d§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §'d§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §9!Q§.§`!$§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §8s§)
                  {
                     _loc2_ = true;
                     param1.§<d§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §6&§(param1:String, param2:Boolean = true) : void
      {
         var levelNameInList:String = null;
         var highscoreHolderClip:MovieClip = null;
         var levelNum:String = null;
         var levelName:String = param1;
         var centerOnPlayer:Boolean = param2;
         for each(levelNameInList in §?'§)
         {
            if(levelNameInList == levelName)
            {
               this.§1!I§ = levelName;
               this.§^d§(levelName);
               (this.§ !2§.getItemByName("TextField_MyScoreNumber") as §%!S§).§9!"§.text = "" + §"H§.§""§.§5!D§(levelName);
               break;
            }
         }
         if(levelName == §6!_§)
         {
            (this.§ !2§.getItemByName("TextField_MyScoreNumber") as §%!S§).§9!"§.text = "" + §"H§.§""§.overallScore;
         }
         if(this.§ !2§)
         {
            highscoreHolderClip = this.§ !2§.getItemByName("Highscore_Holder").mClip;
            while(highscoreHolderClip.numChildren > 0)
            {
               highscoreHolderClip.removeChildAt(0);
            }
         }
         var currentLoader:§ !a§ = this.getScoreLoaderById(levelName);
         if(currentLoader == null)
         {
            return;
         }
         if(currentLoader.§+B§)
         {
            if(currentLoader.§`w§)
            {
               if(centerOnPlayer)
               {
                  this.§8!!§(currentLoader);
               }
               this.§3"§(currentLoader.§`w§,currentLoader.§]2§,currentLoader.heikkiScore);
               this.§+2§();
               this.§]!X§(true);
               this.§ !2§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("Container_Highscores"));
               if(levelName != HighscoreSidebar.§6!_§)
               {
                  try
                  {
                     levelNum = levelName.substring(2);
                     (this.§ !2§.getItemByName("TextField_Level_Num") as §%!S§).§9!"§.text = HighscoreSidebar.§+h§[int(levelNum) - 1];
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
         else
         {
            currentLoader.addEventListener(§1!e§.§'!W§,this.§,O§);
         }
      }
      
      private function §,O§(param1:Event) : void
      {
         var levelName:String = null;
         var e:Event = param1;
         var currentLoader:§ !a§ = e.currentTarget as § !a§;
         currentLoader.removeEventListener(§1!e§.§'!W§,this.§,O§);
         this.§1!I§ = currentLoader.levelId;
         if(this.§1!I§ != HighscoreSidebar.§6!_§)
         {
            levelName = this.§1!I§;
            try
            {
               levelName = levelName.substring(2);
               (this.§ !2§.getItemByName("TextField_Level_Num") as §%!S§).§9!"§.text = HighscoreSidebar.§+h§[int(levelName) - 1];
            }
            catch(e:Error)
            {
            }
         }
         this.§8!!§(currentLoader);
         this.§3"§(currentLoader.§`w§,currentLoader.§]2§,currentLoader.heikkiScore);
         this.§+2§();
         this.§%!a§();
         this.§]!X§(true);
         this.§ !2§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("Container_Highscores"));
         this.§6&§(this.§1!I§);
      }
      
      private function §+2§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §9!Q§.§`!$§;
         if(_loc1_.name)
         {
            (this.§ !2§.getItemByName("TextField_MyScoreName") as §%!S§).§9!"§.text = _loc1_.name + ":";
         }
         else
         {
            (this.§ !2§.getItemByName("TextField_MyScoreName") as §%!S§).§9!"§.text = "My Score:";
         }
         if(this.§5!`§ == §'o§)
         {
            for each(_loc2_ in §?'§)
            {
               if(_loc2_ == this.§1!I§)
               {
                  this.§1!I§ = this.§1!I§;
                  this.§^d§(this.§1!I§);
                  (this.§ !2§.getItemByName("TextField_MyScoreNumber") as §%!S§).§9!"§.text = "" + §"H§.§""§.§5!D§(this.§1!I§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§"!>§(param1);
      }
      
      private function §%!a§(param1:Boolean = true) : void
      {
         this.§5]§ = 0;
         this.§;i§ = param1;
         this.§5Z§ = 0;
      }
      
      private function §"!>§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§ !2§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§ !2§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§;i§)
         {
            if(this.§;D§)
            {
               this.§;D§.filters = [new GlowFilter(16777215,1,32,8,this.§5Z§,5,false,false)];
               for each(_loc4_ in this.§,!8§)
               {
                  this.§;D§.filters.push(_loc4_);
               }
            }
            if(int((this.§ !2§.getItemByName("TextField_MyScoreNumber") as §%!S§).§9!"§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§5Z§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§5Z§,3,false,false)];
               for each(_loc4_ in this.§,!8§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§5]§ > 3)
            {
               this.§5Z§ = 0;
               this.§5]§ = 0;
               this.§;D§ = null;
               this.§;i§ = false;
            }
            if(this.§5]§ % 2 == 0)
            {
               this.§5Z§ += param1 / 200;
               if(this.§5Z§ > 5.5)
               {
                  this.§5Z§ = 5.5;
                  ++this.§5]§;
               }
            }
            else
            {
               this.§5Z§ -= param1 / 200;
               if(this.§5Z§ < 0)
               {
                  this.§5Z§ = 0;
                  ++this.§5]§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§,!8§;
            _loc3_.filters = this.§,!8§;
            if(this.§;D§)
            {
               this.§;D§.filters = this.§,!8§;
            }
         }
      }
      
      private function §3"§(param1:Array, param2:int, param3:int) : void
      {
         var _loc9_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:Object = null;
         var _loc4_:Boolean = false;
         this.§[!5§ = param1;
         if(!this.§ !2§)
         {
            return;
         }
         var _loc5_:Class = §<s§.§0b§("Component_HighscoreEntry");
         var _loc6_:MovieClip = this.§ !2§.getItemByName("Highscore_Holder").mClip;
         while(_loc6_.numChildren > 0)
         {
            _loc6_.removeChildAt(0);
         }
         this.§;D§ = null;
         var _loc7_:int = 0;
         (this.§ !2§.getItemByName("TextField_HeikkiScoreNumber") as §%!S§).§9!"§.text = "" + param3;
         var _loc8_:int = 0;
         while(_loc8_ < §'d§)
         {
            _loc9_ = _loc8_ + (param2 - 1) * §'d§;
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
               if(§9!Q§.§`!$§ && _loc11_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = §]h§;
                  _loc10_.TextField_Name.textColor = §]h§;
                  _loc10_.TextField_Points.textColor = §]h§;
                  this.§;D§ = _loc10_;
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
      
      public function §^d§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§?'§)
         {
            if(_loc3_ == param1)
            {
               this.§&;§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §,X§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§ !a§ = null;
         for each(_loc4_ in this.§&!_§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§0=§(param2) == false)
               {
                  if(param3)
                  {
                     this.§]!X§(false);
                     this.§ !2§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§3"§(_loc4_.§`w§,_loc4_.§]2§,_loc4_.heikkiScore);
                     this.§+2§();
                     this.§6&§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§]!X§(false);
                  this.§ !2§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§ !2§.setObjectToFront(this.§ !2§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§1!e§.§'!W§,this.§,O§);
                  break;
               }
            }
         }
      }
      
      public function §,!R§() : void
      {
         var _loc1_:§ !a§ = null;
         for each(_loc1_ in this.§&!_§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§'!9§ = null;
         this.§]!X§(false);
         if(this.§ !2§)
         {
            _loc1_ = this.§ !2§.getItemByName("HighscoreSidebar") as §'!9§;
            this.§ !2§.clear();
            this.§ !2§ = null;
         }
      }
      
      public function get §1M§() : int
      {
         return this.§&;§;
      }
      
      public function set container(param1:§'!9§) : void
      {
         this.§ !2§ = param1;
      }
      
      public function get container() : §'!9§
      {
         return this.§ !2§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§1!I§;
      }
      
      public function get currentState() : String
      {
         return this.§5!`§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§1!I§ = param1;
      }
   }
}
