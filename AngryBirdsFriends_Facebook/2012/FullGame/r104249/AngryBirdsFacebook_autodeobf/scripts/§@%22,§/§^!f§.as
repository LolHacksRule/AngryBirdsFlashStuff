package §@",§
{
   import §&!"§.§4!F§;
   import §&!"§.§`B§;
   import §-B§.§]!<§;
   import §0!,§.§^"B§;
   import §5!G§.§&2§;
   import §9!h§.UserProgressEvent;
   import §;n§.§^!;§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §>s§.§+m§;
   import §@!4§.§with§;
   import §`!n§.§-[§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   
   public class §^!f§ extends §!W§
   {
       
      
      private var §+u§:§4!F§;
      
      private var §&"+§:String;
      
      private var §,"2§:String;
      
      protected var §=!J§:Boolean = false;
      
      private var §3!Q§:Boolean = false;
      
      public function §^!f§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§.getItemByName("Button_Fullscreen").setVisibility(false);
         §2!K§.getItemByName("Button_Watch_Replay").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§?J§);
         §&2§.§],§.background.§#"§();
         var _loc1_:String = LevelManager.§&4§();
         var _loc2_:Array = LevelManager.§`-§.split("-");
         var _loc3_:String = _loc2_[0];
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc1_ == null)
         {
            §2!K§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §2!K§.getItemByName("Button_FreePowerups").setVisibility(§,"I§.§&q§.§[y§.§?"F§);
         if(this.§=!J§)
         {
            this.§&!v§();
         }
      }
      
      override public function deActivate() : void
      {
         §2!K§.getItemByName("Button_Share_Default").setVisibility(false);
         §2!K§.getItemByName("Button_Share_Crown").setVisibility(false);
         §2!K§.getItemByName("Button_Share_Stars").setVisibility(false);
         §2!K§.getItemByName("Button_Share_ME").setVisibility(false);
         this.§0!V§();
         this.§3!Q§ = false;
         super.deActivate();
      }
      
      protected function §&!v§() : void
      {
         §2!K§.getItemByName("Button_Share_Default").setVisibility(false);
         §2!K§.getItemByName("Button_Share_Crown").setVisibility(false);
         §2!K§.getItemByName("Button_Share_Stars").setVisibility(false);
         §2!K§.getItemByName("Button_Share_ME").setVisibility(false);
         §2!K§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §'y§).§7I§(LevelManager.§`-§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §'y§).getEagleScoreForLevel(LevelManager.§`-§);
         if(!this.§=!J§)
         {
            if(§]"1§ && _loc1_ == 1)
            {
               this.§,"2§ = "crown";
               §2!K§.getItemByName("Button_Share_Default").setVisibility(false);
               §2!K§.getItemByName("Button_Share_Crown").setVisibility(true);
               §2!K§.getItemByName("Button_Share_Stars").setVisibility(false);
               §2!K§.getItemByName("Button_Share_ME").setVisibility(false);
               _loc3_ = §2!K§.getItemByName("Button_Share_Crown").x + §2!K§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §2!K§.getItemByName("Button_Share_Crown").y + §2!K§.getItemByName("Container_LevelEndStripe").y;
               §=!U§ = new §with§(AngryBirdsFP11.§`",§,AngryBirdsFP11.§[!f§,_loc3_,_loc4_,§with§.§,l§,20);
               §2!K§.addChild(§=!U§);
               §%">§.push(§=!U§);
               §+m§.§]!N§("Hiscore_Star_Splash1",§?&§);
            }
            else if(§2!3§)
            {
               this.§,"2§ = "stars";
               §2!K§.getItemByName("Button_Share_Default").setVisibility(false);
               §2!K§.getItemByName("Button_Share_Crown").setVisibility(false);
               §2!K§.getItemByName("Button_Share_Stars").setVisibility(true);
               §2!K§.getItemByName("Button_Share_ME").setVisibility(false);
               _loc3_ = §2!K§.getItemByName("Button_Share_Stars").x + §2!K§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §2!K§.getItemByName("Button_Share_Stars").y + §2!K§.getItemByName("Container_LevelEndStripe").y;
               §=!U§ = new §with§(AngryBirdsFP11.§`",§,AngryBirdsFP11.§[!f§,_loc3_,_loc4_,§with§.§,l§,20);
               §2!K§.addChild(§=!U§);
               §%">§.push(§=!U§);
               §+m§.§]!N§("Hiscore_Star_Splash1",§?&§);
            }
            else
            {
               this.§,"2§ = "";
               §2!K§.getItemByName("Button_Share_Default").setVisibility(true);
               §2!K§.getItemByName("Button_Share_Crown").setVisibility(false);
               §2!K§.getItemByName("Button_Share_Stars").setVisibility(false);
               §2!K§.getItemByName("Button_Share_ME").setVisibility(false);
            }
         }
         else
         {
            this.§&!v§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §'y§).§09§ && _loc4_.indexOf(param2) != -1)
         {
            this.§+u§ = §`B§.§>>§();
            this.§&"+§ = param2;
            (AngryBirdsFP11.sUserProgress as §'y§).addEventListener(UserProgressEvent.§%"B§,this.onUserProgressSaved);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "OPEN_AVATAR":
               §`B§.§5C§("CATEGORYBACKGROUNDS");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§#!4§.§1z§();
               _loc5_ = (AngryBirdsFP11.sUserProgress as §'y§).§7I§(LevelManager.§`-§);
               §=!L§.§+">§("shareCrown",LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§),_loc5_,§&2§.§,!x§.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§#!4§.§1z§();
               §=!L§.§+">§("shareThreeStars",LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§),§&2§.§,!x§.getScore());
               break;
            case "SHARE_DEFAULT":
               §=!L§.§+">§("shareDefault",LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§),§&2§.§,!x§.getScore(),true);
               break;
            case "EMBED":
               §`B§.§ !6§(LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§),§&2§.§,!x§.getScore(),this.§,"2§);
               break;
            case "FREE_POWERUPS":
               §`B§.§ if§();
         }
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§=!-§ = LevelManager.§6!6§();
         if(_loc2_.name == §,!z§.§case §)
         {
            _loc1_ = §@W§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §[2§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §'y§).removeEventListener(UserProgressEvent.§%"B§,this.onUserProgressSaved);
         if(this.§+u§)
         {
            this.§+u§.close();
            this.§+u§ = null;
         }
         this.uiInteractionHandler(-1,this.§&"+§,null);
         this.§&"+§ = null;
      }
      
      private function §0!V§() : void
      {
         §2!K§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §2!K§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §2!K§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §2!K§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§&2§.§5!k§ as §,"I§).newUserScore(LevelManager.§`-§);
         (AngryBirdsFP11.sUserProgress as §'y§).saveLevelProgress(LevelManager.§`-§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc3_:String = null;
         var _loc4_:§]!<§ = null;
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         super.setScoreData();
         if(§]"1§)
         {
            this.saveLevelProgress();
         }
         (§&2§.§5!k§ as §,"I§).§=_§.§3_§ = false;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         if(_loc2_ > _loc1_)
         {
            _loc3_ = §^"B§.§]!I§(_loc1_,_loc2_);
            if(_loc3_)
            {
               switch(_loc3_)
               {
                  case "B20007":
                     _loc4_ = §2!K§.getItemByName("Button_Unlocked_Bronze") as §]!<§;
                     break;
                  case "B20008":
                     _loc4_ = §2!K§.getItemByName("Button_Unlocked_Silver") as §]!<§;
                     break;
                  case "B20009":
                     _loc4_ = §2!K§.getItemByName("Button_Unlocked_Gold") as §]!<§;
                     break;
                  case "B20010":
                     _loc4_ = §2!K§.getItemByName("Button_Unlocked_Diamond") as §]!<§;
               }
               if(_loc4_)
               {
                  _loc4_.setVisibility(true);
                  §["?§ = true;
               }
            }
         }
      }
   }
}
