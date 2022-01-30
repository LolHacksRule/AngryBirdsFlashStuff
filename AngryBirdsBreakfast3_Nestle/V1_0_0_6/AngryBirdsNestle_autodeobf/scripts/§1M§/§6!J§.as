package §1M§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §8,§.§8!h§;
   import §9O§.§4!V§;
   import §?!v§.§&r§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import §`!<§.§?W§;
   import com.angrybirds.§6!E§;
   import flash.display.MovieClip;
   
   public class §6!J§ extends §?W§
   {
      
      public static const §<=§:Number = -250;
       
      
      protected var §'n§:§<!'§ = null;
      
      protected var §9"0§:§3j§;
      
      protected var §8z§:MovieClip;
      
      protected var §3H§:§^!g§;
      
      protected var §?!V§:§^!g§;
      
      protected var §'L§:§^!g§;
      
      public function §6!J§(param1:§3j§, param2:§ q§, param3:§&r§, param4:§>u§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §,8§.setVisibility(false);
         this.§9"0§ = §3j§(§,8§.getItemByName("Container_PauseMenu"));
         this.§9"0§.x = §<=§;
         this.§8z§ = §,8§.getItemByName("MovieClip_Bg").mClip;
         this.§3H§ = §^!g§(this.§9"0§.getItemByName("Button_Resume"));
         this.§?!V§ = §^!g§(this.§9"0§.getItemByName("Button_Menu"));
         this.§'L§ = §^!g§(this.§9"0§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§="4§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§=!t§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§;!p§(param1);
         §6!E§.§7I§.background.§9!O§();
      }
      
      private function §]5§() : void
      {
         if(this.§'n§)
         {
            this.§'n§.stop();
            this.§'n§ = null;
         }
      }
      
      protected function §;!p§(param1:Boolean) : void
      {
         §,8§.setVisibility(true);
         this.§]5§();
         §6!E§.pause();
         this.§"S§(false);
         if(param1)
         {
            this.§'n§ = §3`§.§<"5§.§,!k§(§3`§.§<"5§.§^g§(this.§9"0§,{"x":0},null,0.25),§3`§.§<"5§.§^g§(this.§8z§,{"alpha":1},null,0.25));
            this.§'n§.onComplete = this.§#z§;
            this.§'n§.play();
         }
         else
         {
            this.§9"0§.x = 0;
            this.§8z§.alpha = 1;
            this.§#z§();
         }
      }
      
      protected function §#z§() : void
      {
         this.§]5§();
         §,8§.addEventListener(§8!h§.§>2§,this.onUIInteraction);
         this.§"S§(true);
      }
      
      protected function §"S§(param1:Boolean) : void
      {
         this.§3H§.setEnabled(param1);
         this.§'L§.setEnabled(param1);
         this.§?!V§.setEnabled(param1);
      }
      
      protected function §-!H§(param1:String) : void
      {
         this.§3H§.setComponentVisualState(param1);
         this.§'L§.setComponentVisualState(param1);
         this.§?!V§.setComponentVisualState(param1);
      }
      
      protected function §=!t§(param1:Boolean) : void
      {
         §,8§.removeEventListener(§8!h§.§>2§,this.onUIInteraction);
         this.§]5§();
         if(param1)
         {
            this.§'n§ = §3`§.§<"5§.§,!k§(§3`§.§<"5§.§^g§(this.§9"0§,{"x":§<=§},null,0.25),§3`§.§<"5§.§^g§(this.§8z§,{"alpha":0},null,0.25));
            this.§'n§.onComplete = this.§[!J§;
            this.§'n§.play();
         }
         else
         {
            this.§9"0§.x = §<=§;
            this.§8z§.alpha = 0;
            this.§[!J§();
         }
      }
      
      protected function §[!J§() : void
      {
         §,8§.setVisibility(false);
         this.§]5§();
         dispatchEvent(new §4!V§(§4!V§.§!n§));
         §6!E§.resume();
      }
      
      protected function onUIInteraction(param1:§8!h§) : void
      {
         if(§@<§)
         {
            return;
         }
         switch(param1.§[!X§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §4!V§(§4!V§.§'!Z§,§="§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §4!V§(§4!V§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §4!V§(§4!V§.§'!Z§,§`!;§()));
         }
      }
   }
}
