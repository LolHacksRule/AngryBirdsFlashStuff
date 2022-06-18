package §2!C§
{
   import §&h§.§+Y§;
   import §0V§.§6!G§;
   import §1e§.§&!R§;
   import §1e§.§>c§;
   import §2K§.§ 3§;
   import §2K§.§,!@§;
   import §2K§.§,d§;
   import §2K§.§catch§;
   import §39§.§-W§;
   import §6!K§.§#![§;
   import §6!K§.§3l§;
   import §6!S§.§!<§;
   import §6!S§.§,!9§;
   import §9!S§.§+!=§;
   import §94§.§&!7§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §]u§.§+e§;
   import §^Q§.§,^§;
   import flash.display.MovieClip;
   
   public class §-8§ extends §1!b§
   {
      
      private static const §!a§:Number = -250;
      
      public static const §+!a§:String = "PauseState";
       
      
      private var override:§,!9§ = null;
      
      public function §-8§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.start();
         }
         this.§@!<§();
         this.§3!D§();
         §?!?§.getItemByName("Button_Help").setEnabled(§>c§.§,! §());
         §?!?§.getItemByName("Button_Help").setVisibility(§>c§.§,! §());
      }
      
      private function §@!<§() : void
      {
         var _loc1_:String = §-W§.§,[§;
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
         (§?!?§.getItemByName("TextField_LevelName") as §catch§).§3!X§.text = _loc1_;
         (§?!?§.getItemByName("Container_PauseMenu") as §,!@§).x = §!a§;
         this.§'v§(false);
         §&!7§.§ h§.isPaused = true;
         §?!?§.getItemByName("MovieClip_SoundsOff").setVisibility(!§7d§.§ 7§());
         if(this.override != null)
         {
            this.override.stop();
         }
         this.override = §!<§.§%b§.§'T§(§!<§.§%b§.§9!!§(§?!?§.getItemByName("Container_PauseMenu") as §,!@§,{"x":0},null,0.25),§!<§.§%b§.§9!!§((§?!?§.getItemByName("MovieClip_DarkBG") as §,d§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.override.onComplete = this.§=I§;
         this.override.play();
      }
      
      private function §=I§() : void
      {
         this.§'v§(true);
      }
      
      private function §'v§(param1:Boolean) : void
      {
         (§?!?§.getItemByName("Button_Resume") as § 3§).setEnabled(param1);
         (§?!?§.getItemByName("Button_Replay") as § 3§).setEnabled(param1);
         (§?!?§.getItemByName("Button_Menu") as § 3§).setEnabled(param1);
         (§?!?§.getItemByName("Button_Help") as § 3§).setEnabled(param1);
         (§?!?§.getItemByName("Button_Sound") as § 3§).setEnabled(param1);
         §?!?§.getItemByName("Button_Help").setEnabled(§>c§.§,! §());
      }
      
      private function §9!0§() : void
      {
         if(this.override != null)
         {
            this.override.stop();
         }
         this.override = §!<§.§%b§.§'T§(§!<§.§%b§.§9!!§(§?!?§.getItemByName("Container_PauseMenu") as §,!@§,{"x":§!a§},null,0.25),§!<§.§%b§.§9!!§((§?!?§.getItemByName("MovieClip_DarkBG") as §,d§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.override.onComplete = this.§4!W§;
         this.override.play();
      }
      
      private function §4!W§() : void
      {
         mNextState = StatePlay.§+!a§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&!7§.§ h§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#![§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§3l§ = null;
         var _loc7_:§6!G§ = null;
         switch(param2)
         {
            case "HELP":
               this.§9!0§();
               for each(_loc7_ in §,^§.§0K§.slingshot.§0#§)
               {
                  §7d§.§4'§.§[n§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§,^§.§0K§ as §+!=§).§]!I§())
               {
                  if(!§1!b§.sCheetosPopups.showPopup(§&!R§.RESTART_LEVEL))
                  {
                     this.§^!,§();
                  }
               }
               else
               {
                  this.§^!,§();
               }
               break;
            case "RESUME_LEVEL":
               this.§9!0§();
               §,^§.§5H§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§,^§.§0K§ as §+!=§).§]!I§())
               {
                  if(!§1!b§.sCheetosPopups.showPopup(§&!R§.§6'§))
                  {
                     this.§#!9§();
                  }
               }
               else
               {
                  this.§#!9§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§7d§.§ 7§();
               §7d§.§`!G§(_loc4_);
               §?!?§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§,^§.§2w§();
               §,^§.§ !F§(_loc5_);
               §?!?§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§6'§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.RESTART_LEVEL)
               {
                  this.§^!,§();
                  break;
               }
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§6'§)
               {
                  this.§#!9§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §3l§;
               §7d§.§`!<§.§`-§ = !§7d§.§`!<§.§`-§;
               if(§7d§.§`!<§.§`-§)
               {
                  _loc6_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§3l§.§0!c§);
               break;
         }
      }
      
      private function §^!,§() : void
      {
         §,!]§.§10§();
         mNextState = §,!]§.§+!a§;
      }
      
      private function §#!9§() : void
      {
         try
         {
            §+e§.§5?§("levelComplete",§-W§.§,[§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §^w§.§+!a§;
      }
      
      private function §3!D§() : void
      {
         var _loc1_:§ 3§ = §?!?§.getItemByName("Button_Replay") as § 3§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§,^§.§0K§ as §+!=§).§]!I§())
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
