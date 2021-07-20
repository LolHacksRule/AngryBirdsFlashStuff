package §=!§
{
   import §#%§.§70§;
   import §+!M§.§7!0§;
   import §-!f§.§ else§;
   import §>!G§.§6!9§;
   import §?v§.§&!h§;
   import §]!&§.§,Y§;
   import §]!&§.§1E§;
   import §]!&§.§5!5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §,Y§
   {
      
      public static const §%!L§:String = "StateHighScores";
      
      public static const §^]§:String = "StateOverall";
      
      public static const §+W§:String = "StateDisableHighScores";
      
      public static const §!!2§:String = "TopOverallScores";
      
      public static const §!!Q§:String = "2-13";
      
      public static const §9'§:Array = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10","2-11","2-12");
      
      public static const §[[§:Array = ["Britain","Hockenheim","Budapest","Spa","Monza","Singapore","Suzuka","Yeongam","New Delhi","Yas Marina","Austin","São Paulo"];
      
      public static const §8!O§:Array = ["18.6.2012","11.7.2012","25.7.2012","22.8.2012","5.9.2012","12.9.2012","26.9.2012","3.10.2012","17.10.2012","31.10.2012","7.11.2012","21.11.2012",""];
      
      public static const §[!b§:int = 10;
      
      public static const §"6§:int = 5;
      
      public static const §2! §:uint = 16711680;
       
      
      private var §!W§:String = "StateOverall";
      
      private var §2^§:Array;
      
      private var §1b§:int = 0;
      
      private var §9!_§:String;
      
      private var §[!Q§:Array;
      
      private var §'v§:§5!5§;
      
      private var §!g§:MovieClip = null;
      
      private var §@=§:Number = 0;
      
      private var §>!g§:int = 0;
      
      private var §=f§:Boolean = false;
      
      private var §^j§:Array;
      
      public function HighscoreSidebar()
      {
         this.§^j§ = [];
         super();
         this.reset();
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§3,§ = null;
         this.§2^§ = [];
         this.§1b§ = 0;
         this.§9!_§ = "";
         for each(_loc1_ in §9'§)
         {
            _loc2_ = new §3,§(_loc1_);
            this.§2^§.push(_loc2_);
         }
         _loc2_ = new §3,§(HighscoreSidebar.§!!2§);
         this.§2^§.push(_loc2_);
         this.§9!_§ = §!!2§;
         this.§!g§ = null;
         this.§@=§ = 0;
         this.§>!g§ = 0;
         this.§=f§ = false;
      }
      
      public function § Z§(param1:XML, param2:§5!5§, param3:§ else§, param4:§6!9§, param5:MovieClip = null) : void
      {
         this.§'v§ = new §5!5§(param1,param2,param3,param5);
         this.changeState(this.§!W§);
         this.§0!e§(false);
         this.§^j§ = this.§'v§.getItemByName("TextField_MyScoreNumber").mClip.filters;
      }
      
      private function §0!e§(param1:Boolean) : void
      {
         this.§'v§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         this.§'v§.getItemByName("Button_Credits").setEnabled(param1);
         if(param1)
         {
            this.§'v§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§'v§.getItemByName("Button_Credits").setVisibility(true);
         }
         else
         {
            this.§'v§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         this.§'v§.getItemByName("Button_Tutorial").setEnabled(param1);
         if(param1)
         {
            this.§'v§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§'v§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else
         {
            this.§'v§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         this.§'v§.getItemByName("Button_Logout").setEnabled(param1);
         if(param1)
         {
            this.§'v§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§'v§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§'v§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function getScoreLoaderById(param1:String) : §3,§
      {
         var _loc2_:§3,§ = null;
         for each(_loc2_ in this.§2^§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         var _loc4_:§3,§ = null;
         switch(param2)
         {
            case "RIGHT":
               this.§]%§(HighscoreSidebar.§9'§[this.§3?§(this.§1b§)]);
               break;
            case "LEFT":
               this.§]%§(HighscoreSidebar.§9'§[this.§;I§(this.§1b§)]);
               break;
            case "UP":
               if(this.§!W§ == §^]§)
               {
                  if((_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§!!2§)) != null)
                  {
                     _loc4_.§4!?§();
                     this.§']§(HighscoreSidebar.§!!2§,false);
                  }
               }
               else if((_loc4_ = this.getScoreLoaderById(this.§9!_§)) != null)
               {
                  _loc4_.§4!?§();
                  this.§']§(this.§9!_§,false);
               }
               break;
            case "DOWN":
               if(this.§!W§ == §^]§)
               {
                  if(_loc4_ = this.getScoreLoaderById(HighscoreSidebar.§!!2§))
                  {
                     _loc4_.§1!E§();
                     this.§']§(HighscoreSidebar.§!!2§,false);
                  }
               }
               else if(_loc4_ = this.getScoreLoaderById(this.§9!_§))
               {
                  _loc4_.§1!E§();
                  this.§']§(this.§9!_§,false);
               }
               break;
            case "TAB_DRUMS":
               this.changeState(§^]§);
               this.§]%§(HighscoreSidebar.§!!2§);
               break;
            case "TAB_SCORES":
               this.changeState(§%!L§);
               this.§]%§(HighscoreSidebar.§9'§[this.§1b§]);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         switch(param1)
         {
            case §%!L§:
               (this.§'v§.getItemByName("TextField_Level_Num") as §1E§).§;+§.text = "";
               this.§'v§.setObjectToFront(this.§'v§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§'v§.setObjectToFront(this.§'v§.getItemByName("Container_Highscores"));
               this.§'v§.setObjectToFront(this.§'v§.getItemByName("Container_Sidebar_Buttons"));
               this.§'v§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§'v§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§]%§(this.§9!_§,param2);
               break;
            case §^]§:
               (this.§'v§.getItemByName("TextField_Level_Num") as §1E§).§;+§.text = "";
               this.§'v§.setObjectToFront(this.§'v§.getItemByName("Container_SideBar_Tab_Overall"));
               this.§'v§.setObjectToFront(this.§'v§.getItemByName("Container_Highscores"));
               this.§'v§.setObjectToFront(this.§'v§.getItemByName("Container_SideBar_Buttons"));
               this.§'v§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§'v§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§]%§(HighscoreSidebar.§!!2§,param2);
               break;
            case §+W§:
               this.changeState(§^]§);
               this.enableHighScoreTab(false);
         }
         this.§!W§ = param1;
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'v§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 1;
            this.§'v§.getItemByName("Button_Tab_Score").setEnabled(true);
            this.§'v§.getItemByName("Button_Tab_Overall").setEnabled(true);
         }
         else
         {
            this.§'v§.getItemByName("Container_SideBar_Tab_Scores").mClip.alpha = 0.4;
            this.§'v§.getItemByName("Button_Tab_Score").setEnabled(false);
            this.§'v§.getItemByName("Button_Tab_Overall").setEnabled(false);
         }
      }
      
      private function §3?§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§9'§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §;I§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§9'§.length - 1;
         }
         return param1;
      }
      
      public function §]!C§(param1:§3,§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §70§.§6d§)
         {
            _loc4_ = param1.§=!N§;
            do
            {
               _loc3_++;
               param1.§1!E§();
               _loc5_ = param1.§#!4§;
               _loc6_ = 0;
               while(_loc6_ < §[!b§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §[!b§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §70§.§6d§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §"6§)
                  {
                     _loc2_ = true;
                     param1.§4!?§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §']§(param1:String, param2:Boolean = true) : void
      {
         var levelNameInList:String = null;
         var highscoreHolderClip:MovieClip = null;
         var levelNum:String = null;
         var levelName:String = param1;
         var centerOnPlayer:Boolean = param2;
         for each(levelNameInList in §9'§)
         {
            if(levelNameInList == levelName)
            {
               this.§9!_§ = levelName;
               this.§'i§(levelName);
               (this.§'v§.getItemByName("TextField_MyScoreNumber") as §1E§).§;+§.text = "" + §"!R§.§0!P§.§&!,§(levelName);
               break;
            }
         }
         if(levelName == §!!2§)
         {
            (this.§'v§.getItemByName("TextField_MyScoreNumber") as §1E§).§;+§.text = "" + §"!R§.§0!P§.overallScore;
         }
         if(this.§'v§)
         {
            highscoreHolderClip = this.§'v§.getItemByName("Highscore_Holder").mClip;
            while(highscoreHolderClip.numChildren > 0)
            {
               highscoreHolderClip.removeChildAt(0);
            }
         }
         var currentLoader:§3,§ = this.getScoreLoaderById(levelName);
         if(currentLoader == null)
         {
            return;
         }
         if(currentLoader.§+1§)
         {
            if(currentLoader.§=!N§)
            {
               if(centerOnPlayer)
               {
                  this.§]!C§(currentLoader);
               }
               this.§^!,§(currentLoader.§=!N§,currentLoader.§#!4§,currentLoader.heikkiScore);
               this.§08§();
               this.§0!e§(true);
               this.§'v§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§'v§.setObjectToFront(this.§'v§.getItemByName("Container_Highscores"));
               if(levelName != HighscoreSidebar.§!!2§)
               {
                  try
                  {
                     levelNum = levelName.substring(2);
                     (this.§'v§.getItemByName("TextField_Level_Num") as §1E§).§;+§.text = HighscoreSidebar.§[[§[int(levelNum) - 1];
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
         else
         {
            currentLoader.addEventListener(§%[§.§-!D§,this.§%S§);
         }
      }
      
      private function §%S§(param1:Event) : void
      {
         var levelName:String = null;
         var e:Event = param1;
         var currentLoader:§3,§ = e.currentTarget as §3,§;
         currentLoader.removeEventListener(§%[§.§-!D§,this.§%S§);
         this.§9!_§ = currentLoader.levelId;
         if(this.§9!_§ != HighscoreSidebar.§!!2§)
         {
            levelName = this.§9!_§;
            try
            {
               levelName = levelName.substring(2);
               (this.§'v§.getItemByName("TextField_Level_Num") as §1E§).§;+§.text = HighscoreSidebar.§[[§[int(levelName) - 1];
            }
            catch(e:Error)
            {
            }
         }
         this.§]!C§(currentLoader);
         this.§^!,§(currentLoader.§=!N§,currentLoader.§#!4§,currentLoader.heikkiScore);
         this.§08§();
         this.§&M§();
         this.§0!e§(true);
         this.§'v§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§'v§.setObjectToFront(this.§'v§.getItemByName("Container_Highscores"));
         this.§']§(this.§9!_§);
      }
      
      private function §08§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §70§.§6d§;
         if(_loc1_.name)
         {
            (this.§'v§.getItemByName("TextField_MyScoreName") as §1E§).§;+§.text = _loc1_.name + ":";
         }
         else
         {
            (this.§'v§.getItemByName("TextField_MyScoreName") as §1E§).§;+§.text = "My Score:";
         }
         if(this.§!W§ == §%!L§)
         {
            for each(_loc2_ in §9'§)
            {
               if(_loc2_ == this.§9!_§)
               {
                  this.§9!_§ = this.§9!_§;
                  this.§'i§(this.§9!_§);
                  (this.§'v§.getItemByName("TextField_MyScoreNumber") as §1E§).§;+§.text = "" + §"!R§.§0!P§.§&!,§(this.§9!_§);
                  break;
               }
            }
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§=G§(param1);
      }
      
      private function §&M§(param1:Boolean = true) : void
      {
         this.§>!g§ = 0;
         this.§=f§ = param1;
         this.§@=§ = 0;
      }
      
      private function §=G§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§'v§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§'v§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§=f§)
         {
            if(this.§!g§)
            {
               this.§!g§.filters = [new GlowFilter(16777215,1,32,8,this.§@=§,5,false,false)];
               for each(_loc4_ in this.§^j§)
               {
                  this.§!g§.filters.push(_loc4_);
               }
            }
            if(int((this.§'v§.getItemByName("TextField_MyScoreNumber") as §1E§).§;+§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§@=§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§@=§,3,false,false)];
               for each(_loc4_ in this.§^j§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§>!g§ > 3)
            {
               this.§@=§ = 0;
               this.§>!g§ = 0;
               this.§!g§ = null;
               this.§=f§ = false;
            }
            if(this.§>!g§ % 2 == 0)
            {
               this.§@=§ += param1 / 200;
               if(this.§@=§ > 5.5)
               {
                  this.§@=§ = 5.5;
                  ++this.§>!g§;
               }
            }
            else
            {
               this.§@=§ -= param1 / 200;
               if(this.§@=§ < 0)
               {
                  this.§@=§ = 0;
                  ++this.§>!g§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§^j§;
            _loc3_.filters = this.§^j§;
            if(this.§!g§)
            {
               this.§!g§.filters = this.§^j§;
            }
         }
      }
      
      private function §^!,§(param1:Array, param2:int, param3:int) : void
      {
         var _loc9_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:Object = null;
         var _loc4_:Boolean = false;
         this.§[!Q§ = param1;
         if(!this.§'v§)
         {
            return;
         }
         var _loc5_:Class = §&!h§.§#Q§("Component_HighscoreEntry");
         var _loc6_:MovieClip = this.§'v§.getItemByName("Highscore_Holder").mClip;
         while(_loc6_.numChildren > 0)
         {
            _loc6_.removeChildAt(0);
         }
         this.§!g§ = null;
         var _loc7_:int = 0;
         (this.§'v§.getItemByName("TextField_HeikkiScoreNumber") as §1E§).§;+§.text = "" + param3;
         var _loc8_:int = 0;
         while(_loc8_ < §[!b§)
         {
            _loc9_ = _loc8_ + (param2 - 1) * §[!b§;
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
               if(§70§.§6d§ && _loc11_.isPlayer)
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
                  _loc10_.TextField_Rank.textColor = §2! §;
                  _loc10_.TextField_Name.textColor = §2! §;
                  _loc10_.TextField_Points.textColor = §2! §;
                  this.§!g§ = _loc10_;
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
      
      public function §'i§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§9'§)
         {
            if(_loc3_ == param1)
            {
               this.§1b§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §]%§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§3,§ = null;
         for each(_loc4_ in this.§2^§)
         {
            if(_loc4_.levelId == param1)
            {
               if(_loc4_.§;_§(param2) == false)
               {
                  if(param3)
                  {
                     this.§0!e§(false);
                     this.§'v§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§'v§.setObjectToFront(this.§'v§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§^!,§(_loc4_.§=!N§,_loc4_.§#!4§,_loc4_.heikkiScore);
                     this.§08§();
                     this.§']§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§0!e§(false);
                  this.§'v§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§'v§.setObjectToFront(this.§'v§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§%[§.§-!D§,this.§%S§);
                  break;
               }
            }
         }
      }
      
      public function §#v§() : void
      {
         var _loc1_:§3,§ = null;
         for each(_loc1_ in this.§2^§)
         {
            _loc1_.clearReloadTimer();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§5!5§ = null;
         this.§0!e§(false);
         if(this.§'v§)
         {
            _loc1_ = this.§'v§.getItemByName("HighscoreSidebar") as §5!5§;
            this.§'v§.clear();
            this.§'v§ = null;
         }
      }
      
      public function get §`E§() : int
      {
         return this.§1b§;
      }
      
      public function set container(param1:§5!5§) : void
      {
         this.§'v§ = param1;
      }
      
      public function get container() : §5!5§
      {
         return this.§'v§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§9!_§;
      }
      
      public function get currentState() : String
      {
         return this.§!W§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         this.§9!_§ = param1;
      }
   }
}
