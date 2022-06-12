package §@",§
{
   import §&!"§.§4!F§;
   import §&!"§.§`B§;
   import §-B§.§]!<§;
   import §5!G§.§&2§;
   import §9!h§.UserProgressEvent;
   import §;n§.§^!;§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §@!4§.§with§;
   import §`!n§.§-[§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   
   public class §"]§ extends §>G§
   {
       
      
      private var §+u§:§4!F§;
      
      private var §&"+§:String;
      
      private var §=!U§:§with§ = null;
      
      public function §"]§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§?J§);
         §2!K§.getItemByName("Button_Fullscreen").setVisibility(false);
         §&2§.§],§.background.§#"§();
         §2!K§.getItemByName("Button_FreePowerups").setVisibility(§,"I§.§&q§.§[y§.§?"F§);
         if(LevelManager.§;"@§())
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(true);
         }
         else
         {
            _loc1_ = LevelManager.§&4§();
            _loc2_ = LevelManager.§6!6§().name;
            if(_loc2_ == "1000" || _loc2_ == "3001" || _loc1_ == null)
            {
               §2!K§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(true);
            }
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(false);
         }
         (§&2§.§5!k§ as §,"I§).§=_§.§3_§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§&2§.§,!x§.getEagleScore() == 100)
         {
            §2!K§.getItemByName("Button_Share_ME").setVisibility(true);
            §2!K§.getItemByName("Button_Share_Default").setVisibility(false);
            _loc1_ = §2!K§.getItemByName("Button_Share_ME").x + §2!K§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §2!K§.getItemByName("Button_Share_ME").y + §2!K§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§=!U§ = new §with§(AngryBirdsFP11.§`",§,AngryBirdsFP11.§[!f§,_loc1_,_loc2_,§with§.§,l§,20);
            §2!K§.addChild(this.§=!U§);
         }
         else
         {
            §2!K§.getItemByName("Button_Share_ME").setVisibility(false);
            §2!K§.getItemByName("Button_Share_Default").setVisibility(true);
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§=!U§)
         {
            this.§=!U§.update(param1);
         }
         return super.run(param1);
      }
      
      override public function deActivate() : void
      {
         §2!K§.getItemByName("Button_Share_ME").setVisibility(false);
         §2!K§.getItemByName("Button_Share_Default").setVisibility(false);
         if(this.§=!U§)
         {
            if(§2!K§.contains(this.§=!U§))
            {
               §2!K§.removeChild(this.§=!U§);
            }
            this.§=!U§.clean();
            this.§=!U§ = null;
         }
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §'y§).§09§ && _loc4_.indexOf(param2) != -1)
         {
            this.§+u§ = §`B§.§>>§();
            this.§&"+§ = param2;
            (AngryBirdsFP11.sUserProgress as §'y§).addEventListener(UserProgressEvent.§%"B§,this.onUserProgressSaved);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         if(param2 == "MENU")
         {
         }
         switch(param2)
         {
            case "SHARE_ME":
               AngryBirdsFP11.§#!4§.§1z§();
               §=!L§.§+">§("shareFeather",LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§));
               break;
            case "SHARE_DEFAULT":
               §=!L§.§+">§("shareDefault",LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§),0,true);
               break;
            case "EMBED":
               §`B§.§ !6§(LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§),0,"me");
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
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§&2§.§5!k§ as §,"I§).newUserScore(LevelManager.§`-§);
         (AngryBirdsFP11.sUserProgress as §'y§).saveLevelProgress(LevelManager.§`-§,true);
      }
   }
}
