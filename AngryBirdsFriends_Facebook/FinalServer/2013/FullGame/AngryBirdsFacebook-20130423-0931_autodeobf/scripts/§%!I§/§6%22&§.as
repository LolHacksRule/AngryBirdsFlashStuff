package §%!I§
{
   import § "!§.§9"&§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §&S§.§&!l§;
   import §,l§.§#!,§;
   import §,l§.§["K§;
   import §0D§.§3!R§;
   import §4D§.UserProgressEvent;
   import §5!Y§.§9"6§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §;u§.§7!w§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   
   public class §6"&§ extends §7!w§
   {
      
      public static const §2"N§:int = 2;
      
      public static const §&D§:int = 4;
      
      public static const §<!U§:int = 8;
      
      public static const STATE_NAME:String = "stateTournamentLevelEnd";
       
      
      private var §@#§:Boolean;
      
      protected var §@"Q§:Boolean = false;
      
      private var §>"W§:int;
      
      private var §=!W§:Boolean = false;
      
      private var §[k§:Boolean = false;
      
      private var §!"N§:Boolean = false;
      
      private var §6!m§:§&!l§;
      
      private var §="K§:int;
      
      public function §6"&§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         super(param1,param2);
         §-&§ = true;
      }
      
      protected function §]>§(param1:int) : void
      {
         this.§="K§ = §%"S§.§!C§.§9"%§.§,T§.§0Q§;
         (AngryBirdsFP11.sUserProgress as §#!$§).§6!W§(LevelManager.§ T§,param1);
         (§?l§.§ "G§ as §%"S§).§4!D§(LevelManager.§ T§,param1);
         (AngryBirdsFP11.sUserProgress as §#!$§).saveLevelProgress(LevelManager.§ T§,false,true);
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §3!R§.§&"5§.§="S§(LevelManager.§ T§);
         if(_loc1_ != null && _loc1_ != "")
         {
            LevelManager.§,!m§(LevelManager.§["S§(_loc1_));
         }
         else
         {
            LevelManager.§&"V§ = LevelManager.§ T§;
         }
         mNextState = this.getCutSceneState();
      }
      
      override protected function setScoreData() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         §2"@§.getItemByName("MovieClip_ResultMEFeather").setVisibility(false);
         var _loc1_:int = (AngryBirdsFP11.sUserProgress as §#!$§).§="&§(LevelManager.§ T§);
         var _loc2_:int = §?l§.§5-§.getScore();
         §1!u§ = _loc2_ > _loc1_;
         this.§>"W§ = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§ T§,_loc1_);
         §;;§(_loc2_,_loc1_);
         this.§%!T§ = false;
         this.§3F§ = false;
         this.§`M§ = false;
         switch(this.§>"W§)
         {
            case 0:
               break;
            case 1:
               this.§%!T§ = true;
               break;
            case 2:
               this.§%!T§ = true;
               this.§3F§ = true;
               break;
            case 3:
               this.§%!T§ = true;
               this.§3F§ = true;
               this.§`M§ = true;
         }
         §2!X§();
         if(§1!u§)
         {
            this.§@#§ = false;
            (AngryBirdsFP11.sUserProgress as §#!$§).addEventListener(UserProgressEvent.§@O§,this.onUserProgressSaved);
            this.§]>§(_loc2_);
            _loc3_ = §%"S§.§%P§.§3";§(LevelManager.§ T§,§9"&§.§-"W§);
            _loc4_ = §%"S§.§%P§.§3";§(LevelManager.§ T§,§9"&§.§#2§);
            §@q§.§6!]§(LevelManager.§ T§,_loc2_ > _loc3_,_loc2_ > _loc4_,_loc2_ - _loc3_,_loc2_ - _loc4_);
         }
         (§2"@§.getItemByName("MovieClip_NewHighScoreBadge") as §^n§).setVisibility(false);
         (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.gotoAndStop("UnLit");
         (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.gotoAndStop("UnLit");
         (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.gotoAndStop("UnLit");
      }
      
      private function set §%!T§(param1:Boolean) : void
      {
         this.§=!W§ = param1;
         §2"@§.container.mClip.Container_LevelEndStripe.star1Award.visible = !param1;
         §2"@§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("NotClaimed");
      }
      
      private function set §3F§(param1:Boolean) : void
      {
         this.§[k§ = param1;
         §2"@§.container.mClip.Container_LevelEndStripe.star2Award.visible = !param1;
         §2"@§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("NotClaimed");
      }
      
      private function set §`M§(param1:Boolean) : void
      {
         this.§!"N§ = param1;
         §2"@§.container.mClip.Container_LevelEndStripe.star3Award.visible = !param1;
         §2"@§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("NotClaimed");
      }
      
      override protected function setStarLeftLit() : Boolean
      {
         var _loc1_:§^n§ = null;
         (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.gotoAndStop("Lit");
         if(!this.§=!W§)
         {
            §2"@§.container.mClip.Container_LevelEndStripe.star1Award.gotoAndStop("Claimed");
            _loc1_ = §2"@§.getItemByName("MovieClip_StarLeft") as §^n§;
            this.§6!m§.§;"Z§.§5!q§(§2"N§);
            this.§6!m§.§;"Z§.§!!J§(this.§="K§ + §2"N§);
            §@"M§.§3"C§("Hiscore_Star_Coins_Splash1",§+"1§);
            §@q§.§&?§(§@q§.§9%§,§["K§.§0#§,§2"N§);
            return true;
         }
         return super.setStarLeftLit();
      }
      
      override protected function setStarCenterLit() : Boolean
      {
         var _loc1_:§^n§ = null;
         var _loc2_:int = 0;
         (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.gotoAndStop("Lit");
         if(!this.§[k§)
         {
            §2"@§.container.mClip.Container_LevelEndStripe.star2Award.gotoAndStop("Claimed");
            _loc1_ = §2"@§.getItemByName("MovieClip_StarCenter") as §^n§;
            this.§6!m§.§;"Z§.§5!q§(§&D§);
            _loc2_ = this.§="K§ + §&D§;
            if(!this.§=!W§)
            {
               _loc2_ += §2"N§;
            }
            this.§6!m§.§;"Z§.§!!J§(_loc2_);
            §@"M§.§3"C§("Hiscore_Star_Coins_Splash2",§+"1§);
            §@q§.§&?§(§@q§.§9%§,§["K§.§0#§,§&D§);
            return true;
         }
         return super.setStarCenterLit();
      }
      
      override protected function setStarRightLit() : Boolean
      {
         var _loc1_:§^n§ = null;
         var _loc2_:int = 0;
         (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.gotoAndStop("Lit");
         if(!this.§!"N§)
         {
            §2"@§.container.mClip.Container_LevelEndStripe.star3Award.gotoAndStop("Claimed");
            _loc1_ = §2"@§.getItemByName("MovieClip_StarRight") as §^n§;
            this.§6!m§.§;"Z§.§5!q§(§<!U§);
            _loc2_ = this.§="K§ + §<!U§;
            if(!this.§=!W§)
            {
               _loc2_ += §2"N§;
            }
            if(!this.§[k§)
            {
               _loc2_ += §&D§;
            }
            this.§6!m§.§;"Z§.§!!J§(_loc2_);
            §@"M§.§3"C§("Hiscore_Star_Coins_Splash3",§+"1§);
            §@q§.§&?§(§@q§.§9%§,§["K§.§0#§,§<!U§);
            return true;
         }
         return super.setStarRightLit();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§6!m§ = §%"S§.§!C§.§'u§;
         this.§@"Q§ = false;
         if(LevelManager.§%!8§())
         {
            §-F§();
         }
         else
         {
            this.showButtonsNormal();
         }
      }
      
      override protected function showButtonsNormal() : void
      {
         (§2"@§.getItemByName("Button_Menu") as §7"0§).setVisibility(true);
         (§2"@§.getItemByName("Button_Replay") as §7"0§).setVisibility(true);
         (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
         if(§3!R§.§&"5§.§="S§(LevelManager.§ T§))
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_Menu") as §7"0§).x = §'!U§[0];
            (§2"@§.getItemByName("Button_Replay") as §7"0§).x = §'!U§[1];
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).x = §'!U§[2];
         }
         else
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_Menu") as §7"0§).x = §'!U§[0] + Math.abs(§'!U§[1] - §'!U§[0]) / 2;
            (§2"@§.getItemByName("Button_Replay") as §7"0§).x = §'!U§[1] + Math.abs(§'!U§[2] - §'!U§[1]) / 2;
         }
      }
      
      override protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         var parsedResponse:Object = null;
         var e:UserProgressEvent = param1;
         super.onUserProgressSaved(e);
         this.§@#§ = true;
         if(e.data != null && e.data != "")
         {
            try
            {
               parsedResponse = JSON.parse(e.data as String);
            }
            catch(error:Error)
            {
               §9"6§.§#!o§();
            }
         }
         if(parsedResponse)
         {
            §#!,§.§&"5§.§6"M§(parsedResponse,true);
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §5S§.STATE_NAME;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §6"'§.STATE_NAME;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §]!M§.STATE_NAME;
      }
   }
}
