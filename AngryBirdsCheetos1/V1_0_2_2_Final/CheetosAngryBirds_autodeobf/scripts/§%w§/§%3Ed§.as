package §%w§
{
   import §!X§.§9k§;
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §&!7§.§,!A§;
   import §,j§.§0!@§;
   import §,j§.§1-§;
   import §,j§.§=X§;
   import §,j§.§[i§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §5!M§.§<e§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §@!?§.§1!C§;
   import §]!F§.§7e§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   
   public class §>d§ extends §;s§
   {
      
      private static const §]!Z§:Number = -250;
      
      public static const §9!P§:String = "PauseState";
       
      
      private var §7!G§:§&!!§ = null;
      
      public function §>d§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.start();
         }
         this.§;W§();
         this.§?<§();
         §3t§.getItemByName("Button_Help").setEnabled(§1!C§.§0!E§());
         §3t§.getItemByName("Button_Help").setVisibility(§1!C§.§0!E§());
      }
      
      private function §;W§() : void
      {
         var _loc1_:String = §7e§.§^"§;
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
         (§3t§.getItemByName("TextField_LevelName") as §[i§).§7t§.text = _loc1_;
         (§3t§.getItemByName("Container_PauseMenu") as §1-§).x = §]!Z§;
         this.§2]§(false);
         §9!'§.§`!@§.isPaused = true;
         §3t§.getItemByName("MovieClip_SoundsOff").setVisibility(!§#x§.§7!S§());
         if(this.§7!G§ != null)
         {
            this.§7!G§.stop();
         }
         this.§7!G§ = §';§.§%!O§.§4!;§(§';§.§%!O§.§set §(§3t§.getItemByName("Container_PauseMenu") as §1-§,{"x":0},null,0.25),§';§.§%!O§.§set §((§3t§.getItemByName("MovieClip_DarkBG") as §=X§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§7!G§.onComplete = this.§1!@§;
         this.§7!G§.play();
      }
      
      private function §1!@§() : void
      {
         this.§2]§(true);
      }
      
      private function §2]§(param1:Boolean) : void
      {
         (§3t§.getItemByName("Button_Resume") as §0!@§).setEnabled(param1);
         (§3t§.getItemByName("Button_Replay") as §0!@§).setEnabled(param1);
         (§3t§.getItemByName("Button_Menu") as §0!@§).setEnabled(param1);
         (§3t§.getItemByName("Button_Help") as §0!@§).setEnabled(param1);
         (§3t§.getItemByName("Button_Sound") as §0!@§).setEnabled(param1);
         §3t§.getItemByName("Button_Help").setEnabled(§1!C§.§0!E§());
      }
      
      private function §0!#§() : void
      {
         if(this.§7!G§ != null)
         {
            this.§7!G§.stop();
         }
         this.§7!G§ = §';§.§%!O§.§4!;§(§';§.§%!O§.§set §(§3t§.getItemByName("Container_PauseMenu") as §1-§,{"x":§]!Z§},null,0.25),§';§.§%!O§.§set §((§3t§.getItemByName("MovieClip_DarkBG") as §=X§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§7!G§.onComplete = this.§7!^§;
         this.§7!G§.play();
      }
      
      private function §7!^§() : void
      {
         mNextState = StatePlay.§9!P§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §9!'§.§`!@§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§&!3§ = null;
         var _loc7_:§9k§ = null;
         switch(param2)
         {
            case "HELP":
               this.§0!#§();
               for each(_loc7_ in §7?§.§4!H§.slingshot.§8k§)
               {
                  §#x§.§[Y§.§2g§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§7?§.§4!H§ as §<e§).§#n§())
               {
                  if(!§;s§.sCheetosPopups.showPopup(§0!U§.RESTART_LEVEL))
                  {
                     this.§ A§();
                  }
               }
               else
               {
                  this.§ A§();
               }
               break;
            case "RESUME_LEVEL":
               this.§0!#§();
               §7?§.§]!1§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§7?§.§4!H§ as §<e§).§#n§())
               {
                  if(!§;s§.sCheetosPopups.showPopup(§0!U§.§]k§))
                  {
                     this.§?!§();
                  }
               }
               else
               {
                  this.§?!§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§#x§.§7!S§();
               §#x§.§<]§(_loc4_);
               §3t§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§7?§.§`!>§();
               §7?§.§?B§(_loc5_);
               §3t§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§]k§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
               {
                  this.§ A§();
                  break;
               }
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§]k§)
               {
                  this.§?!§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §&!3§;
               §#x§.§=!!§.§9!E§ = !§#x§.§=!!§.§9!E§;
               if(§#x§.§=!!§.§9!E§)
               {
                  _loc6_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§&!3§.§;2§);
               break;
         }
      }
      
      private function § A§() : void
      {
         §[!X§.§]!J§();
         mNextState = §[!X§.§9!P§;
      }
      
      private function §?!§() : void
      {
         try
         {
            §,!A§.§9!M§("levelComplete",§7e§.§^"§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §`L§.§9!P§;
      }
      
      private function §?<§() : void
      {
         var _loc1_:§0!@§ = §3t§.getItemByName("Button_Replay") as §0!@§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§7?§.§4!H§ as §<e§).§#n§())
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
