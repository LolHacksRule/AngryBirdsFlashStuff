package §7"@§
{
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §%!v§.§[<§;
   import §&q§.§'!T§;
   import §'!s§.§"!§;
   import §'!s§.§%?§;
   import §+N§.§@!]§;
   import §2!i§.§'M§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §=,§.UserProgressEvent;
   import §@">§.§%!0§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   
   public class §4!K§ extends §&!>§
   {
       
      
      private var §?"9§:§"!§;
      
      private var §-!s§:String;
      
      private var §4!=§:String;
      
      protected var §!"+§:Boolean = false;
      
      private var §^8§:Boolean = false;
      
      public function §4!K§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         §6w§.getItemByName("Button_Watch_Replay").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
         §#6§.§6!z§.background.§^!P§();
         var _loc1_:String = LevelManager.§6!M§();
         var _loc2_:Array = LevelManager.§'!O§.split("-");
         var _loc3_:String = _loc2_[0];
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc1_ == null)
         {
            §6w§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §6w§.getItemByName("Button_FreePowerups").setVisibility(§3T§.§67§.§0+§.§3"F§);
         if(this.§!"+§)
         {
            this.§-!U§();
         }
      }
      
      override public function deActivate() : void
      {
         §6w§.getItemByName("Button_Share_Default").setVisibility(false);
         §6w§.getItemByName("Button_Share_Crown").setVisibility(false);
         §6w§.getItemByName("Button_Share_Stars").setVisibility(false);
         §6w§.getItemByName("Button_Share_ME").setVisibility(false);
         this.§1J§();
         this.§^8§ = false;
         super.deActivate();
      }
      
      protected function §-!U§() : void
      {
         §6w§.getItemByName("Button_Share_Default").setVisibility(false);
         §6w§.getItemByName("Button_Share_Crown").setVisibility(false);
         §6w§.getItemByName("Button_Share_Stars").setVisibility(false);
         §6w§.getItemByName("Button_Share_ME").setVisibility(false);
         §6w§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.onBadgeLanded();
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §[<§).§#!o§(LevelManager.§'!O§);
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §[<§).getEagleScoreForLevel(LevelManager.§'!O§);
         if(!this.§!"+§)
         {
            if(§%"1§ && _loc1_ == 1)
            {
               this.§4!=§ = "crown";
               §6w§.getItemByName("Button_Share_Default").setVisibility(false);
               §6w§.getItemByName("Button_Share_Crown").setVisibility(true);
               §6w§.getItemByName("Button_Share_Stars").setVisibility(false);
               §6w§.getItemByName("Button_Share_ME").setVisibility(false);
               _loc3_ = §6w§.getItemByName("Button_Share_Crown").x + §6w§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §6w§.getItemByName("Button_Share_Crown").y + §6w§.getItemByName("Container_LevelEndStripe").y;
               §1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc3_,_loc4_,§'!T§.§>^§,20);
               §6w§.addChild(§1!r§);
               §;"F§.push(§1!r§);
               §>!E§.§7N§("Hiscore_Star_Splash1",§ A§);
            }
            else if(§^z§)
            {
               this.§4!=§ = "stars";
               §6w§.getItemByName("Button_Share_Default").setVisibility(false);
               §6w§.getItemByName("Button_Share_Crown").setVisibility(false);
               §6w§.getItemByName("Button_Share_Stars").setVisibility(true);
               §6w§.getItemByName("Button_Share_ME").setVisibility(false);
               _loc3_ = §6w§.getItemByName("Button_Share_Stars").x + §6w§.getItemByName("Container_LevelEndStripe").x;
               _loc4_ = §6w§.getItemByName("Button_Share_Stars").y + §6w§.getItemByName("Container_LevelEndStripe").y;
               §1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc3_,_loc4_,§'!T§.§>^§,20);
               §6w§.addChild(§1!r§);
               §;"F§.push(§1!r§);
               §>!E§.§7N§("Hiscore_Star_Splash1",§ A§);
            }
            else
            {
               this.§4!=§ = "";
               §6w§.getItemByName("Button_Share_Default").setVisibility(true);
               §6w§.getItemByName("Button_Share_Crown").setVisibility(false);
               §6w§.getItemByName("Button_Share_Stars").setVisibility(false);
               §6w§.getItemByName("Button_Share_ME").setVisibility(false);
            }
         }
         else
         {
            this.§-!U§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §[<§).§7!I§ && _loc4_.indexOf(param2) != -1)
         {
            this.§?"9§ = §%?§.§@-§();
            this.§-!s§ = param2;
            (AngryBirdsFP11.sUserProgress as §[<§).addEventListener(UserProgressEvent.§+!f§,this.onUserProgressSaved);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "OPEN_AVATAR":
               §%?§.§9$§("CATEGORYBACKGROUNDS");
               break;
            case "SHARE_CROWN":
               AngryBirdsFP11.§@<§.§#m§();
               _loc5_ = (AngryBirdsFP11.sUserProgress as §[<§).§#!o§(LevelManager.§'!O§);
               §@!]§.§9"'§("shareCrown",LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§),_loc5_,§#6§.§'" §.getScore());
               break;
            case "SHARE_STARS":
               AngryBirdsFP11.§@<§.§#m§();
               §@!]§.§9"'§("shareThreeStars",LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§),§#6§.§'" §.getScore());
               break;
            case "SHARE_DEFAULT":
               §@!]§.§9"'§("shareDefault",LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§),§#6§.§'" §.getScore(),true);
               break;
            case "EMBED":
               §%?§.§"!C§(LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§),§#6§.§'" §.getScore(),this.§4!=§);
               break;
            case "FREE_POWERUPS":
               §%?§.§-!?§();
         }
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§>x§ = LevelManager.§9"D§();
         if(_loc2_.name == §]!K§.§"!x§)
         {
            _loc1_ = §9!X§.STATE_NAME;
         }
         else if(_loc2_.name == §]!K§.§9a§ || _loc2_.name == §]!K§.EPISODE_GREEN_DAY_EGG)
         {
            _loc1_ = §1!J§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §8"D§.STATE_NAME;
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §[<§).removeEventListener(UserProgressEvent.§+!f§,this.onUserProgressSaved);
         if(this.§?"9§)
         {
            this.§?"9§.close();
            this.§?"9§ = null;
         }
         this.uiInteractionHandler(-1,this.§-!s§,null);
         this.§-!s§ = null;
      }
      
      private function §1J§() : void
      {
         §6w§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
         §6w§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
         §6w§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
         §6w§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
      }
      
      protected function saveLevelProgress() : void
      {
         (§#6§.§ q§ as §3T§).newUserScore(LevelManager.§'!O§);
         (AngryBirdsFP11.sUserProgress as §[<§).saveLevelProgress(LevelManager.§'!O§);
      }
      
      override protected function setScoreData() : void
      {
         var _loc3_:String = null;
         var _loc4_:§^!D§ = null;
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         super.setScoreData();
         if(§%"1§)
         {
            this.saveLevelProgress();
         }
         (§#6§.§ q§ as §3T§).§9!Q§.§`W§ = false;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getTotalStars();
         if(_loc2_ > _loc1_)
         {
            _loc3_ = §%!0§.§&;§(_loc1_,_loc2_);
            if(_loc3_)
            {
               switch(_loc3_)
               {
                  case "B20007":
                     _loc4_ = §6w§.getItemByName("Button_Unlocked_Bronze") as §^!D§;
                     break;
                  case "B20008":
                     _loc4_ = §6w§.getItemByName("Button_Unlocked_Silver") as §^!D§;
                     break;
                  case "B20009":
                     _loc4_ = §6w§.getItemByName("Button_Unlocked_Gold") as §^!D§;
                     break;
                  case "B20010":
                     _loc4_ = §6w§.getItemByName("Button_Unlocked_Diamond") as §^!D§;
               }
               if(_loc4_)
               {
                  _loc4_.setVisibility(true);
                  §[!3§ = true;
               }
            }
         }
      }
   }
}
