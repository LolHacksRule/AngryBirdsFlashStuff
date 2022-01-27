package §3W§
{
   import §%§.§6"c§;
   import §&!j§.§5#+§;
   import §+d§.§2"I§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §18§.§-!>§;
   import §1v§.§]"2§;
   import §9"U§.§'!;§;
   import §=!4§.§8"U§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import §null §.§5#§;
   
   public class §-n§ extends §]"2§
   {
      
      public static const §'!X§:int = 195;
      
      public static const §`#5§:int = 49;
      
      public static const §2k§:Number = -250;
       
      
      protected var §`&§:§%b§ = null;
      
      protected var §"2§:§@!8§;
      
      protected var §&![§:MovieClip;
      
      protected var §1!K§:§;g§;
      
      protected var §%N§:§;g§;
      
      protected var §"f§:§;g§;
      
      protected var §^"=§:MovieClip;
      
      protected var §="%§:TextField;
      
      private var §!"1§:§6"c§;
      
      public function §-n§(param1:§@!8§, param2:§5#§, param3:§'!;§, param4:§5#+§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §3!m§.setVisibility(false);
         this.§"2§ = §@!8§(§3!m§.getItemByName("Container_PauseMenu"));
         this.§"2§.x = §2k§;
         this.§&![§ = §3!m§.getItemByName("MovieClip_Bg").mClip;
         this.§^"=§ = this.§"2§.mClip.replayLocked;
         this.§^"=§.visible = false;
         this.§1!K§ = §;g§(this.§"2§.getItemByName("Button_Resume"));
         this.§%N§ = §;g§(this.§"2§.getItemByName("Button_Menu"));
         this.§"f§ = §;g§(this.§"2§.getItemByName("Button_Replay"));
         this.§="%§ = TextField(this.§"2§.mClip.title.txtLabel);
         this.§!"1§ = new §6"c§(§@!8§(§3!m§.getItemByName("RovioNewsContainer")));
         this.§!"1§.§&!^§();
      }
      
      override protected function refresh() : void
      {
         var _loc1_:String = null;
         if(§'""§.currentLevelWrittenName)
         {
            _loc1_ = §'""§.currentLevelWrittenName;
            this.§="%§.text = _loc1_;
            §2"I§.§;"%§(TextField(this.§="%§),§`#5§,§'!X§);
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
         this.§!"1§.dispose();
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§,c§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§!"1§.reset();
         this.§##!§(param1);
         §<!J§.§=!%§.background.stopAmbientSound();
      }
      
      private function §3!Y§() : void
      {
         if(this.§`&§)
         {
            this.§`&§.stop();
            this.§`&§ = null;
         }
      }
      
      protected function §##!§(param1:Boolean) : void
      {
         §3!m§.setVisibility(true);
         this.§3!Y§();
         §<!J§.pause();
         this.§4D§(false);
         if(param1)
         {
            this.§`&§ = §5!%§.§!6§.§!![§(§5!%§.§!6§.§4!M§(this.§"2§,{"x":0},null,0.25),§5!%§.§!6§.§4!M§(this.§&![§,{"alpha":1},null,0.25));
            this.§`&§.onComplete = this.§`!s§;
            this.§`&§.play();
            §=Q§.§`!A§("pause_screen_door_in");
         }
         else
         {
            this.§"2§.x = 0;
            this.§&![§.alpha = 1;
            this.§`!s§();
         }
      }
      
      protected function §`!s§() : void
      {
         this.§3!Y§();
         §3!m§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§4D§(true);
         this.§!"1§.visible = true;
      }
      
      protected function §4D§(param1:Boolean) : void
      {
         this.§1!K§.setEnabled(param1);
         this.§"f§.setEnabled(param1);
         this.§%N§.setEnabled(param1);
      }
      
      protected function §5!9§(param1:String) : void
      {
         this.§1!K§.setComponentVisualState(param1);
         this.§"f§.setComponentVisualState(param1);
         this.§%N§.setComponentVisualState(param1);
      }
      
      protected function §,c§(param1:Boolean) : void
      {
         this.§!"1§.visible = false;
         §3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§3!Y§();
         if(param1)
         {
            this.§`&§ = §5!%§.§!6§.§!![§(§5!%§.§!6§.§4!M§(this.§"2§,{"x":§2k§},null,0.25),§5!%§.§!6§.§4!M§(this.§&![§,{"alpha":0},null,0.25));
            this.§`&§.onComplete = this.§''§;
            this.§`&§.play();
            §=Q§.§`!A§("pause_screen_door_out");
         }
         else
         {
            this.§"2§.x = §2k§;
            this.§&![§.alpha = 0;
            this.§''§();
         }
      }
      
      protected function §''§() : void
      {
         §3!m§.setVisibility(false);
         this.§3!Y§();
         dispatchEvent(new §-!>§(§-!>§.§ "D§));
         §<!J§.resume();
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         if(§2@§)
         {
            return;
         }
         switch(param1.§5!u§)
         {
            case "RESTART_LEVEL":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               dispatchEvent(new §-!>§(§-!>§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               dispatchEvent(new §-!>§(§-!>§.RESUME_LEVEL));
               break;
            case "MENU":
               §4"#§.singleton.§%#&§().skipTransition = true;
               §=Q§.§`!A§("misc_menubuttonback_1");
               dispatchEvent(new §-!>§(§-!>§.§5!w§,getLevelSelectionStateName()));
         }
      }
   }
}
