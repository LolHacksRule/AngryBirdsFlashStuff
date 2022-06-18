package §'Q§
{
   import §!!S§.§>a§;
   import §!!S§.§^P§;
   import §#!5§.§>!0§;
   import §0&§.§@o§;
   import §3!M§.§&!S§;
   import §3!M§.§&V§;
   import §3!M§.§7^§;
   import §3!M§.§`!;§;
   import §6!P§.§88§;
   import §6!P§.§^!>§;
   import §6=§.§"!^§;
   import §6=§.§`!<§;
   import §7z§.§&!>§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §?!F§.§0!Y§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import §`M§.§'C§;
   import flash.display.MovieClip;
   
   public class §8!O§ extends §=!R§
   {
      
      private static const §'>§:Number = -250;
      
      public static const §1o§:String = "PauseState";
       
      
      private var §;9§:§88§ = null;
      
      public function §8!O§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'C§.§3b§)
         {
            §'C§.§3b§.start();
         }
         this.§>!N§();
         this.§=!X§();
         §2m§.getItemByName("Button_Help").setEnabled(§"!^§.§,j§());
         §2m§.getItemByName("Button_Help").setVisibility(§"!^§.§,j§());
      }
      
      private function §>!N§() : void
      {
         var _loc1_:String = §<!,§.§1D§;
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
         (§2m§.getItemByName("TextField_LevelName") as §&!S§).§@9§.text = _loc1_;
         (§2m§.getItemByName("Container_PauseMenu") as §7^§).x = §'>§;
         this.§ _§(false);
         §'C§.§&=§.isPaused = true;
         §2m§.getItemByName("MovieClip_SoundsOff").setVisibility(!§4+§.§-n§());
         if(this.§;9§ != null)
         {
            this.§;9§.stop();
         }
         this.§;9§ = §^!>§.§[P§.§#n§(§^!>§.§[P§.§@m§(§2m§.getItemByName("Container_PauseMenu") as §7^§,{"x":0},null,0.25),§^!>§.§[P§.§@m§((§2m§.getItemByName("MovieClip_DarkBG") as §&V§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§;9§.onComplete = this.§,0§;
         this.§;9§.play();
      }
      
      private function §,0§() : void
      {
         this.§ _§(true);
      }
      
      private function § _§(param1:Boolean) : void
      {
         (§2m§.getItemByName("Button_Resume") as §`!;§).setEnabled(param1);
         (§2m§.getItemByName("Button_Replay") as §`!;§).setEnabled(param1);
         (§2m§.getItemByName("Button_Menu") as §`!;§).setEnabled(param1);
         (§2m§.getItemByName("Button_Help") as §`!;§).setEnabled(param1);
         (§2m§.getItemByName("Button_Sound") as §`!;§).setEnabled(param1);
         §2m§.getItemByName("Button_Help").setEnabled(§"!^§.§,j§());
      }
      
      private function §`!_§() : void
      {
         if(this.§;9§ != null)
         {
            this.§;9§.stop();
         }
         this.§;9§ = §^!>§.§[P§.§#n§(§^!>§.§[P§.§@m§(§2m§.getItemByName("Container_PauseMenu") as §7^§,{"x":§'>§},null,0.25),§^!>§.§[P§.§@m§((§2m§.getItemByName("MovieClip_DarkBG") as §&V§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§;9§.onComplete = this.§[^§;
         this.§;9§.play();
      }
      
      private function §[^§() : void
      {
         mNextState = StatePlay.§1o§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §'C§.§&=§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§>a§ = null;
         var _loc7_:§&!>§ = null;
         switch(param2)
         {
            case "HELP":
               this.§`!_§();
               for each(_loc7_ in §7`§.§2'§.slingshot.§`u§)
               {
                  §4+§.§2!K§.§ L§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§7`§.§2'§ as §@o§).§ null§())
               {
                  if(!§=!R§.sCheetosPopups.showPopup(§`!<§.RESTART_LEVEL))
                  {
                     this.§+@§();
                  }
               }
               else
               {
                  this.§+@§();
               }
               break;
            case "RESUME_LEVEL":
               this.§`!_§();
               §7`§.§,!V§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§7`§.§2'§ as §@o§).§ null§())
               {
                  if(!§=!R§.sCheetosPopups.showPopup(§`!<§.§<!P§))
                  {
                     this.§%!O§();
                  }
               }
               else
               {
                  this.§%!O§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§4+§.§-n§();
               §4+§.§&!X§(_loc4_);
               §2m§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§7`§.§+x§();
               §7`§.§0!&§(_loc5_);
               §2m§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§<!P§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.RESTART_LEVEL)
               {
                  this.§+@§();
                  break;
               }
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§<!P§)
               {
                  this.§%!O§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §>a§;
               §4+§.§;U§.§^5§ = !§4+§.§;U§.§^5§;
               if(§4+§.§;U§.§^5§)
               {
                  _loc6_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§>a§.§%b§);
               break;
         }
      }
      
      private function §+@§() : void
      {
         §8!E§.§1!5§();
         mNextState = §8!E§.§1o§;
      }
      
      private function §%!O§() : void
      {
         try
         {
            §>!0§.§7!I§("levelComplete",§<!,§.§1D§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §@Q§.§1o§;
      }
      
      private function §=!X§() : void
      {
         var _loc1_:§`!;§ = §2m§.getItemByName("Button_Replay") as §`!;§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§7`§.§2'§ as §@o§).§ null§())
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
