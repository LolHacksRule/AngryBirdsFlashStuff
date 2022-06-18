package §&!`§
{
   import § =§.§ x§;
   import §%b§.§&b§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §+k§.§+!&§;
   import §+k§.§=! §;
   import §0C§.§"!T§;
   import §2V§.§!!_§;
   import §2V§.§&!Q§;
   import §7f§.§@+§;
   import §<s§.§&4§;
   import §<s§.§]@§;
   import §?!N§.§?!"§;
   import §[%§.§&a§;
   import §[%§.§6!§;
   import §[%§.§<@§;
   import §[%§.§=!M§;
   import §]_§.§!F§;
   import flash.display.MovieClip;
   
   public class §>!B§ extends §&A§
   {
      
      private static const §27§:Number = -250;
      
      public static const §="§:String = "PauseState";
       
      
      private var §4f§:§=! § = null;
      
      public function §>!B§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§!F§.§[M§)
         {
            §!F§.§[M§.start();
         }
         this.§]2§();
         this.§=f§();
         §^!]§.getItemByName("Button_Help").setEnabled(§&!Q§.§0!V§());
         §^!]§.getItemByName("Button_Help").setVisibility(§&!Q§.§0!V§());
      }
      
      private function §]2§() : void
      {
         var _loc1_:String = §"!T§.§-Q§;
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
         (§^!]§.getItemByName("TextField_LevelName") as §<@§).§1!+§.text = _loc1_;
         (§^!]§.getItemByName("Container_PauseMenu") as §&a§).x = §27§;
         this.§@[§(false);
         §!F§.§5!H§.isPaused = true;
         §^!]§.getItemByName("MovieClip_SoundsOff").setVisibility(!§3§.§%!=§());
         if(this.§4f§ != null)
         {
            this.§4f§.stop();
         }
         this.§4f§ = §+!&§.§,§.§<!6§(§+!&§.§,§.§9x§(§^!]§.getItemByName("Container_PauseMenu") as §&a§,{"x":0},null,0.25),§+!&§.§,§.§9x§((§^!]§.getItemByName("MovieClip_DarkBG") as §=!M§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§4f§.onComplete = this.§<e§;
         this.§4f§.play();
      }
      
      private function §<e§() : void
      {
         this.§@[§(true);
      }
      
      private function §@[§(param1:Boolean) : void
      {
         (§^!]§.getItemByName("Button_Resume") as §6!§).setEnabled(param1);
         (§^!]§.getItemByName("Button_Replay") as §6!§).setEnabled(param1);
         (§^!]§.getItemByName("Button_Menu") as §6!§).setEnabled(param1);
         (§^!]§.getItemByName("Button_Help") as §6!§).setEnabled(param1);
         (§^!]§.getItemByName("Button_Sound") as §6!§).setEnabled(param1);
         §^!]§.getItemByName("Button_Help").setEnabled(§&!Q§.§0!V§());
      }
      
      private function §1!X§() : void
      {
         if(this.§4f§ != null)
         {
            this.§4f§.stop();
         }
         this.§4f§ = §+!&§.§,§.§<!6§(§+!&§.§,§.§9x§(§^!]§.getItemByName("Container_PauseMenu") as §&a§,{"x":§27§},null,0.25),§+!&§.§,§.§9x§((§^!]§.getItemByName("MovieClip_DarkBG") as §=!M§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§4f§.onComplete = this.§7!M§;
         this.§4f§.play();
      }
      
      private function §7!M§() : void
      {
         mNextState = StatePlay.§="§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         return § x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §!F§.§5!H§.isPaused = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§&4§ = null;
         var _loc7_:§&b§ = null;
         switch(param2)
         {
            case "HELP":
               this.§1!X§();
               for each(_loc7_ in §3>§.§8!$§.slingshot.§^!O§)
               {
                  §3§.§6!Z§.§>!2§(_loc7_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               if((§3>§.§8!$§ as §@+§).§[!7§())
               {
                  if(!§&A§.sCheetosPopups.showPopup(§!!_§.RESTART_LEVEL))
                  {
                     this.§02§();
                  }
               }
               else
               {
                  this.§02§();
               }
               break;
            case "RESUME_LEVEL":
               this.§1!X§();
               §3>§.§7k§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               if((§3>§.§8!$§ as §@+§).§[!7§())
               {
                  if(!§&A§.sCheetosPopups.showPopup(§!!_§.§4!E§))
                  {
                     this.§3!D§();
                  }
               }
               else
               {
                  this.§3!D§();
               }
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§3§.§%!=§();
               §3§.§>k§(_loc4_);
               §^!]§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§3>§.§?!G§();
               §3>§.§2!_§(_loc5_);
               §^!]§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               break;
            case "BUTTON_NO":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§4!E§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.RESTART_LEVEL)
               {
                  this.§02§();
                  break;
               }
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§4!E§)
               {
                  this.§3!D§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc6_ = param3 as §&4§;
               §3§.§]T§.§];§ = !§3§.§]T§.§];§;
               if(§3§.§]T§.§];§)
               {
                  _loc6_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc6_.setComponentState(§&4§.§=!'§);
               break;
         }
      }
      
      private function §02§() : void
      {
         §8!@§.§-_§();
         mNextState = §8!@§.§="§;
      }
      
      private function §3!D§() : void
      {
         try
         {
            §?!"§.§7`§("levelComplete",§"!T§.§-Q§,false);
         }
         catch(e:Error)
         {
         }
         mNextState = §4q§.§="§;
      }
      
      private function §=f§() : void
      {
         var _loc1_:§6!§ = §^!]§.getItemByName("Button_Replay") as §6!§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§3>§.§8!$§ as §@+§).§[!7§())
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
