package §<!U§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §!J§.§[&§;
   import §![§.§4!6§;
   import §#K§.§<!+§;
   import §'G§.§#!F§;
   import §'G§.§%!%§;
   import §'G§.§1!D§;
   import §'G§.§false§;
   import §-M§.§+?§;
   import §-M§.§3!6§;
   import §-V§.§9d§;
   import §-V§.§@R§;
   import §4!H§.§[4§;
   import §7W§.§ !+§;
   import §?!1§.§+a§;
   import §?!1§.§,t§;
   import §?'§.§[!N§;
   import §?w§.§!&§;
   import flash.display.MovieClip;
   
   public class § !#§ extends §]u§
   {
      
      private static const §<;§:Number = -250;
      
      public static const §`O§:String = "PauseState";
       
      
      private var §+9§:§3!$§ = null;
      
      public function § !#§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §3!6§(this);
         §"c§.init(§+?§.§@]§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.start();
         }
         this.§+X§();
         this.§;z§();
         §"c§.getItemByName("Button_Help").setEnabled(§,t§.§ C§());
         §"c§.getItemByName("Button_Help").setVisibility(§,t§.§ C§());
      }
      
      private function §+X§() : void
      {
         var _loc1_:String = §<!+§.§^R§;
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
         (§"c§.getItemByName("TextField_LevelName") as §1!D§).§1!-§.text = _loc1_;
         (§"c§.getItemByName("Container_PauseMenu") as §%!%§).x = §<;§;
         this.§ 8§(false);
         § !+§.§?!L§.§5!T§ = true;
         §"c§.getItemByName("MovieClip_SoundsOff").setVisibility(!§,l§.§3n§());
         if(this.§+9§ != null)
         {
            this.§+9§.stop();
         }
         this.§+9§ = §4N§.§-!U§.§]!§(§4N§.§-!U§.§5!N§(§"c§.getItemByName("Container_PauseMenu") as §%!%§,{"x":0},null,0.25),§4N§.§-!U§.§5!N§((§"c§.getItemByName("MovieClip_DarkBG") as §#!F§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§+9§.onComplete = this.§[A§;
         this.§+9§.play();
      }
      
      private function §[A§() : void
      {
         this.§ 8§(true);
      }
      
      private function § 8§(param1:Boolean) : void
      {
         (§"c§.getItemByName("Button_Resume") as §false§).setEnabled(param1);
         (§"c§.getItemByName("Button_Replay") as §false§).setEnabled(param1);
         (§"c§.getItemByName("Button_Menu") as §false§).setEnabled(param1);
         (§"c§.getItemByName("Button_Help") as §false§).setEnabled(param1);
         (§"c§.getItemByName("Button_Sound") as §false§).setEnabled(param1);
         §"c§.getItemByName("Button_Help").setEnabled(§,t§.§ C§());
      }
      
      private function §4l§() : void
      {
         if(this.§+9§ != null)
         {
            this.§+9§.stop();
         }
         this.§+9§ = §4N§.§-!U§.§]!§(§4N§.§-!U§.§5!N§(§"c§.getItemByName("Container_PauseMenu") as §%!%§,{"x":§<;§},null,0.25),§4N§.§-!U§.§5!N§((§"c§.getItemByName("MovieClip_DarkBG") as §#!F§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§+9§.onComplete = this.§4_§;
         this.§+9§.play();
      }
      
      private function §4_§() : void
      {
         mNextState = StatePlay.§`O§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         § !+§.§?!L§.§5!T§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@R§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§9d§ = null;
         var _loc7_:§[!N§ = null;
         switch(param2)
         {
            case "HELP":
               this.§4l§();
               for each(_loc7_ in §[&§.§&!'§.slingshot.§ !J§)
               {
                  §,l§.§3!,§.§-!?§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§+a§.RESTART_LEVEL))
                  {
                     this.§;!F§();
                  }
               }
               else
               {
                  this.§;!F§();
               }
               break;
            case "RESUME_LEVEL":
               this.§4l§();
               §[&§.§>!E§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§+a§.§2!,§))
                  {
                     this.§5!!§();
                  }
               }
               else
               {
                  this.§5!!§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§,l§.§3n§();
               §,l§.§6!2§(_loc4_);
               §"c§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§[&§.§'a§();
               §[&§.§@!-§(_loc5_);
               §"c§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§2!,§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.RESTART_LEVEL)
               {
                  this.§;!F§();
                  break;
               }
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§2!,§)
               {
                  this.§5!!§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §9d§;
               §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc6_.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§9d§.§%C§);
               break;
         }
      }
      
      private function §;!F§() : void
      {
         §0"§.§!7§();
         mNextState = §0"§.§`O§;
      }
      
      private function §5!!§() : void
      {
         try
         {
            §4!6§.§]l§("levelComplete",§<!+§.§^R§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §6l§.§`O§;
      }
      
      private function §;z§() : void
      {
         var _loc1_:§false§ = §"c§.getItemByName("Button_Replay") as §false§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§[&§.§&!'§ as §!&§).§`!P§())
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
