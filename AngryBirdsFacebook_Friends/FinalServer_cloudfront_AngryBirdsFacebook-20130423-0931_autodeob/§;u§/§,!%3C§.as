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
   import §5!Y§.§3"H§;
   import §5!Y§.§9"6§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §<"F§.§6h§;
   import §>0§.§-!x§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §,!<§ extends §>!w§
   {
       
      
      private var §#"L§:§3"H§;
      
      private var §2!j§:String;
      
      private var §3Z§:§-!x§ = null;
      
      private var §]1§:§6h§;
      
      private var § !J§:Array;
      
      public function §,!<§(param1:Boolean = false, param2:String = "LevelEndEagleState")
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
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§!!;§);
         §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
         §?l§.§'h§.background.§!!K§();
         §2"@§.getItemByName("Button_FreePowerups").setVisibility(§%"S§.§!C§.§^!F§.§#!=§);
         if(LevelManager.§%!8§())
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
         }
         else
         {
            _loc1_ = LevelManager.§8t§();
            _loc2_ = LevelManager.§`"Q§().name;
            if(_loc2_ == "1000" || _loc2_ == "3001" || _loc1_ == null)
            {
               §2"@§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            else
            {
               (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
            }
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
         }
         this.§<e§();
         (§?l§.§ "G§ as §%"S§).§96§.§<!J§ = false;
      }
      
      override protected function onCountComplete() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.onCountComplete();
         if(§?l§.§5-§.getEagleScore() == 100)
         {
            §2"@§.getItemByName("Button_Share_ME").setVisibility(true);
            §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
            _loc1_ = §2"@§.getItemByName("Button_Share_ME").x + §2"@§.getItemByName("Container_LevelEndEagleStripe").x;
            _loc2_ = §2"@§.getItemByName("Button_Share_ME").y + §2"@§.getItemByName("Container_LevelEndEagleStripe").y;
            this.§3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc1_,_loc2_,§-!x§.§=!g§,20);
            §2"@§.addChild(this.§3Z§);
         }
         else
         {
            §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
            §2"@§.getItemByName("Button_Share_Default").setVisibility(true);
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§3Z§)
         {
            this.§3Z§.update(param1);
         }
         return super.run(param1);
      }
      
      override public function deActivate() : void
      {
         §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
         §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
         this.§6U§();
         if(this.§3Z§)
         {
            if(§2"@§.contains(this.§3Z§))
            {
               §2"@§.removeChild(this.§3Z§);
            }
            this.§3Z§.clean();
            this.§3Z§ = null;
         }
         super.deActivate();
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if((AngryBirdsFP11.sUserProgress as §#!$§).§case § && _loc4_.indexOf(param2) != -1)
         {
            this.§#"L§ = §9"6§.§'!o§();
            this.§2!j§ = param2;
            (AngryBirdsFP11.sUserProgress as §#!$§).addEventListener(UserProgressEvent.§@O§,this.onUserProgressSaved);
            return;
         }
         super.uiInteractionHandler(param1,param2,param3);
         if(param2 == "MENU")
         {
         }
         switch(param2)
         {
            case "SHARE_ME":
               AngryBirdsFP11.§>m§.§^X§();
               §'"+§.§'!#§("shareFeather",LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§));
               break;
            case "SHARE_DEFAULT":
               §'"+§.§'!#§("shareDefault",LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),0,true);
               break;
            case "EMBED":
               §9"6§.§-L§(LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),0,"me");
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
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         (§?l§.§ "G§ as §%"S§).newUserScore(LevelManager.§ T§);
         (AngryBirdsFP11.sUserProgress as §#!$§).saveLevelProgress(LevelManager.§ T§,true);
      }
      
      private function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
