package §3n§
{
   import §"Z§.§-N§;
   import §"Z§.§5!2§;
   import §+!^§.§'Y§;
   import §0q§.§7+§;
   import §1Y§.§+$§;
   import §4p§.§-5§;
   import §4p§.§;O§;
   import §7'§.§'q§;
   import §7'§.§-!6§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §9T§.§%!_§;
   import §>N§.§"u§;
   import §?>§.§ !V§;
   import §?>§.§!&§;
   import §?>§.§+&§;
   import §?>§.§<l§;
   import §^9§.§[!L§;
   import flash.display.MovieClip;
   import §import§.§&^§;
   
   public class §;A§ extends §<D§
   {
      
      private static const §,!F§:Number = -250;
      
      public static const §,F§:String = "PauseState";
       
      
      private var §1,§:§5!2§ = null;
      
      public function §;A§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§"u§.§-2§)
         {
            §"u§.§-2§.start();
         }
         this.§5!C§();
         this.§&v§();
         §2!J§.getItemByName("Button_Help").setEnabled(§;O§.§^1§());
         §2!J§.getItemByName("Button_Help").setVisibility(§;O§.§^1§());
      }
      
      private function §5!C§() : void
      {
         var _loc1_:String = §[!L§.§^!X§;
         if(_loc1_.indexOf("1-") == 0)
         {
            try
            {
               switch(parseInt(_loc1_.substring(2)))
               {
                  case 4:
                     _loc1_ = "2-1";
                     break;
                  case 5:
                     _loc1_ = "2-2";
                     break;
                  case 6:
                     _loc1_ = "2-3";
                     break;
                  case 7:
                     _loc1_ = "2-4";
                     break;
                  case 8:
                     _loc1_ = "2-5";
               }
            }
            catch(error:Error)
            {
            }
         }
         (§2!J§.getItemByName("TextField_LevelName") as §<l§).§]!N§.text = _loc1_;
         (§2!J§.getItemByName("Container_PauseMenu") as § !V§).x = §,!F§;
         this.§`!E§(false);
         §"u§.§4f§.isPaused = true;
         §2!J§.getItemByName("MovieClip_SoundsOff").setVisibility(!§7!^§.§4!J§());
         if(this.§1,§ != null)
         {
            this.§1,§.stop();
         }
         this.§1,§ = §-N§.§<?§.§4t§(§-N§.§<?§.§,!D§(§2!J§.getItemByName("Container_PauseMenu") as § !V§,{"x":0},null,0.25),§-N§.§<?§.§,!D§((§2!J§.getItemByName("MovieClip_DarkBG") as §+&§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§1,§.onComplete = this.§?!J§;
         this.§1,§.play();
      }
      
      private function §?!J§() : void
      {
         this.§`!E§(true);
      }
      
      private function §`!E§(param1:Boolean) : void
      {
         (§2!J§.getItemByName("Button_Resume") as §!&§).setEnabled(param1);
         (§2!J§.getItemByName("Button_Replay") as §!&§).setEnabled(param1);
         (§2!J§.getItemByName("Button_Menu") as §!&§).setEnabled(param1);
         (§2!J§.getItemByName("Button_Help") as §!&§).setEnabled(param1);
         (§2!J§.getItemByName("Button_Sound") as §!&§).setEnabled(param1);
         §2!J§.getItemByName("Button_Help").setEnabled(§;O§.§^1§());
      }
      
      private function §';§() : void
      {
         if(this.§1,§ != null)
         {
            this.§1,§.stop();
         }
         this.§1,§ = §-N§.§<?§.§4t§(§-N§.§<?§.§,!D§(§2!J§.getItemByName("Container_PauseMenu") as § !V§,{"x":§,!F§},null,0.25),§-N§.§<?§.§,!D§((§2!J§.getItemByName("MovieClip_DarkBG") as §+&§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§1,§.onComplete = this.§%C§;
         this.§1,§.play();
      }
      
      private function §%C§() : void
      {
         mNextState = StatePlay.§,F§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §"u§.§4f§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§'q§ = null;
         var _loc7_:§%!_§ = null;
         switch(param2)
         {
            case "HELP":
               this.§';§();
               for each(_loc7_ in §'Y§.§@j§.slingshot.§2!R§)
               {
                  §7!^§.§3!U§.§5!U§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§'Y§.§@j§ as §7+§).§^!G§())
               {
                  if(!§<D§.sCheetosPopups.showPopup(§-5§.RESTART_LEVEL))
                  {
                     this.§?t§();
                  }
               }
               else
               {
                  this.§?t§();
               }
               break;
            case "RESUME_LEVEL":
               this.§';§();
               §'Y§.§"r§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§'Y§.§@j§ as §7+§).§^!G§())
               {
                  if(!§<D§.sCheetosPopups.showPopup(§-5§.§true §))
                  {
                     this.§9K§();
                  }
               }
               else
               {
                  this.§9K§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§7!^§.§4!J§();
               §7!^§.§&g§(_loc4_);
               §2!J§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§'Y§.§2,§();
               §'Y§.§2!;§(_loc5_);
               §2!J§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§true §)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.RESTART_LEVEL)
               {
                  this.§?t§();
                  break;
               }
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§true §)
               {
                  this.§9K§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §'q§;
               §7!^§.§-!@§.§=-§ = !§7!^§.§-!@§.§=-§;
               if(§7!^§.§-!@§.§=-§)
               {
                  _loc6_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§'q§.§"!^§);
               break;
         }
      }
      
      private function §?t§() : void
      {
         §7!6§.§]!D§();
         mNextState = §7!6§.§,F§;
      }
      
      private function §9K§() : void
      {
         try
         {
            §&^§.§4'§("levelComplete",§[!L§.§^!X§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §-'§.§,F§;
      }
      
      private function §&v§() : void
      {
         var _loc1_:§!&§ = §2!J§.getItemByName("Button_Replay") as §!&§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§'Y§.§@j§ as §7+§).§^!G§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
   }
}
