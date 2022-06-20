package §6!!§
{
   import §!x§.§4"I§;
   import §"G§.§%n§;
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §'z§.§7!J§;
   import §3!Q§.§<K§;
   import §3!T§.§3">§;
   import §52§.§@M§;
   import §6"r§.§0"<§;
   import §6"r§.§=O§;
   import §>!#§.§>p§;
   import §?§.§>"$§;
   import flash.display.MovieClip;
   
   public class §;!-§ extends §%n§
   {
      
      public static const §<!S§:int = 50;
      
      protected static const §=N§:String = "MightyEagleButtonVisible";
      
      protected static const §9#+§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §1$5§:String = "MightyEagleButtonHide";
       
      
      protected var §1#p§:§7!J§;
      
      protected var §<#i§:§>p§;
      
      protected var §>!>§:§+,§;
      
      protected var §=T§:String;
      
      protected var §5!O§:§=O§;
      
      protected var §3"G§:§=O§;
      
      protected var §1#e§:§=O§;
      
      protected var §+h§:§=O§;
      
      protected var §'!F§:MovieClip;
      
      protected var §>j§:Boolean = false;
      
      public function §;!-§(param1:§0"<§, param2:§#!?§, param3:§7!J§, param4:§,"n§, param5:§]#[§)
      {
         this.§<#i§ = new §>p§();
         super(param1,param2,param4,param5);
         this.§1#p§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§>j§;
      }
      
      override protected function init() : void
      {
         §@#_§.setVisibility(false);
         this.§5!O§ = §=O§(§@#_§.getItemByName("Button_MightyEagle"));
         this.§3"G§ = §=O§(§@#_§.getItemByName("Button_Pause"));
         this.§1#e§ = §=O§(§@#_§.getItemByName("Button_Restart"));
         this.§+h§ = §=O§(§@#_§.getItemByName("Button_FullScreen"));
         this.§'!F§ = §@#_§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §@#_§.setVisibility(true);
         §@#_§.addEventListener(§3">§.§6!3§,this.onUIInteraction);
         this.§<#i§.§,$-§(0);
         this.§0!8§(0);
         this.§3$3§();
         this.§=T§ = §=N§;
         this.§>!>§ = null;
         this.§>j§ = false;
         if(this.§5!O§)
         {
            this.§5!O§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §@#_§.setVisibility(false);
         §@#_§.removeEventListener(§3">§.§6!3§,this.onUIInteraction);
         this.§3"G§.setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§1#e§.setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§>!>§ != null)
         {
            this.§>!>§.stop();
            this.§>!>§ = null;
         }
      }
      
      protected function §,"f§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.§^"8§ && AngryBirdsBase.singleton.dataModel.userProgress.§,!?§(mLevelManager.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§0!8§(param1);
         if(this.§=T§ == §=N§ && !§>"$§.§3#'§.objects.isLevelGoalObjectsAlive())
         {
            this.§&Z§();
         }
         if((this.§=T§ == §=N§ || this.§=T§ == §9#+§) && §>"$§.§3#'§.slingshot.mSlingShotState == §@M§.§!!R§)
         {
            this.hideMightyEagleButton();
         }
      }
      
      protected function §3$3§() : void
      {
         this.§'!F§.scaleY = 1;
         this.§'!F§.scaleX = 1;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         this.§5!O§.setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§5!O§.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §&Z§() : void
      {
         this.§=T§ = §9#+§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         this.§5!O§.setComponentState(§4P§.COMPONENT_STATE_DISABLED);
         this.§5!O§.setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§>!>§ == null)
         {
            this.§>!>§ = §""Z§.§3!]§.§5"0§(this.§'!F§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§=T§ = §1$5§;
         this.§>!>§.onComplete = this.§8! §;
         this.§>!>§.play();
      }
      
      protected function §8! §() : void
      {
         this.§>!>§ = §""Z§.§3!]§.§5"0§(this.§'!F§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§>!>§.play();
         this.§=T§ = §1$5§;
      }
      
      protected function §0!8§(param1:Number) : void
      {
         var _loc2_:int = this.§1#p§.getScore();
         int(§'7§.userProgress.getScoreForLevel(mLevelManager.currentLevel));
         var _loc4_:int;
         if((_loc4_ = this.§<#i§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§<#i§.getValue() + param1 * §<!S§);
            this.§<#i§.§,$-§(_loc4_);
         }
      }
      
      protected function §]"m§() : void
      {
         int(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel));
      }
      
      protected function useMightyEagle() : void
      {
         §>"$§.§3#'§.useMightyEagle();
         this.§]"m§();
         this.§>j§ = true;
      }
      
      protected function onUIInteraction(param1:§3">§) : void
      {
         if(§21§)
         {
            return;
         }
         if(param1.§##M§ is §=O§)
         {
            if(param1.§##I§ == §0!?§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §4"I§.§###§();
            }
            else if(param1.§##I§ == §0!?§.LISTENER_EVENT_MOUSE_UP)
            {
               §4"I§.§@#u§();
            }
         }
         switch(param1.eventName)
         {
            case "PAUSE":
               dispatchEvent(new §<K§(§<K§.§;#u§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §<K§(§<K§.§4?§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(AngryBirdsBase.singleton.dataModel.userProgress.§,!?§(mLevelManager.currentLevel))
               {
                  if(AngryBirdsBase.singleton.dataModel.userProgress.§^"8§)
                  {
                     this.useMightyEagle();
                     break;
                  }
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§&f§();
         }
      }
   }
}
