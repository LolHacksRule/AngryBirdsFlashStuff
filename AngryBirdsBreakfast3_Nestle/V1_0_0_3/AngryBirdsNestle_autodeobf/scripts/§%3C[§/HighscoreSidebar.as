package §<[§
{
   import §3!!§.§5" §;
   import §3!!§.native;
   import §=X§.§3j§;
   import §@f§.§&!"§;
   import com.rovio.assets.§^1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §8c§:String = "StateHighScoresLocal";
      
      public static const §<!?§:String = "StateHighScoresGlobal";
      
      public static const §2>§:String = "StateDisableHighScores";
      
      public static const §,!q§:String = "StateLoadingLevelHighScores";
      
      public static const §5+§:String = "credits_level";
      
      public static const §'x§:Array = new Array("1-1","1-2","1-3","1-4","1-5","2-1","2-2","2-3","2-4","2-5");
      
      public static const §1!`§:Array = ["1","2","3","4","5","6","7","8","9","10"];
      
      public static const §<7§:int = 5;
      
      public static const §!!f§:int = 10;
      
      public static const §<A§:int = 10;
      
      public static const §7!C§:uint = 16711680;
       
      
      private var §?t§:String = null;
      
      private var §2!s§:Array;
      
      private var §#C§:int = 0;
      
      private var §;>§:String = null;
      
      private var §"F§:Array;
      
      private var §#t§:§5" §;
      
      private var §>!2§:MovieClip = null;
      
      private var §-![§:Number = 0;
      
      private var §?!H§:int = 0;
      
      private var § !!§:Boolean = false;
      
      private var §9!e§:Array;
      
      public var §8!k§:Boolean = false;
      
      private var §-_§:Boolean;
      
      private var §3!7§:Boolean;
      
      private var §@!R§:Boolean;
      
      private var §>l§:Number;
      
      private var § get§:Boolean;
      
      public function HighscoreSidebar()
      {
         this.§9!e§ = [];
         super();
         this.reset();
      }
      
      public function §%!U§() : void
      {
         this.§8!k§ = !this.§8!k§;
      }
      
      public function reset() : void
      {
         var _loc1_:String = null;
         var _loc2_:§%0§ = null;
         var _loc3_:§%0§ = null;
         this.§2!s§ = [];
         this.§#C§ = 0;
         for each(_loc1_ in §'x§)
         {
            _loc2_ = new §%0§(_loc1_,true);
            this.§2!s§.push(_loc2_);
            _loc3_ = new §%0§(_loc1_,false);
            this.§2!s§.push(_loc3_);
         }
         this.§;>§ = §'x§[0];
         this.§>!2§ = null;
         this.§-![§ = 0;
         this.§?!H§ = 0;
         this.§ !!§ = false;
         this.§>l§ = 0;
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:§%0§ = null;
         for each(_loc1_ in this.§2!s§)
         {
            _loc1_.removeEventListener(§"!5§.§,!s§,this.§,"'§);
         }
      }
      
      public function §"!J§(param1:§5" §) : void
      {
         this.§#t§ = param1;
         this.§9!e§ = this.§#t§.getItemByName("TextField_MyScoreNumber").mClip.filters;
         this.§ D§(this.§?t§);
      }
      
      private function §`=§(param1:Boolean) : void
      {
         this.§#t§.getItemByName("Container_Highscores").setVisibility(param1);
      }
      
      public function §,v§(param1:Boolean = true) : void
      {
         this.§#t§.getItemByName("Button_Credits").setEnabled(param1,true);
         if(param1)
         {
            this.§#t§.getItemByName("Button_Credits").mClip.alpha = 1;
            this.§#t§.getItemByName("Button_Credits").setVisibility(true);
         }
         else if(this.§#t§.getItemByName("Button_Credits").visible)
         {
            this.§#t§.getItemByName("Button_Credits").mClip.alpha = 0.6;
         }
         this.§-_§ = param1;
      }
      
      public function §67§(param1:Boolean = true) : void
      {
         this.§#t§.getItemByName("Button_Logout").setEnabled(param1,true);
         this.§@!R§ = param1;
         if(param1)
         {
            this.§#t§.getItemByName("Button_Logout").mClip.alpha = 1;
            this.§#t§.getItemByName("Button_Logout").setVisibility(true);
         }
         else
         {
            this.§#t§.getItemByName("Button_Logout").mClip.alpha = 0.6;
         }
      }
      
      public function §2E§(param1:Boolean = true) : void
      {
         this.§#t§.getItemByName("Button_Tutorial").setEnabled(param1,true);
         if(param1)
         {
            this.§#t§.getItemByName("Button_Tutorial").mClip.alpha = 1;
            this.§#t§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         else if(this.§#t§.getItemByName("Button_Tutorial").visible)
         {
            this.§#t§.getItemByName("Button_Tutorial").mClip.alpha = 0.6;
         }
         this.§3!7§ = param1;
      }
      
      public function §>3§(param1:Boolean = true) : void
      {
         this.§#t§.getItemByName("Button_Mute").setEnabled(param1,true);
         if(param1)
         {
            this.§#t§.getItemByName("Button_Mute").mClip.alpha = 1;
            this.§#t§.getItemByName("Button_Mute").setVisibility(true);
            this.§#t§.getItemByName("MovieClip_SoundOff").mClip.alpha = 1;
            this.§#t§.getItemByName("MovieClip_SoundOff").setVisibility(true);
         }
         else
         {
            this.§#t§.getItemByName("Button_Mute").mClip.alpha = 0.6;
            this.§#t§.getItemByName("MovieClip_SoundOff").mClip.alpha = 0.6;
         }
      }
      
      public function §-M§(param1:Boolean) : void
      {
      }
      
      public function §8?§(param1:String) : §%0§
      {
         var _loc2_:§%0§ = null;
         for each(_loc2_ in this.§2!s§)
         {
            if(_loc2_ != null && _loc2_.levelId == param1 && _loc2_.§-!>§ == this.§ get§)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §=<§(param1:String, param2:Boolean) : §%0§
      {
         var _loc3_:§%0§ = null;
         for each(_loc3_ in this.§2!s§)
         {
            if(_loc3_ != null && _loc3_.levelId == param1 && _loc3_.§-!>§ == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §>5§(param1:int, param2:String, param3:§&!"§) : void
      {
         var _loc4_:§%0§ = null;
         switch(param2)
         {
            case "BUTTON_SCORES":
               this.§ D§(§8c§);
               this.§#!^§(HighscoreSidebar.§'x§[this.§#C§]);
               break;
            case "BUTTON_OVERALL":
               this.§ D§(§<!?§);
               this.§#!^§(HighscoreSidebar.§'x§[this.§#C§]);
               break;
            case "RIGHT":
               if(this.§?t§ == §<!?§)
               {
                  this.§#!^§(HighscoreSidebar.§'x§[this.§>!H§(this.§#C§)]);
               }
               else
               {
                  this.§#!^§(HighscoreSidebar.§'x§[this.§>!H§(this.§#C§)]);
               }
               break;
            case "LEFT":
               if(this.§?t§ == §<!?§)
               {
                  this.§#!^§(HighscoreSidebar.§'x§[this.§#!J§(this.§#C§)]);
                  break;
               }
               this.§#!^§(HighscoreSidebar.§'x§[this.§#!J§(this.§#C§)]);
               break;
            case "UP":
               if(this.§?t§ == §<!?§)
               {
                  if((_loc4_ = this.§8?§(this.§;>§)) != null)
                  {
                     _loc4_.§5o§();
                     this.§1!o§(this.§;>§,false);
                     break;
                  }
                  break;
               }
               if((_loc4_ = this.§8?§(this.§;>§)) != null)
               {
                  _loc4_.§5o§();
                  this.§1!o§(this.§;>§,false);
                  break;
               }
               break;
            case "DOWN":
               if(this.§?t§ == §<!?§)
               {
                  if(_loc4_ = this.§8?§(this.§;>§))
                  {
                     _loc4_.§+'§();
                     this.§1!o§(this.§;>§,false);
                     break;
                  }
                  break;
               }
               if(_loc4_ = this.§8?§(this.§;>§))
               {
                  _loc4_.§+'§();
                  this.§1!o§(this.§;>§,false);
                  break;
               }
               break;
         }
      }
      
      public function § D§(param1:String, param2:Boolean = false) : void
      {
         this.§?t§ = param1;
         switch(param1)
         {
            case §8c§:
               this.§ get§ = true;
               this.§#t§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§#t§.getItemByName("TextField_Level_Num") as native).§&!K§.text = "";
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_SideBar_Tab_Scores"));
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Board_Selection"));
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Highscores"));
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Sidebar_Buttons"));
               this.§#t§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§#t§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§#t§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§#t§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§#t§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§#t§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§#t§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§#t§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§"!d§();
               this.§-M§(false);
               this.§#!^§(this.§;>§,param2);
               break;
            case §<!?§:
               this.§ get§ = false;
               this.§#t§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               (this.§#t§.getItemByName("TextField_Level_Num") as native).§&!K§.text = "";
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Sidebar_Tab_Overall"));
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Board_Selection"));
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Highscores"));
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Sidebar_Buttons"));
               this.§#t§.getItemByName("Button_ArrowLeft").setEnabled(true);
               this.§#t§.getItemByName("Button_ArrowRight").setEnabled(true);
               this.§#t§.getItemByName("Button_ArrowLeft").setVisibility(true);
               this.§#t§.getItemByName("Button_ArrowRight").setVisibility(true);
               this.§#t§.getItemByName("Highscore_Holder").setVisibility(true);
               this.§#t§.getItemByName("TextField_Level_Num").setVisibility(true);
               this.§#t§.getItemByName("Button_ArrowUp").setVisibility(true);
               this.§#t§.getItemByName("Button_ArrowDown").setVisibility(true);
               this.§"!d§();
               this.§-M§(true);
               this.§#!^§(this.§;>§,param2);
               break;
            case §2>§:
               this.§#t§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§#t§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§#t§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§#t§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§#t§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§#t§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§#t§.getItemByName("TextField_PracticeText").setVisibility(true);
               this.§#t§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§#t§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§6u§();
               this.§<n§(false);
               break;
            case §,!q§:
               this.§#t§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("MovieClip_LoadingHiScores"));
               this.§#t§.getItemByName("Button_ArrowLeft").setEnabled(false);
               this.§#t§.getItemByName("Button_ArrowRight").setEnabled(false);
               this.§#t§.getItemByName("Button_ArrowLeft").setVisibility(false);
               this.§#t§.getItemByName("Button_ArrowRight").setVisibility(false);
               this.§#t§.getItemByName("Highscore_Holder").setVisibility(false);
               this.§#t§.getItemByName("TextField_PracticeText").setVisibility(false);
               this.§#t§.getItemByName("Button_ArrowUp").setVisibility(false);
               this.§#t§.getItemByName("Button_ArrowDown").setVisibility(false);
               this.§6u§();
               this.§2E§(false);
               this.§67§(false);
               this.§<n§(false);
               this.§>3§(false);
         }
      }
      
      public function §<n§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#t§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
         }
         else
         {
            this.§#t§.getItemByName("Container_Board_Selection").mClip.alpha = 0.4;
         }
      }
      
      private function §>!H§(param1:int) : int
      {
         param1++;
         if(param1 > HighscoreSidebar.§'x§.length - 1)
         {
            param1 = 0;
         }
         return param1;
      }
      
      private function §#!J§(param1:int) : int
      {
         param1--;
         if(param1 < 0)
         {
            param1 = HighscoreSidebar.§'x§.length - 1;
         }
         return param1;
      }
      
      public function §7n§(param1:§%0§) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(param1 && §3j§.§0!i§)
         {
            _loc4_ = param1.§!v§;
            do
            {
               _loc3_++;
               param1.§+'§();
               _loc5_ = param1.§=!J§;
               _loc6_ = 0;
               while(_loc6_ < §!!f§)
               {
                  _loc7_ = _loc6_ + (_loc5_ - 1) * §!!f§;
                  try
                  {
                     _loc8_ = _loc4_[_loc7_];
                  }
                  catch(e:Error)
                  {
                  }
                  if(_loc8_ && §3j§.§0!i§ && _loc8_.isPlayer)
                  {
                     _loc2_ = true;
                     break;
                  }
                  if(_loc3_ > §<A§)
                  {
                     _loc2_ = true;
                     param1.§5o§();
                     break;
                  }
                  _loc6_++;
               }
            }
            while(_loc2_ == false);
            
         }
      }
      
      public function §1!o§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc5_:MovieClip = null;
         for each(_loc3_ in §'x§)
         {
            if(_loc3_ == param1 && !§3j§.§-"+§(param1))
            {
               this.§;>§ = param1;
               this.§ 9§(param1);
               this.§>l§ = (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§1!v§(param1);
               this.§+I§();
               break;
            }
         }
         if(this.§?t§ == §<!?§)
         {
            this.§4y§();
         }
         if(this.§#t§)
         {
            _loc5_ = this.§#t§.getItemByName("Highscore_Holder").mClip;
            while(_loc5_.numChildren > 0)
            {
               _loc5_.removeChildAt(0);
            }
         }
         var _loc4_:§%0§;
         if((_loc4_ = this.§8?§(param1)) == null)
         {
            return;
         }
         if(_loc4_.ready)
         {
            if(_loc4_.§!v§)
            {
               if(param2)
               {
                  this.§7n§(_loc4_);
               }
               this.§79§(_loc4_.§!v§,_loc4_.§=!J§);
               this.§4y§();
               this.§`=§(true);
               this.§#t§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
               this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Highscores"));
               this.§@!2§(param1);
            }
         }
         else
         {
            _loc4_.addEventListener(§"!5§.§,!s§,this.§,"'§);
         }
      }
      
      private function §@!2§(param1:String) : void
      {
         var episodeNum:int = 0;
         var levelNumInEpisode:int = 0;
         var levelNum:int = 0;
         var levelNameString:String = null;
         var levelName:String = param1;
         try
         {
            episodeNum = int(levelName.charAt(0)) - 1;
            levelNumInEpisode = int(levelName.substring(2));
            levelNum = levelNumInEpisode + §<7§ * episodeNum;
            levelNameString = HighscoreSidebar.§1!`§[int(levelNum) - 1];
            (this.§#t§.getItemByName("TextField_Level_Num") as native).§&!K§.text = levelNameString;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §,"'§(param1:Event) : void
      {
         var _loc2_:§%0§ = param1.currentTarget as §%0§;
         _loc2_.removeEventListener(§"!5§.§,!s§,this.§,"'§);
         this.§;>§ = _loc2_.levelId;
         var _loc3_:String = this.§;>§;
         this.§@!2§(_loc3_);
         this.§7n§(_loc2_);
         this.§79§(_loc2_.§!v§,_loc2_.§=!J§);
         this.§4y§();
         this.§&!T§();
         this.§`=§(true);
         this.§#t§.getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
         this.§#t§.setObjectToFront(this.§#t§.getItemByName("Container_Highscores"));
         this.§1!o§(this.§;>§);
      }
      
      private function §4y§() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = §3j§.§0!i§;
         if(_loc1_.name)
         {
            (this.§#t§.getItemByName("TextField_MyScoreName") as native).§&!K§.text = _loc1_.name + ":  " + this.§>l§;
         }
         if(this.§?t§ == §8c§)
         {
            for each(_loc2_ in §'x§)
            {
               if(_loc2_ == this.§;>§ && !§3j§.§-"+§(_loc2_))
               {
                  this.§ 9§(this.§;>§);
                  this.§>l§ = (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§1!v§(this.§;>§);
                  this.§+I§();
                  break;
               }
            }
         }
         else if(this.§?t§ == §<!?§)
         {
         }
      }
      
      public function run(param1:Number) : void
      {
         this.§["!§(param1);
      }
      
      private function §&!T§(param1:Boolean = true) : void
      {
         this.§?!H§ = 0;
         this.§ !!§ = param1;
         this.§-![§ = 0;
      }
      
      private function §["!§(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§#t§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§#t§.getItemByName("TextField_MyScoreName").mClip;
         if(this.§ !!§)
         {
            if(this.§>!2§)
            {
               this.§>!2§.filters = [new GlowFilter(16777215,1,32,8,this.§-![§,5,false,false)];
               for each(_loc4_ in this.§9!e§)
               {
                  this.§>!2§.filters.push(_loc4_);
               }
            }
            if(int((this.§#t§.getItemByName("TextField_MyScoreNumber") as native).§&!K§.text) > 0)
            {
               _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§-![§,3,false,false)];
               _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§-![§,3,false,false)];
               for each(_loc4_ in this.§9!e§)
               {
                  _loc2_.filters.push(_loc4_);
                  _loc3_.filters.push(_loc4_);
               }
            }
            if(this.§?!H§ > 3)
            {
               this.§-![§ = 0;
               this.§?!H§ = 0;
               this.§>!2§ = null;
               this.§ !!§ = false;
            }
            if(this.§?!H§ % 2 == 0)
            {
               this.§-![§ += param1 / 200;
               if(this.§-![§ > 5.5)
               {
                  this.§-![§ = 5.5;
                  ++this.§?!H§;
               }
            }
            else
            {
               this.§-![§ -= param1 / 200;
               if(this.§-![§ < 0)
               {
                  this.§-![§ = 0;
                  ++this.§?!H§;
               }
            }
         }
         else
         {
            _loc2_.filters = this.§9!e§;
            _loc3_.filters = this.§9!e§;
            if(this.§>!2§)
            {
               this.§>!2§.filters = this.§9!e§;
            }
         }
      }
      
      private function §79§(param1:Array, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc3_:Boolean = false;
         this.§"F§ = param1;
         if(!this.§#t§)
         {
            return;
         }
         var _loc4_:Class = §^1§.§+!I§("Component_HighscoreEntry");
         var _loc5_:MovieClip = this.§#t§.getItemByName("Highscore_Holder").mClip;
         while(_loc5_.numChildren > 0)
         {
            _loc5_.removeChildAt(0);
         }
         this.§>!2§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < §!!f§)
         {
            _loc8_ = _loc7_ + (param2 - 1) * §!!f§;
            try
            {
               _loc10_ = param1[_loc8_];
            }
            catch(e:Error)
            {
            }
            (_loc9_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
            if(_loc10_)
            {
               if(§3j§.§0!i§ && _loc10_.isPlayer)
               {
                  _loc3_ = true;
               }
               else
               {
                  _loc3_ = false;
               }
               _loc11_ = _loc10_.nickName;
               _loc11_ = this.§,a§(_loc11_);
               _loc9_.TextField_Name.text = _loc11_;
               _loc9_.TextField_Points.text = _loc10_.score;
               if(_loc3_)
               {
                  _loc9_.TextField_Rank.textColor = §7!C§;
                  _loc9_.TextField_Name.textColor = §7!C§;
                  _loc9_.TextField_Points.textColor = §7!C§;
                  this.§>!2§ = _loc9_;
               }
            }
            else
            {
               _loc9_.TextField_Name.text = "-";
               _loc9_.TextField_Points.text = "";
            }
            _loc9_.y = _loc6_;
            _loc6_ += 19;
            _loc5_.addChild(_loc9_);
            _loc7_++;
         }
      }
      
      private function §,a§(param1:String) : String
      {
         if(!this.§ get§ && param1.charAt(param1.length - 2) == "X")
         {
            param1 = param1.slice(0,param1.length - 2);
         }
         return param1;
      }
      
      public function § 9§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in HighscoreSidebar.§'x§)
         {
            if(_loc3_ == param1)
            {
               this.§#C§ = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function §#!^§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:§%0§ = null;
         for each(_loc4_ in this.§2!s§)
         {
            if(_loc4_.levelId == param1 && _loc4_.§-!>§ == this.§ get§)
            {
               if(_loc4_.§3!e§(param2) == false)
               {
                  if(param3)
                  {
                     this.§`=§(false);
                     this.§#t§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                     this.§#t§.setObjectToFront(this.§#t§.getItemByName("MovieClip_LoadingHiScores"));
                     this.§79§(_loc4_.§!v§,_loc4_.§=!J§);
                     this.§4y§();
                     this.§1!o§(_loc4_.levelId,false);
                     break;
                  }
               }
               else if(param3)
               {
                  this.§`=§(false);
                  this.§#t§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                  this.§#t§.setObjectToFront(this.§#t§.getItemByName("MovieClip_LoadingHiScores"));
                  _loc4_.addEventListener(§"!5§.§,!s§,this.§,"'§);
                  break;
               }
            }
         }
      }
      
      public function §9!q§() : void
      {
         var _loc1_:§%0§ = null;
         for each(_loc1_ in this.§2!s§)
         {
            _loc1_.§`§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§5" § = null;
         this.§`=§(false);
         if(this.§#t§)
         {
            _loc1_ = this.§#t§.getItemByName("HighscoreSidebar") as §5" §;
            this.§#t§.clear();
            this.§#t§ = null;
         }
      }
      
      public function get currentPage() : int
      {
         return this.§#C§;
      }
      
      public function §5!7§() : void
      {
         this.§#!^§(HighscoreSidebar.§'x§[this.currentPage]);
      }
      
      public function set container(param1:§5" §) : void
      {
         this.§#t§ = param1;
      }
      
      public function get container() : §5" §
      {
         return this.§#t§;
      }
      
      public function get § !C§() : String
      {
         return this.§;>§;
      }
      
      public function get §&!2§() : String
      {
         return this.§?t§;
      }
      
      public function set § !C§(param1:String) : void
      {
         this.§;>§ = param1;
      }
      
      public function §-!O§(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = int(param1.substring(2))) + §<7§ * _loc3_;
         return HighscoreSidebar.§1!`§[int(_loc5_) - 1];
      }
      
      private function §"!d§() : void
      {
         if(§3j§.§0!i§.§2A§)
         {
            this.§+I§();
            this.§#t§.getItemByName("TextField_MyScoreName").setVisibility(true);
         }
         else
         {
            this.§6u§();
         }
      }
      
      private function §6u§() : void
      {
         this.§#t§.getItemByName("TextField_MyScoreName").setVisibility(false);
      }
      
      public function get §3!u§() : Boolean
      {
         return this.§3!7§;
      }
      
      public function get §#!G§() : Boolean
      {
         return this.§-_§;
      }
      
      public function §?" §() : Boolean
      {
         return this.§@!R§;
      }
      
      private function §+I§() : void
      {
         var _loc1_:String = null;
         if(§3j§.§0!i§.name)
         {
            _loc1_ = §3j§.§0!i§.name + ":  " + this.§>l§;
            (this.§#t§.getItemByName("TextField_MyScoreName") as native).§&!K§.text = _loc1_;
         }
      }
   }
}
