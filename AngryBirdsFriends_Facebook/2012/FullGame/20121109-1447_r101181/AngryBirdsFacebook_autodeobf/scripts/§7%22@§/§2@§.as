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
   import §=,§.UserProgressEvent;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   
   public class §2@§ extends §<!z§
   {
       
      
      private var §?"9§:§"!§;
      
      private var §-!s§:String;
      
      private var §1!r§:§'!T§ = null;
      
      public function §2@§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         super.activate();
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         §#6§.§6!z§.background.§^!P§();
         §6w§.getItemByName("Button_FreePowerups").setVisibility(§3T§.§67§.§0+§.§3"F§);
         if(LevelManager.§%^§())
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
         }
         else
         {
            _loc1_ = LevelManager.§6!M§();
            _loc2_ = LevelManager.§9"D§().name;
            if(_loc2_ == "1000" || _loc2_ == "3001" || _loc1_ == null)
            {
               §6w§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
            }
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
         }
         (§#6§.§ q§ as §3T§).§9!Q§.§`W§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§#6§.§'" §.getEagleScore() == 100)
         {
            §6w§.getItemByName("Button_Share_ME").setVisibility(true);
            §6w§.getItemByName("Button_Share_Default").setVisibility(false);
            _loc1_ = §6w§.getItemByName("Button_Share_ME").x + §6w§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §6w§.getItemByName("Button_Share_ME").y + §6w§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc1_,_loc2_,§'!T§.§>^§,20);
            §6w§.addChild(this.§1!r§);
         }
         else
         {
            §6w§.getItemByName("Button_Share_ME").setVisibility(false);
            §6w§.getItemByName("Button_Share_Default").setVisibility(true);
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§1!r§)
         {
            this.§1!r§.update(param1);
         }
         return super.run(param1);
      }
      
      override public function deActivate() : void
      {
         §6w§.getItemByName("Button_Share_ME").setVisibility(false);
         §6w§.getItemByName("Button_Share_Default").setVisibility(false);
         if(this.§1!r§)
         {
            if(§6w§.contains(this.§1!r§))
            {
               §6w§.removeChild(this.§1!r§);
            }
            this.§1!r§.clean();
            this.§1!r§ = null;
         }
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §[<§).§7!I§ && _loc4_.indexOf(param2) != -1)
         {
            this.§?"9§ = §%?§.§@-§();
            this.§-!s§ = param2;
            (AngryBirdsFP11.sUserProgress as §[<§).addEventListener(UserProgressEvent.§+!f§,this.onUserProgressSaved);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         if(param2 == "MENU")
         {
         }
         switch(param2)
         {
            case "SHARE_ME":
               AngryBirdsFP11.§@<§.§#m§();
               §@!]§.§9"'§("shareFeather",LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§));
               break;
            case "SHARE_DEFAULT":
               §@!]§.§9"'§("shareDefault",LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§),0,true);
               break;
            case "EMBED":
               §%?§.§"!C§(LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§),0,"me");
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
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§#6§.§ q§ as §3T§).newUserScore(LevelManager.§'!O§);
         (AngryBirdsFP11.sUserProgress as §[<§).saveLevelProgress(LevelManager.§'!O§,true);
      }
   }
}
