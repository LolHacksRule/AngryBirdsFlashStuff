package
{
   import §#!&§.§1![§;
   import §#!&§.§59§;
   import §#!&§.§]i§;
   import §1!6§.§ !3§;
   import §4;§.§,h§;
   import §7!X§.§7g§;
   import §7S§.§3t§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import §var§.§+!^§;
   
   public class HighscoreSidebar implements §]i§
   {
      
      public static const §4^§:String = "StateHighScores";
      
      public static const §20§:String = "StateOverall";
      
      public static const §]M§:String = "StateDisableHighScores";
      
      public static const §;]§:String = "TopOverallScores";
      
      public static const §4!D§:String = "2-13";
      
      public static const §5z§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10","2-11","2-12");
      
      public static const §5i§:Array = ["Britain","Hockenheim","Budapest","Spa","Monza","Singapore","Suzuka","Yeongam","New Delhi","Yas Marina","Austin","São Paulo"];
      
      public static const §1L§:Array = ["18.6.2012","11.7.2012","25.7.2012","22.8.2012","5.9.2012","12.9.2012","26.9.2012","3.10.2012","17.10.2012","31.10.2012","7.11.2012","21.11.2012",""];
      
      public static const §?A§:int = 10;
      
      public static const §5w§:int = 5;
      
      public static const §7!I§:uint = 16711680;
       
      
      private var §+l§:String = "StateOverall";
      
      private var §`p§:Array;
      
      private var §^Q§:int = 0;
      
      private var §@y§:String;
      
      private var § each§:Array;
      
      private var §+!@§:§59§;
      
      private var §!F§:MovieClip = null;
      
      private var §>!4§:Number = 0;
      
      private var §87§:int = 0;
      
      private var §4"§:Boolean = false;
      
      private var §"f§:Array;
      
      public function HighscoreSidebar()
      {
         this.§"f§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§@_§ = null;
         this.§`p§ = [];
         this.§^Q§ = 0;
         this.§@y§ = "";
         for each(_loc1_ in §5z§)
         {
            _loc2_ = new §@_§(_loc1_);
            this.§`p§.push(_loc2_);
         }
         _loc2_ = new §@_§(HighscoreSidebar.§;]§);
         this.§`p§.push(_loc2_);
         this.§@y§ = §;]§;
         this.§!F§ = null;
         this.§>!4§ = 0;
         this.§87§ = 0;
         this.§4"§ = false;
      }
      
      public function §;!;§(param1:XML, param2:§59§, param3:§7g§, param4:§,h§, param5:MovieClip = null) : void
      {
         this.§+!@§ = new §59§(param1,param2,param3,param5);
         this.changeState(this.§+l§);
         this.§7Q§(false);
         this.§"f§ = this.§+!@§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §7Q§(param1:Boolean) : void
      {
         this.§+!@§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§+!@§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§+!@§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§+!@§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§+!@§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§+!@§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§+!@§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§+!@§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§+!@§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§+!@§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§+!@§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§+!@§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§+!@§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §@_§
      {
         var _loc2_:§@_§ = null;
         for each(_loc2_ in this.§`p§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         var _loc4_:§@_§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.§=!4§(HighscoreSidebar.§5z§[this.§;!=§(this.§^Q§)]);
               break;
            case "LEFT":
               this.§=!4§(HighscoreSidebar.§5z§[this.§&!0§(this.§^Q§)]);
               break;
            case "UP":
               if(this.§+l§ == §20§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§;]§)) != null)
                  {
                     _loc4_.§12§();
                     this.§?!b§(HighscoreSidebar.§;]§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.getScoreLoaderById(this.§@y§)) != null)
               {
                  _loc4_.§12§();
                  this.§?!b§(this.§@y§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§+l§ == §20§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§;]§))
                  {
                     _loc4_.§]5§();
                     this.§?!b§(HighscoreSidebar.§;]§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.getScoreLoaderById(this.§@y§))
               {
                  _loc4_.§]5§();
                  this.§?!b§(this.§@y§,false);
                  break;
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§20§);
               this.§=!4§(HighscoreSidebar.§;]§);
               break;
            case "TAB_SCORES":
               this.changeState(§4^§);
               this.§=!4§(HighscoreSidebar.§5z§[this.§^Q§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §4^§:
               (this.§+!@§.getItemByName("TextField_Level_Num") as §1![§).§2q§.text = "";
               this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("Container_Highscores"));
               this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("Container_Sidebar_Buttons"));
               this.§+!@§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§+!@§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§=!4§(this.§@y§,param2);
               break;
            case §20§:
               (this.§+!@§.getItemByName("TextField_Level_Num") as §1![§).§2q§.text = "";
               this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("Container_SideBar_Tab_Overall"));
               this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("Container_Highscores"));
               this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("Container_SideBar_Buttons"));
               this.§+!@§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§+!@§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§=!4§(HighscoreSidebar.§;]§,param2);
               break;
            case §]M§:
               this.changeState(§20§);
               this.enableHighScoreTab(false);
         }
         this.§+l§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+!@§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§+!@§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§+!@§.getItemByName("Button_Tab_Overall").setEnabled(true);
         }
         else
         {
            this.§+!@§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§+!@§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§+!@§.getItemByName("Button_Tab_Overall").setEnabled(false);
         }
      }
      
      private function §;!=§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§5z§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §&!0§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§5z§.length - 1;
         }
         return param1;
      }
      
      public function §&!5§(param1:§@_§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && § !3§.§@!`§)
         {
            _loc4_ = param1.§5!T§;
            do
            {
               _loc3_++;
               param1.§]5§();
               _loc5_ = param1.§>!#§;
               _loc6_ = 0;
               while(_loc6_ < §?A§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §?A§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && § !3§.§@!`§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §5w§)
                  {
                     _loc2_ = true;
                     param1.§12§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §?!b§(param1:String, param2:Boolean = true) : void
      {
         var levelNameInList:String = null;
         var highscoreHolderClip:MovieClip = null;
         var levelNum:String = null;
         var levelName:String = param1;
         var centerOnPlayer:Boolean = param2;
         for each(levelNameInList in §5z§)
         {
            if(levelNameInList == levelName)
            {
               this.§@y§ = levelName;
               this.§;6§(levelName);
               (this.§+!@§.getItemByName("TextField_MyScoreNumber") as §1![§).§2q§.text = "" + §1F§.§=l§.§3!Q§(levelName);
               break;
            }
         }
         if(levelName == §;]§)
         {
            (this.§+!@§.getItemByName("TextField_MyScoreNumber") as §1![§).§2q§.text = "" + §1F§.§=l§.overallScore;
         }
         if(this.§+!@§)
         {
            highscoreHolderClip = this.§+!@§.getItemByName("Highscore_Holder").mClip;
            while(highscoreHolderClip.numChildren > 0)
            {
               highscoreHolderClip.removeChildAt(0);
            }
         }
         var currentLoader:§@_§ = this.getScoreLoaderById(levelName);
         if(currentLoader == null)
         {
            return;
         }
         if(currentLoader.§[§)
         {
            if(currentLoader.§5!T§)
            {
               if(centerOnPlayer)
               {
                  this.§&!5§(currentLoader);
               }
               this.§@J§(currentLoader.§5!T§,currentLoader.§>!#§,currentLoader.heikkiScore);
               this.§>F§();
               this.§7Q§(true);
               this.§+!@§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("Container_Highscores"));
               if(levelName != HighscoreSidebar.§;]§)
               {
                  try
                  {
                     levelNum = levelName.substring(2);
                     (this.§+!@§.getItemByName("TextField_Level_Num") as §1![§).§2q§.text = HighscoreSidebar.§5i§[int(levelNum) - 1];
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
         else
         {
            currentLoader.addEventListener(§;k§.§-T§,this.§^G§);
         }
      }
      
      private function §^G§(param1:Event) : void
      {
         var levelName:String = null;
         var e:Event = param1;
         var currentLoader:§@_§ = e.currentTarget as §@_§;
         currentLoader.removeEventListener(§;k§.§-T§,this.§^G§);
         this.§@y§ = currentLoader.levelId;
         if(this.§@y§ != HighscoreSidebar.§;]§)
         {
            levelName = this.§@y§;
            try
            {
               levelName = levelName.substring(2);
               (this.§+!@§.getItemByName("TextField_Level_Num") as §1![§).§2q§.text = HighscoreSidebar.§5i§[int(levelName) - 1];
            }
            catch(e:Error)
            {
            }
         }
         this.§&!5§(currentLoader);
         this.§@J§(currentLoader.§5!T§,currentLoader.§>!#§,currentLoader.heikkiScore);
         this.§>F§();
         this.§;!W§();
         this.§7Q§(true);
         this.§+!@§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("Container_Highscores"));
         this.§?!b§(this.§@y§);
      }
      
      private function §>F§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = § !3§.§@!`§;
         if(_loc1_.name)
         {
            (this.§+!@§.getItemByName("TextField_MyScoreName") as §1![§).§2q§.text = _loc1_.name + ":";
         }
         else
         {
            (this.§+!@§.getItemByName("TextField_MyScoreName") as §1![§).§2q§.text = "My Score:";
         }
         if(this.§+l§ == §4^§)
         {
            for each(_loc2_ in §5z§)
            {
               if(_loc2_ == this.§@y§)
               {
                  this.§@y§ = this.§@y§;
                  this.§;6§(this.§@y§);
                  (this.§+!@§.getItemByName("TextField_MyScoreNumber") as §1![§).§2q§.text = "" + §1F§.§=l§.§3!Q§(this.§@y§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§;=§(param1);
      }
      
      private function §;!W§(param1:Boolean = true) : void
      {
         this.§87§ = 0;
         this.§4"§ = param1;
         this.§>!4§ = 0;
      }
      
      private function §;=§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§+!@§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§+!@§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§4"§)
         {
            if(this.§!F§)
            {
               this.§!F§.filters = [new GlowFilter(16777215,1,32,8,this.§>!4§,5,false,false)];
               for each(_loc4_ in this.§"f§)
               {
                  this.§!F§.filters.push(_loc4_);
               }
            }
            if(int((this.§+!@§.getItemByName("TextField_MyScoreNumber") as §1![§).§2q§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§>!4§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§>!4§,3,false,false)];
               for each(_loc4_ in this.§"f§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§87§ > 3)
            {
               this.§>!4§ = 0;
               this.§87§ = 0;
               this.§!F§ = null;
               this.§4"§ = false;
            }
            if(this.§87§ % 2 == 0)
            {
               this.§>!4§ += param1 / 200;
               if(this.§>!4§ > 5.5)
               {
                  this.§>!4§ = 5.5;
                  ++this.§87§;
               }
            }
            else
            {
               this.§>!4§ -= param1 / 200;
               if(this.§>!4§ < 0)
               {
                  this.§>!4§ = 0;
                  ++this.§87§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§"f§;
            _loc3_.filters = this.§"f§;
            if(this.§!F§)
            {
               this.§!F§.filters = this.§"f§;
            }
         }
      }
      
      private function §@J§(param1:Array, param2:int, param3:int) : void
      {
         var _loc9_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:Object = null;
         var _loc4_:Boolean = false;
         this.§ each§ = param1;
         if(!this.§+!@§)
         {
            return;
         }
         var _loc5_:Class = §3t§.§#v§("Component_HighscoreEntry");
         var _loc6_:MovieClip = this.§+!@§.getItemByName("Highscore_Holder").mClip;
         while(_loc6_.numChildren > 0)
         {
            _loc6_.removeChildAt(0);
         }
         this.§!F§ = null;
         var _loc7_:int = 0;
         (this.§+!@§.getItemByName("TextField_HeikkiScoreNumber") as §1![§).§2q§.text = "" + param3;
         var _loc8_:int = 0;
         while(_loc8_ < §?A§)
         {
            _loc9_ = _loc8_ + (param2 - 1) * §?A§;
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
               if(§ !3§.§@!`§ && _loc11_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = §7!I§;
                  _loc10_.TextField_Name.textColor = §7!I§;
                  _loc10_.TextField_Points.textColor = §7!I§;
                  this.§!F§ = _loc10_;
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
      
      public function §;6§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§5z§)
         {
            if(_loc3_ == param1)
            {
               this.§^Q§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §=!4§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§@_§ = null;
         for each(_loc4_ in this.§`p§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§+=§(param2) == false)
               {
                  if(param3)
                  {
                     this.§7Q§(false);
                     this.§+!@§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§@J§(_loc4_.§5!T§,_loc4_.§>!#§,_loc4_.heikkiScore);
                     this.§>F§();
                     this.§?!b§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§7Q§(false);
                  this.§+!@§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§+!@§.setObjectToFront(this.§+!@§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§;k§.§-T§,this.§^G§);
                  break;
               }
            }
         }
      }
      
      public function §@!2§() : void
      {
         var _loc1_:§@_§ = null;
         for each(_loc1_ in this.§`p§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§59§ = null;
         this.§7Q§(false);
         if(this.§+!@§)
         {
            _loc1_ = this.§+!@§.getItemByName("HighscoreSidebar") as §59§;
            this.§+!@§.clear();
            this.§+!@§ = null;
         }
      }
      
      public function get §0i§() : int
      {
         return this.§^Q§;
      }
      
      public function set container(param1:§59§) : void
      {
         this.§+!@§ = param1;
      }
      
      public function get container() : §59§
      {
         return this.§+!@§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§@y§;
      }
      
      public function get currentState() : String
      {
         return this.§+l§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§@y§ = param1;
      }
   }
}
