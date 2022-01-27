package §%S§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §#!k§.§4!4§;
   import §&!q§.§9!;§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §1!X§.§0"A§;
   import §7A§.§4E§;
   import §<I§.§'#!§;
   import §`"8§.§4"K§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §=#"§ extends §0"A§
   {
      
      public static const §>!W§:int = 195;
      
      public static const §5!D§:int = 49;
      
      public static const §##"§:Number = -250;
       
      
      protected var §'>§:§4!Q§ = null;
      
      protected var §%"p§:§,m§;
      
      protected var §=!C§:MovieClip;
      
      protected var §7!$§:§2"8§;
      
      protected var §"V§:§2"8§;
      
      protected var §7"0§:§2"8§;
      
      protected var §5"^§:MovieClip;
      
      protected var §8C§:TextField;
      
      private var §]&§:§9!;§;
      
      public function §=#"§(param1:§,m§, param2:§7!m§, param3:§4"K§, param4:§="B§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §=5§.setVisibility(false);
         this.§%"p§ = §,m§(§=5§.getItemByName("Container_PauseMenu"));
         this.§%"p§.x = §##"§;
         this.§=!C§ = §=5§.getItemByName("MovieClip_Bg").mClip;
         this.§5"^§ = this.§%"p§.mClip.replayLocked;
         this.§5"^§.visible = false;
         this.§7!$§ = §2"8§(this.§%"p§.getItemByName("Button_Resume"));
         this.§"V§ = §2"8§(this.§%"p§.getItemByName("Button_Menu"));
         this.§7"0§ = §2"8§(this.§%"p§.getItemByName("Button_Replay"));
         this.§8C§ = TextField(this.§%"p§.mClip.title.txtLabel);
         this.§]&§ = new §9!;§(§,m§(§=5§.getItemByName("RovioNewsContainer")));
         this.§]&§.§?!t§();
      }
      
      override protected function refresh() : void
      {
         var _loc1_:String = null;
         if(§ !p§.currentLevelWrittenName)
         {
            _loc1_ = § !p§.currentLevelWrittenName;
            this.§8C§.text = _loc1_;
            §4E§.§0!l§(TextField(this.§8C§),§5!D§,§>!W§);
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
         this.§]&§.dispose();
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§,J§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§]&§.reset();
         this.§&!p§(param1);
         §;!e§.§<x§.background.stopAmbientSound();
      }
      
      private function §0o§() : void
      {
         if(this.§'>§)
         {
            this.§'>§.stop();
            this.§'>§ = null;
         }
      }
      
      protected function §&!p§(param1:Boolean) : void
      {
         §=5§.setVisibility(true);
         this.§0o§();
         §;!e§.pause();
         this.§9"!§(false);
         if(param1)
         {
            this.§'>§ = §41§.§-G§.§="t§(§41§.§-G§.§&#'§(this.§%"p§,{"x":0},null,0.25),§41§.§-G§.§&#'§(this.§=!C§,{"alpha":1},null,0.25));
            this.§'>§.onComplete = this.§%x§;
            this.§'>§.play();
            §@§.§=Y§("pause_screen_door_in");
         }
         else
         {
            this.§%"p§.x = 0;
            this.§=!C§.alpha = 1;
            this.§%x§();
         }
      }
      
      protected function §%x§() : void
      {
         this.§0o§();
         §=5§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§9"!§(true);
         this.§]&§.visible = true;
      }
      
      protected function §9"!§(param1:Boolean) : void
      {
         this.§7!$§.setEnabled(param1);
         this.§7"0§.setEnabled(param1);
         this.§"V§.setEnabled(param1);
      }
      
      protected function §-!Q§(param1:String) : void
      {
         this.§7!$§.setComponentVisualState(param1);
         this.§7"0§.setComponentVisualState(param1);
         this.§"V§.setComponentVisualState(param1);
      }
      
      protected function §,J§(param1:Boolean) : void
      {
         this.§]&§.visible = false;
         §=5§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§0o§();
         if(param1)
         {
            this.§'>§ = §41§.§-G§.§="t§(§41§.§-G§.§&#'§(this.§%"p§,{"x":§##"§},null,0.25),§41§.§-G§.§&#'§(this.§=!C§,{"alpha":0},null,0.25));
            this.§'>§.onComplete = this.§<"R§;
            this.§'>§.play();
            §@§.§=Y§("pause_screen_door_out");
         }
         else
         {
            this.§%"p§.x = §##"§;
            this.§=!C§.alpha = 0;
            this.§<"R§();
         }
      }
      
      protected function §<"R§() : void
      {
         §=5§.setVisibility(false);
         this.§0o§();
         dispatchEvent(new §'#!§(§'#!§.§<"T§));
         §;!e§.resume();
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         if(§1!?§)
         {
            return;
         }
         switch(param1.§84§)
         {
            case "RESTART_LEVEL":
               §@§.§=Y§("misc_menubuttonproceed_1");
               dispatchEvent(new §'#!§(§'#!§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               §@§.§=Y§("misc_menubuttonproceed_1");
               dispatchEvent(new §'#!§(§'#!§.RESUME_LEVEL));
               break;
            case "MENU":
               §;"@§.singleton.§[s§().skipTransition = true;
               §@§.§=Y§("misc_menubuttonback_1");
               dispatchEvent(new §'#!§(§'#!§.§8!F§,getLevelSelectionStateName()));
         }
      }
   }
}
