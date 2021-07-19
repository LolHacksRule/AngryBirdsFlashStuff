package §?",§
{
   import §"G§.§,"0§;
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'U§.§]#[§;
   import §3!Q§.§<K§;
   import §3!T§.§3">§;
   import §6"r§.§0"<§;
   import §6"r§.§=O§;
   import §?§.§>"$§;
   import flash.display.MovieClip;
   
   public class §>"V§ extends §,"0§
   {
      
      public static const §2$8§:Number = -250;
       
      
      protected var §1x§:§+,§ = null;
      
      protected var §9t§:§0"<§;
      
      protected var §+"Q§:MovieClip;
      
      protected var §8n§:§=O§;
      
      protected var §""'§:§=O§;
      
      protected var §%"5§:§=O§;
      
      public function §>"V§(param1:§0"<§, param2:§#!?§, param3:§,"n§, param4:§]#[§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §@#_§.setVisibility(false);
         this.§9t§ = §0"<§(§@#_§.getItemByName("Container_PauseMenu"));
         this.§9t§.x = §2$8§;
         this.§+"Q§ = §@#_§.getItemByName("MovieClip_Bg").mClip;
         this.§8n§ = §=O§(this.§9t§.getItemByName("Button_Resume"));
         this.§""'§ = §=O§(this.§9t§.getItemByName("Button_Menu"));
         this.§%"5§ = §=O§(this.§9t§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§-#Q§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§'!G§(param1);
         §>"$§.§3#'§.background.stopAmbientSound();
      }
      
      private function §<!Q§() : void
      {
         if(this.§1x§)
         {
            this.§1x§.stop();
            this.§1x§ = null;
         }
      }
      
      protected function §'!G§(param1:Boolean) : void
      {
         §@#_§.setVisibility(true);
         this.§<!Q§();
         §>"$§.pause();
         this.§#"'§(false);
         if(param1)
         {
            this.§1x§ = §""Z§.§3!]§.§[$2§(§""Z§.§3!]§.§5"0§(this.§9t§,{"x":0},null,0.25),§""Z§.§3!]§.§5"0§(this.§+"Q§,{"alpha":1},null,0.25));
            this.§1x§.onComplete = this.§#!T§;
            this.§1x§.play();
         }
         else
         {
            this.§9t§.x = 0;
            this.§+"Q§.alpha = 1;
            this.§#!T§();
         }
      }
      
      protected function §#!T§() : void
      {
         this.§<!Q§();
         §@#_§.addEventListener(§3">§.§6!3§,this.onUIInteraction);
         this.§#"'§(true);
      }
      
      protected function §#"'§(param1:Boolean) : void
      {
         this.§8n§.setEnabled(param1);
         this.§%"5§.setEnabled(param1);
         this.§""'§.setEnabled(param1);
      }
      
      protected function §4,§(param1:String) : void
      {
         this.§8n§.setComponentVisualState(param1);
         this.§%"5§.setComponentVisualState(param1);
         this.§""'§.setComponentVisualState(param1);
      }
      
      protected function §-#Q§(param1:Boolean) : void
      {
         §@#_§.removeEventListener(§3">§.§6!3§,this.onUIInteraction);
         this.§<!Q§();
         if(param1)
         {
            this.§1x§ = §""Z§.§3!]§.§[$2§(§""Z§.§3!]§.§5"0§(this.§9t§,{"x":§2$8§},null,0.25),§""Z§.§3!]§.§5"0§(this.§+"Q§,{"alpha":0},null,0.25));
            this.§1x§.onComplete = this.§>"I§;
            this.§1x§.play();
         }
         else
         {
            this.§9t§.x = §2$8§;
            this.§+"Q§.alpha = 0;
            this.§>"I§();
         }
      }
      
      protected function §>"I§() : void
      {
         §@#_§.setVisibility(false);
         this.§<!Q§();
         dispatchEvent(new §<K§(§<K§.§!#]§));
         §>"$§.resume();
      }
      
      protected function onUIInteraction(param1:§3">§) : void
      {
         if(§21§)
         {
            return;
         }
         switch(param1.eventName)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §<K§(§<K§.§4?§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §<K§(§<K§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §<K§(§<K§.§4?§,§5A§()));
         }
      }
   }
}
