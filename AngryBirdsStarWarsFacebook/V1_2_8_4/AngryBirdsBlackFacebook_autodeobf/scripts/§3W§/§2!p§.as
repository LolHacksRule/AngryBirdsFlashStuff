package §3W§
{
   import §&!j§.§5#+§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §18§.§-!>§;
   import §1v§.§]"2§;
   import §9"U§.§'!;§;
   import §=!4§.§8"U§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import §null §.§5#§;
   
   public class §2!p§ extends §]"2§
   {
      
      public static const §2k§:Number = -250;
       
      
      protected var §`&§:§%b§ = null;
      
      protected var §"2§:§@!8§;
      
      protected var §&![§:MovieClip;
      
      protected var §1!K§:§;g§;
      
      protected var §%N§:§;g§;
      
      protected var §"f§:§;g§;
      
      public function §2!p§(param1:§@!8§, param2:§5#§, param3:§'!;§, param4:§5#+§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §3!m§.setVisibility(false);
         this.§"2§ = §@!8§(§3!m§.getItemByName("Container_PauseMenu"));
         this.§"2§.x = §2k§;
         this.§&![§ = §3!m§.getItemByName("MovieClip_Bg").mClip;
         this.§1!K§ = §;g§(this.§"2§.getItemByName("Button_Resume"));
         this.§%N§ = §;g§(this.§"2§.getItemByName("Button_Menu"));
         this.§"f§ = §;g§(this.§"2§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§'""§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
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
         §3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§3!Y§();
         if(param1)
         {
            this.§`&§ = §5!%§.§!6§.§!![§(§5!%§.§!6§.§4!M§(this.§"2§,{"x":§2k§},null,0.25),§5!%§.§!6§.§4!M§(this.§&![§,{"alpha":0},null,0.25));
            this.§`&§.onComplete = this.§''§;
            this.§`&§.play();
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
               dispatchEvent(new §-!>§(§-!>§.§5!w§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §-!>§(§-!>§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §-!>§(§-!>§.§5!w§,getLevelSelectionStateName()));
         }
      }
   }
}
