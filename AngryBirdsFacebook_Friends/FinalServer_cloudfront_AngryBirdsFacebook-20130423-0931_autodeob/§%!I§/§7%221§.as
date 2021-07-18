package §%!I§
{
   import §%i§.§0!Y§;
   import §%i§.§^n§;
   import §,l§.§#!,§;
   import §-r§.§!"M§;
   import §0D§.§3I§;
   import §0D§.§]"§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§%6§;
   import §4!<§.§&=§;
   import §5!Y§.§8y§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §;u§.§+"9§;
   import §@!"§.§?l§;
   import §^"F§.§4!2§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §7"1§ extends §+"9§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      private const §5!7§:int = 500;
      
      private const §@Y§:int = 10000;
      
      private const §>B§:int = 20.0;
      
      private const §]!8§:int = 8000;
      
      private var §5$§:Number;
      
      private var §9D§:Number;
      
      private var §7C§:§6!K§;
      
      private var §@4§:Boolean = false;
      
      protected var §,K§:§3I§;
      
      private var §]"5§:Boolean = false;
      
      private var §;"T§:§6!K§;
      
      private var §6D§:Rectangle;
      
      public function §7"1§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         super(param1,param2);
         this.§,K§ = new §3I§();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §2"@§.getItemByName("Button_MightyEagle").setVisibility(false);
         §2"@§.getItemByName("TextField_PowerUpCountME").setVisibility(false);
         §2"@§.getItemByName("PowerUpCountME_BG").setVisibility(false);
         §2"@§.getItemByName("Container_Wingman").setVisibility(true);
         (§?l§.§'h§ as §%6§).§+"3§.§0-§ = false;
         this.§9D§ = 0;
         this.§,K§.activate(§2"@§.getItemByName("Container_Wingman").mClip as MovieClip,true);
         this.§,K§.§;!0§();
         this.§7C§ = null;
         this.§@4§ = false;
         (§2"@§.getItemByName("Movieclip_Slider") as §0!Y§).mClip.visible = true;
         this.§]"5§ = false;
         this.§,K§.activate(§2"@§.getItemByName("Container_Wingman").mClip as MovieClip,true);
         this.§,K§.§;!0§();
         var _loc1_:MovieClip = §2"@§.getItemByName("Movieclip_FrenzyAlert").mClip;
         _loc1_.alpha = 1;
         this.§6D§ = null;
         _loc1_.scrollRect = null;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§%6§ = null;
         if(this.§6D§)
         {
            _loc2_ = §2"@§.getItemByName("Movieclip_FrenzyAlert").mClip;
            _loc2_.scrollRect = this.§6D§;
         }
         if(this.§@4§)
         {
            if(this.§-"R§(param1))
            {
               (§%"9§ as §!"M§).§0!$§ = true;
               this.§@4§ = false;
               (§%"9§ as §!"M§).§88§();
            }
         }
         this.§,K§.update(param1);
         if(!this.§]"5§ && (§?l§.§'h§ as §%6§).§+"3§.§0-§ && !§ =§ && §?l§.§'h§.slingshot.birdsAvailable && §>"X§.powerUpsUsable && (§?l§.§'h§ as §%6§).§4!]§() < §;"W§.getMaxPowerupsToUse())
         {
            _loc3_ = §?l§.§'h§ as §%6§;
            if(!_loc3_.§"!A§(§4!2§.§`!4§.§1!#§))
            {
               §;"W§.setPowerupActive(§4!2§.§`!4§.§,§,true);
               this.§]"5§ = true;
            }
            if(!_loc3_.§"!A§(§4!2§.§<"O§.§1!#§))
            {
               §;"W§.setPowerupActive(§4!2§.§<"O§.§,§,true);
               this.§]"5§ = true;
            }
            if(!_loc3_.§"!A§(§4!2§.§3"$§.§1!#§))
            {
               §;"W§.setPowerupActive(§4!2§.§3"$§.§,§,true);
               this.§]"5§ = true;
            }
            if(!_loc3_.§"!A§(§4!2§.§%!U§.§1!#§))
            {
               §;"W§.setPowerupActive(§4!2§.§%!U§.§,§,true);
               this.§]"5§ = true;
            }
            if(!_loc3_.§"!A§(§4!2§.§8"1§.§1!#§))
            {
               §;"W§.setPowerupActive(§4!2§.§8"1§.§,§,true);
               this.§]"5§ = true;
            }
         }
         return super.run(param1);
      }
      
      override protected function dimPowerUp() : void
      {
         if(this.§;"T§)
         {
            this.§;"T§.§7!d§();
         }
         this.§;"T§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Movieclip_FrenzyAlert").mClip,{"alpha":0},null,0.5);
         this.§;"T§.delay = 2;
         this.§;"T§.play();
         super.dimPowerUp();
      }
      
      override protected function hidePowerUp(param1:Boolean = true) : void
      {
         if(this.§;"T§)
         {
            this.§;"T§.§7!d§();
         }
         this.set();
         this.§;"T§.onComplete = this.§,"=§;
         super.hidePowerUp(param1);
      }
      
      private function set() : void
      {
         var _loc1_:MovieClip = §2"@§.getItemByName("Movieclip_FrenzyAlert").mClip;
         this.§6D§ = new Rectangle(0,0,_loc1_.width,_loc1_.height);
         _loc1_.scrollRect = this.§6D§;
         this.§;"T§ = §0W§.§&"5§.§]!r§(this.§6D§,{"x":this.§6D§.x + this.§6D§.width},null,0.5);
         this.§;"T§.delay = 0;
         this.§;"T§.play();
      }
      
      private function §,"=§() : void
      {
         §2"@§.getItemByName("Movieclip_FrenzyAlert").mClip.visible = false;
      }
      
      override protected function facebookActivate() : void
      {
         super.facebookActivate();
         if(§?l§.§'h§.objects.mSardineCanAdded || §9!h§ || §?l§.§'h§.slingshot.mSlingShotState == §&=§.§+!`§)
         {
            (§2"@§.getItemByName("Movieclip_Slider") as §0!Y§).mClip.visible = true;
            this.§,K§.activate(§2"@§.getItemByName("Container_Wingman").mClip as MovieClip,false);
         }
         (§%"9§ as §!"M§).§3!W§ = this.§6!L§;
         (§%"9§ as §!"M§).§0!$§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").x = 115;
         §2"@§.getItemByName("Container_PowerUpButtons").x = 115;
      }
      
      override protected function disablePowerupMenu() : void
      {
         super.disablePowerupMenu();
         §;"W§.setPowerupActive(§4!2§.§-Y§.§,§,false);
      }
      
      override protected function fetchScoresForLevel() : void
      {
         §`g§ = §%"S§.§%P§.§;8§(LevelManager.§5!T§(LevelManager.§ T§).name,LevelManager.§ T§,true);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         switch(param2)
         {
            case "PAUSE":
               (§?l§.§'h§ as §%6§).§+"3§.§]W§();
               break;
            case "POWERUP_WINGMAN":
               §;"W§.powerUpsUsable = §;"W§.usePowerup(param2);
               _loc4_ = §?l§.§'h§.slingshot.§5"U§;
               _loc5_ = §?l§.§'h§.slingshot.§0"I§();
               _loc7_ = (_loc6_ = 1 + _loc4_ - _loc5_) + "";
               if(_loc5_ == 0)
               {
                  _loc7_ = "last-chance";
               }
               §@q§.§8"#§(LevelManager.§ T§,_loc7_);
               if(!§;"W§.powerUpsUsable)
               {
                  §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                  this.dimPowerUp();
               }
               this.§,K§.§#5§();
               this.§^9§();
               break;
            case "POWERUP_OVER_WINGMAN":
               if((_loc8_ = §#!,§.§&"5§.§]![§(§4!2§.§-Y§.§1!#§)) <= 0)
               {
                  §2"@§.getItemByName("MovieClip_GetMore_Wingman").setVisibility(true);
                  (§2"@§.getItemByName("MovieClip_GetMore_Wingman") as §^n§).§6",§ = true;
                  (§2"@§.getItemByName("MovieClip_GetMore_Wingman") as §^n§).§!!a§("Start");
               }
               break;
            case "POWERUP_OUT_WINGMAN":
               §2"@§.getItemByName("MovieClip_GetMore_Wingman").setVisibility(false);
         }
         super.uiInteractionHandler(param1,param2,param3);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§?l§.§ "G§ as §%"S§).§!n§(LevelManager.§ T§,§`g§,true);
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function getLevelLoadState() : String
      {
         return §6"'§.STATE_NAME;
      }
      
      override protected function getPauseState() : String
      {
         return §]"=§.STATE_NAME;
      }
      
      override public function getVictoryState() : String
      {
         return §6"&§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §7!6§.STATE_NAME;
      }
      
      private function §^9§() : void
      {
         (§%"9§ as §!"M§).§0!$§ = false;
         this.§@4§ = false;
         §0"E§ = false;
         if(!(§?l§.§'h§ as §%6§).§+"3§.§0-§)
         {
            this.§9D§ = 0;
            this.§5$§ = 0;
         }
         (§%"9§ as §!"M§).§=!q§();
         if(this.§7C§)
         {
            this.§7C§.onComplete = null;
            this.§7C§.§7!d§();
            this.§7C§ = null;
         }
      }
      
      private function §?L§() : void
      {
         if(this.§7C§ == null)
         {
            this.§'$§();
         }
      }
      
      public function §'$§() : void
      {
         if((§?l§.§'h§ as §%6§).§+"3§.§0-§)
         {
            return;
         }
         var _loc1_:MovieClip = §2"@§.getItemByName("Button_Wingman").mClip as MovieClip;
         this.§7C§ = §0W§.§&"5§.§%G§(§0W§.§&"5§.§]!r§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§0W§.§'I§),§0W§.§&"5§.§]!r§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§0W§.§"q§),§0W§.§&"5§.§]!r§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§0W§.§'I§),§0W§.§&"5§.§]!r§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§0W§.§"q§),§0W§.§&"5§.§]!r§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1,
            "scaleY":1
         },1,§0W§.§"q§));
         this.§7C§.onComplete = this.§'$§;
         this.§7C§.play();
      }
      
      private function §-"R§(param1:Number) : Boolean
      {
         if(this.§9D§ == 0)
         {
            §?l§.§'h§.camera.goToBirdView();
            §?l§.§'h§.camera.§?"P§(1);
            this.§5$§ = getTimer();
            this.§?L§();
         }
         var _loc2_:Number = Math.round((this.§]!8§ - this.§9D§) / 1000) - 1;
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         var _loc3_:int = Math.floor(_loc2_ / 60);
         _loc2_ %= 60;
         var _loc4_:String = "" + _loc2_;
         if(_loc2_ < 10)
         {
            _loc4_ = "0" + _loc2_;
         }
         this.§,K§.§?,§(_loc3_ + ":" + _loc4_);
         this.§9D§ += param1;
         if(this.§9D§ >= this.§]!8§)
         {
            return true;
         }
         return false;
      }
      
      public function §6!L§() : void
      {
         if(!(§?l§.§'h§ as §%6§).§+"3§.§0-§)
         {
            if(!this.§@4§)
            {
               this.§,K§.§=!9§();
               (§%"9§ as §!"M§).§0!$§ = false;
               this.§@4§ = true;
               this.§-"R§(1);
            }
         }
         else
         {
            (§%"9§ as §!"M§).§0!$§ = true;
         }
      }
      
      override protected function showTutorials() : void
      {
         §8y§.§7"?§(§2"@§,"ALL_EXTRABIRD",true);
         §8y§.showTutorials(§2"@§,true);
      }
      
      override public function deActivate() : void
      {
         this.§,K§.state = §]"§.§?!H§;
         this.§7C§ = null;
         this.§@4§ = false;
         this.§,K§.mCurrentPosition = 0;
         super.deActivate();
      }
   }
}
