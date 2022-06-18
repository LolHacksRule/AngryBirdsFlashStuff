package §,!?§
{
   import §!!V§.§%§;
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §-!O§.§7'§;
   import §3X§.§#!B§;
   import §4x§.§"!X§;
   import §4x§.§?R§;
   import §9!Z§.§2!,§;
   import §9!Z§.§<!W§;
   import §>8§.§?2§;
   import §?u§.§+V§;
   import §]!&§.§"!1§;
   import §]!&§.§#?§;
   import §]!&§.§0!Q§;
   import §]!&§.§]!K§;
   import §]!5§.§-!3§;
   import §]!5§.§=j§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   import flash.display.MovieClip;
   
   public class §#§ extends §-! §
   {
      
      private static const §6@§:Number = -250;
      
      public static const §@B§:String = "PauseState";
       
      
      private var §break§:§?R§ = null;
      
      public function §#§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.start();
         }
         this.§&^§();
         this.§!!Z§();
         §??§.getItemByName("Button_Help").setEnabled(§2!,§.§1!B§());
         §??§.getItemByName("Button_Help").setVisibility(§2!,§.§1!B§());
      }
      
      private function §&^§() : void
      {
         var _loc1_:String = §?2§.§=$§;
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
         (§??§.getItemByName("TextField_LevelName") as §"!1§).§>!-§.text = _loc1_;
         (§??§.getItemByName("Container_PauseMenu") as §]!K§).x = §6@§;
         this.§;-§(false);
         §<h§.§4!J§.isPaused = true;
         §??§.getItemByName("MovieClip_SoundsOff").setVisibility(!§2!-§.§4s§());
         if(this.§break§ != null)
         {
            this.§break§.stop();
         }
         this.§break§ = §"!X§.§0E§.§;g§(§"!X§.§0E§.§5`§(§??§.getItemByName("Container_PauseMenu") as §]!K§,{"x":0},null,0.25),§"!X§.§0E§.§5`§((§??§.getItemByName("MovieClip_DarkBG") as §0!Q§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§break§.onComplete = this.§3<§;
         this.§break§.play();
      }
      
      private function §3<§() : void
      {
         this.§;-§(true);
      }
      
      private function §;-§(param1:Boolean) : void
      {
         (§??§.getItemByName("Button_Resume") as §#?§).setEnabled(param1);
         (§??§.getItemByName("Button_Replay") as §#?§).setEnabled(param1);
         (§??§.getItemByName("Button_Menu") as §#?§).setEnabled(param1);
         (§??§.getItemByName("Button_Help") as §#?§).setEnabled(param1);
         (§??§.getItemByName("Button_Sound") as §#?§).setEnabled(param1);
         §??§.getItemByName("Button_Help").setEnabled(§2!,§.§1!B§());
      }
      
      private function §"m§() : void
      {
         if(this.§break§ != null)
         {
            this.§break§.stop();
         }
         this.§break§ = §"!X§.§0E§.§;g§(§"!X§.§0E§.§5`§(§??§.getItemByName("Container_PauseMenu") as §]!K§,{"x":§6@§},null,0.25),§"!X§.§0E§.§5`§((§??§.getItemByName("MovieClip_DarkBG") as §0!Q§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§break§.onComplete = this.§0?§;
         this.§break§.play();
      }
      
      private function §0?§() : void
      {
         mNextState = StatePlay.§@B§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §<h§.§4!J§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§=j§ = null;
         var _loc7_:§%§ = null;
         switch(param2)
         {
            case "HELP":
               this.§"m§();
               for each(_loc7_ in §"_§.§+!^§.slingshot.§3r§)
               {
                  §2!-§.§5R§.§=!W§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§"_§.§+!^§ as §#!B§).§=!N§())
               {
                  if(!§-! §.sCheetosPopups.showPopup(§<!W§.RESTART_LEVEL))
                  {
                     this.§3!X§();
                  }
               }
               else
               {
                  this.§3!X§();
               }
               break;
            case "RESUME_LEVEL":
               this.§"m§();
               §"_§.§@A§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§"_§.§+!^§ as §#!B§).§=!N§())
               {
                  if(!§-! §.sCheetosPopups.showPopup(§<!W§.§'9§))
                  {
                     this.§%r§();
                  }
               }
               else
               {
                  this.§%r§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§2!-§.§4s§();
               §2!-§.§3U§(_loc4_);
               §??§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§"_§.§!<§();
               §"_§.§,T§(_loc5_);
               §??§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§'9§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.RESTART_LEVEL)
               {
                  this.§3!X§();
                  break;
               }
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§'9§)
               {
                  this.§%r§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §=j§;
               §2!-§.§"7§.§^I§ = !§2!-§.§"7§.§^I§;
               if(§2!-§.§"7§.§^I§)
               {
                  _loc6_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§=j§.§@!9§);
               break;
         }
      }
      
      private function §3!X§() : void
      {
         §0T§.§6k§();
         mNextState = §0T§.§@B§;
      }
      
      private function §%r§() : void
      {
         try
         {
            §+V§.§3!'§("levelComplete",§?2§.§=$§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §&c§.§@B§;
      }
      
      private function §!!Z§() : void
      {
         var _loc1_:§#?§ = §??§.getItemByName("Button_Replay") as §#?§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§"_§.§+!^§ as §#!B§).§=!N§())
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
