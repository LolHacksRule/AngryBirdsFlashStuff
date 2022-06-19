package §<!U§
{
   import § !+§.§0Z§;
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§,F§;
   import §+a§.§8!I§;
   import §4!6§.§,Y§;
   import §8!8§.§&Q§;
   import §8!8§.§+!M§;
   import §8!8§.§1!-§;
   import §8!8§.§4!C§;
   import §9N§.§8'§;
   import §<!+§.§[!!§;
   import §?w§.§!&§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
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
         §"c§ = new §,!N§(this);
         §"c§.init(§@]§.§3!6§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.start();
         }
         this.§+X§();
         this.§;z§();
         §"c§.getItemByName("Button_Help").setEnabled(§,F§.§4V§());
         §"c§.getItemByName("Button_Help").setVisibility(§,F§.§4V§());
      }
      
      private function §+X§() : void
      {
         var _loc1_:String = §[!!§.§7!F§;
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
         (§"c§.getItemByName("TextField_LevelName") as §1!-§).§#!F§.text = _loc1_;
         (§"c§.getItemByName("Container_PauseMenu") as §4!C§).x = §<;§;
         this.§ 8§(false);
         §0Z§.§-m§.§5!T§ = true;
         §"c§.getItemByName("MovieClip_SoundsOff").setVisibility(!§,l§.§3n§());
         if(this.§+9§ != null)
         {
            this.§+9§.stop();
         }
         this.§+9§ = §4N§.§!!L§.§]!§(§4N§.§!!L§.§5!N§(§"c§.getItemByName("Container_PauseMenu") as §4!C§,{"x":0},null,0.25),§4N§.§!!L§.§5!N§((§"c§.getItemByName("MovieClip_DarkBG") as §&Q§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§+9§.onComplete = this.§[A§;
         this.§+9§.play();
      }
      
      private function §[A§() : void
      {
         this.§ 8§(true);
      }
      
      private function § 8§(param1:Boolean) : void
      {
         (§"c§.getItemByName("Button_Resume") as §+!M§).setEnabled(param1);
         (§"c§.getItemByName("Button_Replay") as §+!M§).setEnabled(param1);
         (§"c§.getItemByName("Button_Menu") as §+!M§).setEnabled(param1);
         (§"c§.getItemByName("Button_Help") as §+!M§).setEnabled(param1);
         (§"c§.getItemByName("Button_Sound") as §+!M§).setEnabled(param1);
         §"c§.getItemByName("Button_Help").setEnabled(§,F§.§4V§());
      }
      
      private function §4l§() : void
      {
         if(this.§+9§ != null)
         {
            this.§+9§.stop();
         }
         this.§+9§ = §4N§.§!!L§.§]!§(§4N§.§!!L§.§5!N§(§"c§.getItemByName("Container_PauseMenu") as §4!C§,{"x":§<;§},null,0.25),§4N§.§!!L§.§5!N§((§"c§.getItemByName("MovieClip_DarkBG") as §&Q§).mClip,{"alpha":0},{"alpha":1},0.25));
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
         §0Z§.§-m§.§5!T§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§<d§ = null;
         var _loc7_:§8'§ = null;
         switch(param2)
         {
            case "HELP":
               this.§4l§();
               for each(_loc7_ in §[&§.§&!'§.slingshot.§`4§)
               {
                  §,l§.§3!,§.§-!?§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§8!I§.RESTART_LEVEL))
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
                  if(!§]u§.sCheetosPopups.showPopup(§8!I§.§-k§))
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
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§-k§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
               {
                  this.§;!F§();
                  break;
               }
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§-k§)
               {
                  this.§5!!§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §<d§;
               §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc6_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§<d§.§^#§);
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
            §,Y§.§[[§("levelComplete",§[!!§.§7!F§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §6l§.§`O§;
      }
      
      private function §;z§() : void
      {
         var _loc1_:§+!M§ = §"c§.getItemByName("Button_Replay") as §+!M§;
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
