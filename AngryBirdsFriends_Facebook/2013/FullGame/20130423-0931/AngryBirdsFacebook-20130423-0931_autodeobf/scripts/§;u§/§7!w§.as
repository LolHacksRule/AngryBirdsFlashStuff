package §;u§
{
   import §%i§.§7"0§;
   import §,l§.§+I§;
   import §-r§.§!"M§;
   import §1!t§.§""B§;
   import §2"'§.§'v§;
   import §2"'§.§0W§;
   import §30§.§'"+§;
   import §4D§.UserProgressEvent;
   import §5!&§.§+"@§;
   import §5!Y§.§3"H§;
   import §5!Y§.§9"6§;
   import §8m§.§@"M§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<"F§.§6h§;
   import §>0§.§-!x§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §7!w§ extends § if§ implements §4d§
   {
       
      
      private var §#"L§:§3"H§;
      
      private var §2!j§:String;
      
      private var §`!M§:String;
      
      protected var §-&§:Boolean = false;
      
      private var §-0§:Boolean = false;
      
      private var §]1§:§6h§;
      
      private var § !J§:Array;
      
      public function §7!w§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
         §2"@§.getItemByName("Button_Watch_Replay").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§!!;§);
         §?l§.§'h§.background.§!!K§();
         var _loc1_:String = LevelManager.§8t§();
         var _loc2_:Array = LevelManager.§ T§.split("-");
         var _loc3_:String = _loc2_[0];
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc1_ == null)
         {
            §2"@§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §2"@§.getItemByName("Button_FreePowerups").setVisibility(§%"S§.§!C§.§^!F§.§#!=§);
         if(this.§-&§)
         {
            this.§5+§();
         }
         §@q§.trackPageView(this,this.§8"3§(),§@q§.§+Z§);
      }
      
      override public function deActivate() : void
      {
         this.§6U§();
         §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
         §2"@§.getItemByName("Button_Share_Crown").setVisibility(false);
         §2"@§.getItemByName("Button_Share_Stars").setVisibility(false);
         §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
         this.§'!g§();
         this.§-0§ = false;
         super.deActivate();
      }
      
      protected function §5+§() : void
      {
         §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
         §2"@§.getItemByName("Button_Share_Crown").setVisibility(false);
         §2"@§.getItemByName("Button_Share_Stars").setVisibility(false);
         §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
         §2"@§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §#!$§).§;M§(LevelManager.§ T§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §#!$§).getEagleScoreForLevel(LevelManager.§ T§);
         if(!this.§-&§)
         {
            if(§1!u§ && _loc1_ == 1)
            {
               this.§`!M§ = "crown";
               §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
               §2"@§.getItemByName("Button_Share_Crown").setVisibility(true);
               §2"@§.getItemByName("Button_Share_Stars").setVisibility(false);
               §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
               _loc3_ = §2"@§.getItemByName("Button_Share_Crown").x + §2"@§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §2"@§.getItemByName("Button_Share_Crown").y + §2"@§.getItemByName("Container_LevelEndStripe").y;
               §3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc3_,_loc4_,§-!x§.§=!g§,20);
               §2"@§.addChild(§3Z§);
               §%q§.push(§3Z§);
               §@"M§.§3"C§("Hiscore_Star_Splash1",§+"1§);
            }
            else if(§-U§)
            {
               this.§`!M§ = "stars";
               §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
               §2"@§.getItemByName("Button_Share_Crown").setVisibility(false);
               §2"@§.getItemByName("Button_Share_Stars").setVisibility(true);
               §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
               _loc3_ = §2"@§.getItemByName("Button_Share_Stars").x + §2"@§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §2"@§.getItemByName("Button_Share_Stars").y + §2"@§.getItemByName("Container_LevelEndStripe").y;
               §3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc3_,_loc4_,§-!x§.§=!g§,20);
               §2"@§.addChild(§3Z§);
               §%q§.push(§3Z§);
               §@"M§.§3"C§("Hiscore_Star_Splash1",§+"1§);
            }
            else
            {
               this.§`!M§ = "";
               §2"@§.getItemByName("Button_Share_Default").setVisibility(true);
               §2"@§.getItemByName("Button_Share_Crown").setVisibility(false);
               §2"@§.getItemByName("Button_Share_Stars").setVisibility(false);
               §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
            }
         }
         else
         {
            this.§5+§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §#!$§).§case § && _loc4_.indexOf(param2) != -1)
         {
            this.§#"L§ = §9"6§.§'!o§();
            this.§2!j§ = param2;
            (AngryBirdsFP11.sUserProgress as §#!$§).addEventListener(UserProgressEvent.§@O§,this.onUserProgressSaved);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "OPEN_AVATAR":
               §9"6§.§<h§("CATEGORYBACKGROUNDS");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§>m§.§^X§();
               _loc5_ = (AngryBirdsFP11.sUserProgress as §#!$§).§;M§(LevelManager.§ T§);
               §'"+§.§'!#§("shareCrown",LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),_loc5_,§?l§.§5-§.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§>m§.§^X§();
               §'"+§.§'!#§("shareThreeStars",LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),§?l§.§5-§.getScore());
               break;
            case "SHARE_DEFAULT":
               §'"+§.§'!#§("shareDefault",LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),§?l§.§5-§.getScore(),true);
               break;
            case "EMBED":
               §9"6§.§-L§(LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),§?l§.§5-§.getScore(),this.§`!M§);
               break;
            case "FREE_POWERUPS":
               §9"6§.§#z§();
         }
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§3-§ = LevelManager.§`"Q§();
         if(_loc2_.name == §7D§.§^!i§)
         {
            _loc1_ = §4"Y§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §9"@§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §#!$§).removeEventListener(UserProgressEvent.§@O§,this.onUserProgressSaved);
         if(this.§#"L§)
         {
            this.§#"L§.close();
            this.§#"L§ = null;
         }
         this.uiInteractionHandler(-1,this.§2!j§,null);
         this.§2!j§ = null;
      }
      
      private function §'!g§() : void
      {
         §2"@§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §2"@§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §2"@§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §2"@§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§?l§.§ "G§ as §%"S§).newUserScore(LevelManager.§ T§);
         (AngryBirdsFP11.sUserProgress as §#!$§).saveLevelProgress(LevelManager.§ T§);
      }
      
      private function §<e§() : void
      {
         if(this.§9"%§.§7"T§)
         {
            if(this.§9"%§.§7"T§.§+!!§())
            {
               this.§0K§();
            }
         }
      }
      
      private function §0K§() : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:String = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§'v§ = null;
         this.§ !J§ = [];
         var _loc1_:Array = (§?l§.§5-§ as §!"M§).§`"H§();
         var _loc2_:MovieClip = §2"@§.getItemByName("eggMovieClip").mClip;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         if(this.§9"%§.§7"T§.§+!!§() && LevelManager.§ T§.indexOf(§+"9§.§!!'§) != -1)
         {
            this.§]1§ = new §6h§(this.§9"%§.§7"T§.§="U§,"",false,false);
            this.§]1§.eggs = this.§9"%§.§7"T§.§5!4§;
            this.§]1§.x = -70;
            this.§]1§.y = -70;
            (_loc5_ = §2"@§.getItemByName("EggRaffleBasketContainer").mClip).addChild(this.§]1§);
         }
         var _loc3_:int = _loc1_.length - 1;
         for each(_loc4_ in _loc1_)
         {
            _loc6_ = _loc4_.substr(_loc4_.length - 2);
            (_loc8_ = new (_loc7_ = §?q§.§ q§("Wonderland_Egg" + _loc6_))()).gotoAndStop(1);
            _loc8_.x = _loc2_.numChildren * _loc8_.width;
            _loc2_.addChild(_loc8_);
            _loc9_ = §?l§.§""E§() - 140;
            _loc10_ = 1.5 + _loc3_ * 0.5;
            (_loc11_ = §0W§.§&"5§.§]!r§(_loc8_,{
               "x":_loc9_,
               "alpha":0.8
            },{
               "x":_loc8_.x,
               "alpha":1
            },_loc10_,§0W§.§"q§)).onComplete = this.§'"8§;
            _loc11_.play();
            this.§ !J§.push(_loc11_);
            _loc3_--;
         }
         if(_loc1_.length > 0)
         {
            this.§9"%§.§7"T§.§-!8§(this.§9"%§.§7"T§.email,_loc1_.length);
         }
      }
      
      private function §'"8§() : void
      {
         if(this.§]1§)
         {
            this.§]1§.§<s§();
            this.§]1§.eggs = Math.min(this.§9"%§.§7"T§.§,!2§,this.§]1§.eggs + 1);
         }
      }
      
      private function §6U§() : void
      {
         var _loc1_:§'v§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§ !J§)
         {
            _loc1_.stop();
         }
         _loc2_ = §2"@§.getItemByName("EggRaffleBasketContainer").mClip;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         var _loc3_:MovieClip = §2"@§.getItemByName("eggMovieClip").mClip;
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         this.§ !J§ = null;
      }
      
      override protected function setScoreData() : void
      {
         var _loc3_:String = null;
         var _loc4_:§7"0§ = null;
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         super.setScoreData();
         if(§1!u§)
         {
            this.saveLevelProgress();
         }
         this.§<e§();
         (§?l§.§ "G§ as §%"S§).§96§.§<!J§ = false;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         if(_loc2_ > _loc1_)
         {
            _loc3_ = §+"@§.§8!c§(_loc1_,_loc2_);
            if(_loc3_)
            {
               switch(_loc3_)
               {
                  case "B20007":
                     _loc4_ = §2"@§.getItemByName("Button_Unlocked_Bronze") as §7"0§;
                     break;
                  case "B20008":
                     _loc4_ = §2"@§.getItemByName("Button_Unlocked_Silver") as §7"0§;
                     break;
                  case "B20009":
                     _loc4_ = §2"@§.getItemByName("Button_Unlocked_Gold") as §7"0§;
                     break;
                  case "B20010":
                     _loc4_ = §2"@§.getItemByName("Button_Unlocked_Diamond") as §7"0§;
               }
               if(_loc4_)
               {
                  _loc4_.setVisibility(true);
                  §4!C§ = true;
               }
            }
         }
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
      
      public function §=,§() : String
      {
         return §@q§.§%"$§;
      }
      
      public function §8"3§() : String
      {
         return LevelManager.§ T§;
      }
   }
}
