package §[!K§
{
   import §"",§.§<?§;
   import §#""§.§4!_§;
   import §'i§.UserProgressEvent;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §1"2§.§,!]§;
   import §7N§.§+"@§;
   import §7N§.§43§;
   import §<"1§.§,U§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import com.AngryBirds.friendsbar.§2!h§;
   
   public class §-!^§ extends §2"§
   {
       
      
      private var §"!N§:§+"@§;
      
      private var §@!p§:String;
      
      private var §&!l§:§4!_§ = null;
      
      public function §-!^§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§7f§);
         §2"-§.getItemByName("Button_Fullscreen").setVisibility(false);
         §9!%§.§!!M§.background.§+!3§();
         §2"-§.getItemByName("Button_FreePowerups").setVisibility(§ W§.§%!y§.§2Q§.§&b§);
         if(LevelManager.§0f§())
         {
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(true);
         }
         else
         {
            _loc1_ = LevelManager.§3$§();
            _loc2_ = LevelManager.§8!§().name;
            if(_loc2_ == "1000" || _loc2_ == "3001" || _loc1_ == null)
            {
               §2"-§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(true);
            }
            (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(false);
         }
         (§9!%§.§ !W§ as § W§).§""B§.§0!o§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§9!%§.§&N§.getEagleScore() == 100)
         {
            §2"-§.getItemByName("Button_Share_ME").setVisibility(true);
            §2"-§.getItemByName("Button_Share_Default").setVisibility(false);
            _loc1_ = §2"-§.getItemByName("Button_Share_ME").x + §2"-§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §2"-§.getItemByName("Button_Share_ME").y + §2"-§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§&!l§ = new §4!_§(AngryBirdsFP11.§#!T§,AngryBirdsFP11.§+!e§,_loc1_,_loc2_,§4!_§.§7!8§,20);
            §2"-§.addChild(this.§&!l§);
         }
         else
         {
            §2"-§.getItemByName("Button_Share_ME").setVisibility(false);
            §2"-§.getItemByName("Button_Share_Default").setVisibility(true);
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§&!l§)
         {
            this.§&!l§.update(param1);
         }
         return super.run(param1);
      }
      
      override public function deActivate() : void
      {
         §2"-§.getItemByName("Button_Share_ME").setVisibility(false);
         §2"-§.getItemByName("Button_Share_Default").setVisibility(false);
         if(this.§&!l§)
         {
            if(§2"-§.contains(this.§&!l§))
            {
               §2"-§.removeChild(this.§&!l§);
            }
            this.§&!l§.clean();
            this.§&!l§ = null;
         }
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §2!P§).§;"%§ && _loc4_.indexOf(param2) != -1)
         {
            this.§"!N§ = §43§.§2C§();
            this.§@!p§ = param2;
            (AngryBirdsFP11.sUserProgress as §2!P§).addEventListener(UserProgressEvent.§]"4§,this.onUserProgressSaved);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         if(param2 == "MENU")
         {
         }
         switch(param2)
         {
            case "SHARE_ME":
               AngryBirdsFP11.§`"B§.§'H§();
               §,U§.§53§("shareFeather",LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§));
               break;
            case "SHARE_DEFAULT":
               §,U§.§53§("shareDefault",LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§),0,true);
               break;
            case "EMBED":
               §43§.§!R§(LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§),0,"me");
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
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§9!%§.§ !W§ as § W§).newUserScore(LevelManager.§[!<§);
         (AngryBirdsFP11.sUserProgress as §2!P§).saveLevelProgress(LevelManager.§[!<§,true);
      }
   }
}
