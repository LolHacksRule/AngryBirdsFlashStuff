package §@1§
{
   import § !X§.§+2§;
   import § !X§.§8J§;
   import §!>§.§!#§;
   import §!>§.§5!$§;
   import §"!@§.§3!+§;
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §'!S§.§,!%§;
   import §+!7§.§'u§;
   import §3E§.§>o§;
   import §7!U§.§2!7§;
   import §7f§.§,!>§;
   import §7f§.§=!1§;
   import §7f§.§?i§;
   import §7f§.§`g§;
   import §<!P§.§>l§;
   import §>!6§.§0L§;
   import §^r§.§%%§;
   import §^r§.§>`§;
   import flash.display.MovieClip;
   
   public class §53§ extends §]R§
   {
      
      private static const §0!@§:Number = -250;
      
      public static const §]U§:String = "PauseState";
       
      
      private var §8]§:§5!$§ = null;
      
      public function §53§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.start();
         }
         this.§<!_§();
         this.§`4§();
         §[B§.getItemByName("Button_Help").setEnabled(§8J§.§8!>§());
         §[B§.getItemByName("Button_Help").setVisibility(§8J§.§8!>§());
      }
      
      private function §<!_§() : void
      {
         var _loc1_:String = §3!+§.§%2§;
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
         (§[B§.getItemByName("TextField_LevelName") as §`g§).§^!N§.text = _loc1_;
         (§[B§.getItemByName("Container_PauseMenu") as §?i§).x = §0!@§;
         this.§6L§(false);
         §,!%§.§7x§.isPaused = true;
         §[B§.getItemByName("MovieClip_SoundsOff").setVisibility(!§+§.§%!@§());
         if(this.§8]§ != null)
         {
            this.§8]§.stop();
         }
         this.§8]§ = §!#§.§!5§.§^!;§(§!#§.§!5§.§&![§(§[B§.getItemByName("Container_PauseMenu") as §?i§,{"x":0},null,0.25),§!#§.§!5§.§&![§((§[B§.getItemByName("MovieClip_DarkBG") as §=!1§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§8]§.onComplete = this.§ ;§;
         this.§8]§.play();
      }
      
      private function § ;§() : void
      {
         this.§6L§(true);
      }
      
      private function §6L§(param1:Boolean) : void
      {
         (§[B§.getItemByName("Button_Resume") as §,!>§).setEnabled(param1);
         (§[B§.getItemByName("Button_Replay") as §,!>§).setEnabled(param1);
         (§[B§.getItemByName("Button_Menu") as §,!>§).setEnabled(param1);
         (§[B§.getItemByName("Button_Help") as §,!>§).setEnabled(param1);
         (§[B§.getItemByName("Button_Sound") as §,!>§).setEnabled(param1);
         §[B§.getItemByName("Button_Help").setEnabled(§8J§.§8!>§());
      }
      
      private function §2!J§() : void
      {
         if(this.§8]§ != null)
         {
            this.§8]§.stop();
         }
         this.§8]§ = §!#§.§!5§.§^!;§(§!#§.§!5§.§&![§(§[B§.getItemByName("Container_PauseMenu") as §?i§,{"x":§0!@§},null,0.25),§!#§.§!5§.§&![§((§[B§.getItemByName("MovieClip_DarkBG") as §=!1§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§8]§.onComplete = this.§1!K§;
         this.§8]§.play();
      }
      
      private function §1!K§() : void
      {
         mNextState = StatePlay.§]U§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,!%§.§7x§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§%%§ = null;
         var _loc7_:§>o§ = null;
         switch(param2)
         {
            case "HELP":
               this.§2!J§();
               for each(_loc7_ in §2!7§.§5G§.slingshot.§0!`§)
               {
                  §+§.§3s§.§^!<§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§2!7§.§5G§ as §'u§).§#!9§())
               {
                  if(!§]R§.sCheetosPopups.showPopup(§+2§.RESTART_LEVEL))
                  {
                     this.§<X§();
                  }
               }
               else
               {
                  this.§<X§();
               }
               break;
            case "RESUME_LEVEL":
               this.§2!J§();
               §2!7§.§2T§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§2!7§.§5G§ as §'u§).§#!9§())
               {
                  if(!§]R§.sCheetosPopups.showPopup(§+2§.§0U§))
                  {
                     this.§4q§();
                  }
               }
               else
               {
                  this.§4q§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§+§.§%!@§();
               §+§.§"!;§(_loc4_);
               §[B§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§2!7§.§^4§();
               §2!7§.§9!O§(_loc5_);
               §[B§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§0U§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.RESTART_LEVEL)
               {
                  this.§<X§();
                  break;
               }
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§0U§)
               {
                  this.§4q§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §%%§;
               §+§.§ each§.§3l§ = !§+§.§ each§.§3l§;
               if(§+§.§ each§.§3l§)
               {
                  _loc6_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§%%§.§'$§);
               break;
         }
      }
      
      private function §<X§() : void
      {
         §#!5§.§#!,§();
         mNextState = §#!5§.§]U§;
      }
      
      private function §4q§() : void
      {
         try
         {
            §0L§.§[!H§("levelComplete",§3!+§.§%2§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §05§.§]U§;
      }
      
      private function §`4§() : void
      {
         var _loc1_:§,!>§ = §[B§.getItemByName("Button_Replay") as §,!>§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§2!7§.§5G§ as §'u§).§#!9§())
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
