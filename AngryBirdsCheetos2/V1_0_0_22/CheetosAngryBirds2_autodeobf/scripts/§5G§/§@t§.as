package §5G§
{
   import § g§.§<n§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §,§.§ 3§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §1!E§.§>f§;
   import §2v§.§!L§;
   import §2v§.§&O§;
   import §6;§.§%[§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §=!g§.§!!@§;
   import §>M§.§'V§;
   import §>M§.§-!P§;
   import §>M§.§<6§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   
   public class §@t§ extends §?,§
   {
      
      private static const §3!&§:Number = -250;
      
      public static const §3!?§:String = "PauseState";
       
      
      private var §1C§:§7g§ = null;
      
      public function §@t§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§%[§.§`1§)
         {
            §%[§.§`1§.start();
         }
         this.§;!'§();
         this.§+g§();
         §%!0§.getItemByName("Button_Help").setEnabled(§!L§.§'R§());
         §%!0§.getItemByName("Button_Help").setVisibility(§!L§.§'R§());
         if(§@!Z§.§^&§ && §@!Z§.§^&§ is §<n§)
         {
            (§@!Z§.§^&§ as §<n§).mouseEnabled = false;
         }
      }
      
      private function §;!'§() : void
      {
         var _loc1_:String = §5!9§.§-!O§.§7!6§(§@;§.§6!K§);
         (§%!0§.getItemByName("TextField_LevelName") as §'V§).§2!%§.text = _loc1_;
         (§%!0§.getItemByName("Container_PauseMenu") as §<6§).x = §3!&§;
         this.§8!c§(false);
         §%[§.§6+§.isPaused = true;
         §%!0§.getItemByName("MovieClip_SoundsOff").setVisibility(!§5!9§.§!t§());
         if(this.§1C§ != null)
         {
            this.§1C§.stop();
         }
         this.§1C§ = §%g§.§'I§.§!!7§(§%g§.§'I§.§5!0§(§%!0§.getItemByName("Container_PauseMenu") as §<6§,{"x":0},null,0.25),§%g§.§'I§.§5!0§((§%!0§.getItemByName("MovieClip_DarkBG") as §-!P§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§1C§.onComplete = this.§ !§;
         this.§1C§.play();
      }
      
      private function § !§() : void
      {
         this.§8!c§(true);
      }
      
      private function §8!c§(param1:Boolean) : void
      {
         (§%!0§.getItemByName("Button_Resume") as §^-§).setEnabled(param1);
         (§%!0§.getItemByName("Button_Replay") as §^-§).setEnabled(param1);
         (§%!0§.getItemByName("Button_Menu") as §^-§).setEnabled(param1);
         (§%!0§.getItemByName("Button_Help") as §^-§).setEnabled(param1);
         (§%!0§.getItemByName("Button_Sound") as §^-§).setEnabled(param1);
         §%!0§.getItemByName("Button_Help").setEnabled(§!L§.§'R§());
      }
      
      private function §5]§() : void
      {
         if(this.§1C§ != null)
         {
            this.§1C§.stop();
         }
         this.§1C§ = §%g§.§'I§.§!!7§(§%g§.§'I§.§5!0§(§%!0§.getItemByName("Container_PauseMenu") as §<6§,{"x":§3!&§},null,0.25),§%g§.§'I§.§5!0§((§%!0§.getItemByName("MovieClip_DarkBG") as §-!P§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§1C§.onComplete = this.§`G§;
         this.§1C§.play();
      }
      
      private function §`G§() : void
      {
         mNextState = StatePlay.§3!?§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         this.§5;§();
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §%[§.§6+§.isPaused = false;
         if(§@!Z§.§^&§ && §@!Z§.§^&§ is §<n§)
         {
            (§@!Z§.§^&§ as §<n§).mouseEnabled = true;
         }
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc4_:* = false;
         var _loc5_:§0j§ = null;
         var _loc6_:§ 3§ = null;
         switch(param2)
         {
            case "HELP":
               this.§5]§();
               for each(_loc6_ in §@!Z§.§;!,§.slingshot.§0!b§)
               {
                  §5!9§.§#%§.§2!;§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§@!Z§.§;!,§ as § $§).§,!e§())
               {
                  if(§>f§.§%!`§ && §>f§.§%!`§.§`!b§ >= §"!d§.§"!Q§)
                  {
                     if(!§?,§.sCheetosPopups.showPopup(§&O§.RESTART_LEVEL))
                     {
                        this.§+8§();
                     }
                  }
                  else
                  {
                     §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT);
                  }
               }
               else
               {
                  this.§+8§();
               }
               break;
            case "RESUME_LEVEL":
               this.§5]§();
               §@!Z§.§,R§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§@!Z§.§;!,§ as § $§).§,!e§())
               {
                  if(!§?,§.sCheetosPopups.showPopup(§&O§.§3!T§))
                  {
                     this.§+!K§();
                  }
               }
               else
               {
                  this.§+!K§();
               }
               break;
            case "TOGGLE_SOUNDS":
               §5!9§.§+#§(!§5!9§.§!t§());
               this.§5;§();
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§@!Z§.§4!X§();
               §@!Z§.§1L§(_loc4_);
               §%!0§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3!T§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
               {
                  this.§+8§();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3!T§)
               {
                  this.§+!K§();
               }
               break;
            case "CREDIT_OK":
               sCheetosPopups.hidePopup();
               break;
            case "CHECKBOX_CHANGE":
               _loc5_ = param3 as §0j§;
               §5!9§.§-!O§.§8!&§ = !§5!9§.§-!O§.§8!&§;
               if(§5!9§.§-!O§.§8!&§)
               {
                  _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§0j§.§+o§);
               break;
         }
      }
      
      private function §5;§() : void
      {
         var _loc1_:Boolean = §5!9§.§!t§();
         §5!9§.§+#§(_loc1_);
         §%!0§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
      }
      
      private function §+8§() : void
      {
         §'!9§.§7T§();
         mNextState = §'!9§.§3!?§;
      }
      
      private function §+!K§() : void
      {
         §!!@§.§%Q§("levelComplete",§5!9§.§-!O§.§ !&§(§@;§.§6!K§),false);
         §,!7§.§13§();
         mNextState = §39§.§3!?§;
      }
      
      private function §+g§() : void
      {
         var _loc1_:§^-§ = §%!0§.getItemByName("Button_Replay") as §^-§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§@!Z§.§;!,§ as § $§).§,!e§())
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
