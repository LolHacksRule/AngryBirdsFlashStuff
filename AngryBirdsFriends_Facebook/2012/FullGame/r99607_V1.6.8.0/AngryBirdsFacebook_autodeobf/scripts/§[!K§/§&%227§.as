package §[!K§
{
   import §"",§.§<?§;
   import §#!p§.§]!"§;
   import §#""§.§4!_§;
   import §'i§.UserProgressEvent;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §7N§.§+"@§;
   import §7N§.§43§;
   import §<"1§.§,U§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import com.AngryBirds.friendsbar.§2!h§;
   
   public class §&"7§ extends §!!x§
   {
       
      
      private var §"!N§:§+"@§;
      
      private var §@!p§:String;
      
      private var §=W§:String;
      
      protected var §@!`§:Boolean = false;
      
      private var §+5§:Boolean = false;
      
      public function §&"7§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.getItemByName("Button_Fullscreen").setVisibility(false);
         §2"-§.getItemByName("Button_Watch_Replay").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§7f§);
         §9!%§.§!!M§.background.§+!3§();
         var _loc1_:String = LevelManager.§3$§();
         var _loc2_:Array = LevelManager.§[!<§.split("-");
         var _loc3_:String = _loc2_[0];
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc1_ == null)
         {
            §2"-§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §2"-§.getItemByName("Button_FreePowerups").setVisibility(§ W§.§%!y§.§2Q§.§&b§);
         if(this.§@!`§)
         {
            this.§ %§();
         }
      }
      
      override public function deActivate() : void
      {
         §2"-§.getItemByName("Button_Share_Default").setVisibility(false);
         §2"-§.getItemByName("Button_Share_Crown").setVisibility(false);
         §2"-§.getItemByName("Button_Share_Stars").setVisibility(false);
         §2"-§.getItemByName("Button_Share_ME").setVisibility(false);
         this.§=Y§();
         this.§+5§ = false;
         super.deActivate();
      }
      
      protected function § %§() : void
      {
         §2"-§.getItemByName("Button_Share_Default").setVisibility(false);
         §2"-§.getItemByName("Button_Share_Crown").setVisibility(false);
         §2"-§.getItemByName("Button_Share_Stars").setVisibility(false);
         §2"-§.getItemByName("Button_Share_ME").setVisibility(false);
         §2"-§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §2!P§).§?!!§(LevelManager.§[!<§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §2!P§).getEagleScoreForLevel(LevelManager.§[!<§);
         if(!this.§@!`§)
         {
            if(§>!^§ && _loc1_ == 1)
            {
               this.§=W§ = "crown";
               §2"-§.getItemByName("Button_Share_Default").setVisibility(false);
               §2"-§.getItemByName("Button_Share_Crown").setVisibility(true);
               §2"-§.getItemByName("Button_Share_Stars").setVisibility(false);
               §2"-§.getItemByName("Button_Share_ME").setVisibility(false);
               _loc3_ = §2"-§.getItemByName("Button_Share_Crown").x + §2"-§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §2"-§.getItemByName("Button_Share_Crown").y + §2"-§.getItemByName("Container_LevelEndStripe").y;
               §&!l§ = new §4!_§(AngryBirdsFP11.§#!T§,AngryBirdsFP11.§+!e§,_loc3_,_loc4_,§4!_§.§7!8§,20);
               §2"-§.addChild(§&!l§);
               § -§.push(§&!l§);
               §%4§.§>f§("Hiscore_Star_Splash1",§83§);
            }
            else if(§>r§)
            {
               this.§=W§ = "stars";
               §2"-§.getItemByName("Button_Share_Default").setVisibility(false);
               §2"-§.getItemByName("Button_Share_Crown").setVisibility(false);
               §2"-§.getItemByName("Button_Share_Stars").setVisibility(true);
               §2"-§.getItemByName("Button_Share_ME").setVisibility(false);
               _loc3_ = §2"-§.getItemByName("Button_Share_Stars").x + §2"-§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §2"-§.getItemByName("Button_Share_Stars").y + §2"-§.getItemByName("Container_LevelEndStripe").y;
               §&!l§ = new §4!_§(AngryBirdsFP11.§#!T§,AngryBirdsFP11.§+!e§,_loc3_,_loc4_,§4!_§.§7!8§,20);
               §2"-§.addChild(§&!l§);
               § -§.push(§&!l§);
               §%4§.§>f§("Hiscore_Star_Splash1",§83§);
            }
            else
            {
               this.§=W§ = "";
               §2"-§.getItemByName("Button_Share_Default").setVisibility(true);
               §2"-§.getItemByName("Button_Share_Crown").setVisibility(false);
               §2"-§.getItemByName("Button_Share_Stars").setVisibility(false);
               §2"-§.getItemByName("Button_Share_ME").setVisibility(false);
            }
         }
         else
         {
            this.§ %§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §2!P§).§;"%§ && _loc4_.indexOf(param2) != -1)
         {
            this.§"!N§ = §43§.§2C§();
            this.§@!p§ = param2;
            (AngryBirdsFP11.sUserProgress as §2!P§).addEventListener(UserProgressEvent.§]"4§,this.onUserProgressSaved);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "OPEN_AVATAR":
               §43§.§;!9§("CATEGORYBACKGROUNDS");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§`"B§.§'H§();
               _loc5_ = (AngryBirdsFP11.sUserProgress as §2!P§).§?!!§(LevelManager.§[!<§);
               §,U§.§53§("shareCrown",LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§),_loc5_,§9!%§.§&N§.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§`"B§.§'H§();
               §,U§.§53§("shareThreeStars",LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§),§9!%§.§&N§.getScore());
               break;
            case "SHARE_DEFAULT":
               §,U§.§53§("shareDefault",LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§),§9!%§.§&N§.getScore(),true);
               break;
            case "EMBED":
               §43§.§!R§(LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§),§9!%§.§&N§.getScore(),this.§=W§);
               break;
            case "FREE_POWERUPS":
               §43§.§`!N§();
         }
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§]f§ = LevelManager.§8!§();
         if(_loc2_.name == §%!_§.§-@§)
         {
            _loc1_ = §6!%§.STATE_NAME;
         }
         else if(_loc2_.name == §%!_§.§5H§ || _loc2_.name == §%!_§.EPISODE_GREEN_DAY_EGG)
         {
            _loc1_ = §4E§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §=B§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §2!P§).removeEventListener(UserProgressEvent.§]"4§,this.onUserProgressSaved);
         if(this.§"!N§)
         {
            this.§"!N§.close();
            this.§"!N§ = null;
         }
         this.uiInteractionHandler(-1,this.§@!p§,null);
         this.§@!p§ = null;
      }
      
      private function §=Y§() : void
      {
         §2"-§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §2"-§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §2"-§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §2"-§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§9!%§.§ !W§ as § W§).newUserScore(LevelManager.§[!<§);
         (AngryBirdsFP11.sUserProgress as §2!P§).saveLevelProgress(LevelManager.§[!<§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc3_:String = null;
         var _loc4_:§<?§ = null;
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         super.setScoreData();
         if(§>!^§)
         {
            this.saveLevelProgress();
         }
         (§9!%§.§ !W§ as § W§).§""B§.§0!o§ = false;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         if(_loc2_ > _loc1_)
         {
            _loc3_ = §]!"§.§5"3§(_loc1_,_loc2_);
            if(_loc3_)
            {
               switch(_loc3_)
               {
                  case "B20007":
                     _loc4_ = §2"-§.getItemByName("Button_Unlocked_Bronze") as §<?§;
                     break;
                  case "B20008":
                     _loc4_ = §2"-§.getItemByName("Button_Unlocked_Silver") as §<?§;
                     break;
                  case "B20009":
                     _loc4_ = §2"-§.getItemByName("Button_Unlocked_Gold") as §<?§;
                     break;
                  case "B20010":
                     _loc4_ = §2"-§.getItemByName("Button_Unlocked_Diamond") as §<?§;
               }
               if(_loc4_)
               {
                  _loc4_.setVisibility(true);
                  §+`§ = true;
               }
            }
         }
      }
   }
}
