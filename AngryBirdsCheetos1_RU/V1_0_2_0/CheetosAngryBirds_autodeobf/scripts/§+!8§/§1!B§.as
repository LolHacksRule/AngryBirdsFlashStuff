package §+!8§
{
   import §!7§.§=!3§;
   import §"I§.§-x§;
   import §#b§.§5!#§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §'=§.§-!1§;
   import §'=§.§]d§;
   import §,'§.§[2§;
   import §-!;§.§4^§;
   import §-!;§.§^!,§;
   import §-A§.§^!F§;
   import §2!P§.§6=§;
   import §7L§.§+!$§;
   import §7L§.§9I§;
   import §@!W§.§8!W§;
   import §[]§.§'!X§;
   import §[]§.§+F§;
   import §[]§.§=!6§;
   import §[]§.§`!`§;
   import flash.display.MovieClip;
   
   public class §1!B§ extends §;A§
   {
      
      private static const §-!S§:Number = -250;
      
      public static const §,!+§:String = "PauseState";
       
      
      private var §9-§:§4^§ = null;
      
      public function §1!B§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.start();
         }
         this.§-D§();
         this.§^!%§();
         §&X§.getItemByName("Button_Help").setEnabled(§-!1§.§2@§());
         §&X§.getItemByName("Button_Help").setVisibility(§-!1§.§2@§());
      }
      
      private function §-D§() : void
      {
         var _loc1_:String = §5!#§.§'D§;
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
         (§&X§.getItemByName("TextField_LevelName") as §'!X§).§3!E§.text = _loc1_;
         (§&X§.getItemByName("Container_PauseMenu") as §`!`§).x = §-!S§;
         this.§;h§(false);
         §6=§.§6>§.isPaused = true;
         §&X§.getItemByName("MovieClip_SoundsOff").setVisibility(!§@!!§.§7!1§());
         if(this.§9-§ != null)
         {
            this.§9-§.stop();
         }
         this.§9-§ = §^!,§.§0!S§.§"!Y§(§^!,§.§0!S§.§3n§(§&X§.getItemByName("Container_PauseMenu") as §`!`§,{"x":0},null,0.25),§^!,§.§0!S§.§3n§((§&X§.getItemByName("MovieClip_DarkBG") as §=!6§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§9-§.onComplete = this.§'!$§;
         this.§9-§.play();
      }
      
      private function §'!$§() : void
      {
         this.§;h§(true);
      }
      
      private function §;h§(param1:Boolean) : void
      {
         (§&X§.getItemByName("Button_Resume") as §+F§).setEnabled(param1);
         (§&X§.getItemByName("Button_Replay") as §+F§).setEnabled(param1);
         (§&X§.getItemByName("Button_Menu") as §+F§).setEnabled(param1);
         (§&X§.getItemByName("Button_Help") as §+F§).setEnabled(param1);
         (§&X§.getItemByName("Button_Sound") as §+F§).setEnabled(param1);
         §&X§.getItemByName("Button_Help").setEnabled(§-!1§.§2@§());
      }
      
      private function §"#§() : void
      {
         if(this.§9-§ != null)
         {
            this.§9-§.stop();
         }
         this.§9-§ = §^!,§.§0!S§.§"!Y§(§^!,§.§0!S§.§3n§(§&X§.getItemByName("Container_PauseMenu") as §`!`§,{"x":§-!S§},null,0.25),§^!,§.§0!S§.§3n§((§&X§.getItemByName("MovieClip_DarkBG") as §=!6§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§9-§.onComplete = this.§`@§;
         this.§9-§.play();
      }
      
      private function §`@§() : void
      {
         mNextState = StatePlay.§,!+§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §6=§.§6>§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§+!$§ = null;
         var _loc7_:§^!F§ = null;
         switch(param2)
         {
            case "HELP":
               this.§"#§();
               for each(_loc7_ in §8!W§.§=X§.slingshot.§3!Q§)
               {
                  §@!!§.§<R§.§4!3§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§8!W§.§=X§ as §=!3§).§^!7§())
               {
                  if(!§;A§.sCheetosPopups.showPopup(§]d§.RESTART_LEVEL))
                  {
                     this.§7^§();
                  }
               }
               else
               {
                  this.§7^§();
               }
               break;
            case "RESUME_LEVEL":
               this.§"#§();
               §8!W§.§?!,§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§8!W§.§=X§ as §=!3§).§^!7§())
               {
                  if(!§;A§.sCheetosPopups.showPopup(§]d§.§[-§))
                  {
                     this.§#!W§();
                  }
               }
               else
               {
                  this.§#!W§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§@!!§.§7!1§();
               §@!!§.§&!F§(_loc4_);
               §&X§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§8!W§.§>J§();
               §8!W§.§?!§(_loc5_);
               §&X§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§[-§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.RESTART_LEVEL)
               {
                  this.§7^§();
                  break;
               }
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§[-§)
               {
                  this.§#!W§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §+!$§;
               §@!!§.§%F§.§4<§ = !§@!!§.§%F§.§4<§;
               if(§@!!§.§%F§.§4<§)
               {
                  _loc6_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§+!$§.§^U§);
               break;
         }
      }
      
      private function §7^§() : void
      {
         §=!S§.§?#§();
         mNextState = §=!S§.§,!+§;
      }
      
      private function §#!W§() : void
      {
         try
         {
            §[2§.§^J§("levelComplete",§5!#§.§'D§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §=f§.§,!+§;
      }
      
      private function §^!%§() : void
      {
         var _loc1_:§+F§ = §&X§.getItemByName("Button_Replay") as §+F§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§8!W§.§=X§ as §=!3§).§^!7§())
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
