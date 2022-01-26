package §%Y§
{
   import §!7§.§!>§;
   import §!7§.§`R§;
   import §%!5§.§;D§;
   import §'!N§.§71§;
   import §'!N§.§9!O§;
   import §,B§.§#!!§;
   import §,B§.§4!0§;
   import §-!§.§-§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §6<§.§9H§;
   import §8!`§.§3!Q§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §;[§.§'z§;
   import §;[§.§7!F§;
   import §;[§.§>!^§;
   import §;[§.§]O§;
   import §]m§.§-D§;
   import flash.display.MovieClip;
   
   public class §9g§ extends §,5§
   {
      
      private static const §@D§:Number = -250;
      
      public static const §7!Q§:String = "PauseState";
       
      
      private var §!!>§:§!>§ = null;
      
      public function §9g§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-§.§-G§)
         {
            §-§.§-G§.start();
         }
         this.§=,§();
         this.§0!I§();
         §>#§.getItemByName("Button_Help").setEnabled(§#!!§.§1!Y§());
         §>#§.getItemByName("Button_Help").setVisibility(§#!!§.§1!Y§());
      }
      
      private function §=,§() : void
      {
         var _loc1_:String = §7M§.§9-§;
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
         (§>#§.getItemByName("TextField_LevelName") as §'z§).§%!B§.text = _loc1_;
         (§>#§.getItemByName("Container_PauseMenu") as §>!^§).x = §@D§;
         this.§,C§(false);
         §-§.§'L§.isPaused = true;
         §>#§.getItemByName("MovieClip_SoundsOff").setVisibility(!§1R§.§^A§());
         if(this.§!!>§ != null)
         {
            this.§!!>§.stop();
         }
         this.§!!>§ = §`R§.§!!8§.§?!3§(§`R§.§!!8§.§ B§(§>#§.getItemByName("Container_PauseMenu") as §>!^§,{"x":0},null,0.25),§`R§.§!!8§.§ B§((§>#§.getItemByName("MovieClip_DarkBG") as §]O§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§!!>§.onComplete = this.§[!F§;
         this.§!!>§.play();
      }
      
      private function §[!F§() : void
      {
         this.§,C§(true);
      }
      
      private function §,C§(param1:Boolean) : void
      {
         (§>#§.getItemByName("Button_Resume") as §7!F§).setEnabled(param1);
         (§>#§.getItemByName("Button_Replay") as §7!F§).setEnabled(param1);
         (§>#§.getItemByName("Button_Menu") as §7!F§).setEnabled(param1);
         (§>#§.getItemByName("Button_Help") as §7!F§).setEnabled(param1);
         (§>#§.getItemByName("Button_Sound") as §7!F§).setEnabled(param1);
         §>#§.getItemByName("Button_Help").setEnabled(§#!!§.§1!Y§());
      }
      
      private function §<U§() : void
      {
         if(this.§!!>§ != null)
         {
            this.§!!>§.stop();
         }
         this.§!!>§ = §`R§.§!!8§.§?!3§(§`R§.§!!8§.§ B§(§>#§.getItemByName("Container_PauseMenu") as §>!^§,{"x":§@D§},null,0.25),§`R§.§!!8§.§ B§((§>#§.getItemByName("MovieClip_DarkBG") as §]O§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§!!>§.onComplete = this.§19§;
         this.§!!>§.play();
      }
      
      private function §19§() : void
      {
         mNextState = StatePlay.§7!Q§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §-§.§'L§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§71§ = null;
         var _loc7_:§3!Q§ = null;
         switch(param2)
         {
            case "HELP":
               this.§<U§();
               for each(_loc7_ in §@!Q§.§7l§.slingshot.§%!4§)
               {
                  §1R§.§0!N§.§-V§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§@!Q§.§7l§ as §9H§).§8u§())
               {
                  if(!§,5§.sCheetosPopups.showPopup(§4!0§.RESTART_LEVEL))
                  {
                     this.§=o§();
                  }
               }
               else
               {
                  this.§=o§();
               }
               break;
            case "RESUME_LEVEL":
               this.§<U§();
               §@!Q§.§5m§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§@!Q§.§7l§ as §9H§).§8u§())
               {
                  if(!§,5§.sCheetosPopups.showPopup(§4!0§.§3k§))
                  {
                     this.§-!!§();
                  }
               }
               else
               {
                  this.§-!!§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§1R§.§^A§();
               §1R§.§5K§(_loc4_);
               §>#§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§@!Q§.§@5§();
               §@!Q§.§&H§(_loc5_);
               §>#§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§3k§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.RESTART_LEVEL)
               {
                  this.§=o§();
                  break;
               }
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.§3k§)
               {
                  this.§-!!§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §71§;
               §1R§.§]c§.§0]§ = !§1R§.§]c§.§0]§;
               if(§1R§.§]c§.§0]§)
               {
                  _loc6_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§71§.§69§);
               break;
         }
      }
      
      private function §=o§() : void
      {
         §2O§.§]! §();
         mNextState = §2O§.§7!Q§;
      }
      
      private function §-!!§() : void
      {
         try
         {
            §;D§.§;!6§("levelComplete",§7M§.§9-§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §@4§.§7!Q§;
      }
      
      private function §0!I§() : void
      {
         var _loc1_:§7!F§ = §>#§.getItemByName("Button_Replay") as §7!F§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§@!Q§.§7l§ as §9H§).§8u§())
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
