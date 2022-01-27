package §7"#§
{
   import §+=§.§?!Q§;
   import §,!7§.§%!J§;
   import §,!7§.§5!k§;
   import §4",§.§,!j§;
   import §5R§.§6"7§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §;"G§.§3!>§;
   import §=!v§.§+!z§;
   import flash.display.MovieClip;
   
   public class §4"!§ extends §3!>§
   {
      
      public static const §'a§:Number = -250;
       
      
      protected var §6_§:§15§ = null;
      
      protected var §'v§:§5!k§;
      
      protected var §?!J§:MovieClip;
      
      protected var §#!7§:§%!J§;
      
      protected var §[j§:§%!J§;
      
      protected var §^!5§:§%!J§;
      
      public function §4"!§(param1:§5!k§, param2:§,!j§, param3:§6"7§, param4:§;l§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §6!I§.setVisibility(false);
         this.§'v§ = §5!k§(§6!I§.getItemByName("Container_PauseMenu"));
         this.§'v§.x = §'a§;
         this.§?!J§ = §6!I§.getItemByName("MovieClip_Bg").mClip;
         this.§#!7§ = §%!J§(this.§'v§.getItemByName("Button_Resume"));
         this.§[j§ = §%!J§(this.§'v§.getItemByName("Button_Menu"));
         this.§^!5§ = §%!J§(this.§'v§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§]m§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§%i§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§`R§(param1);
         §8!w§.§5!V§.background.stopAmbientSound();
      }
      
      private function § 7§() : void
      {
         if(this.§6_§)
         {
            this.§6_§.stop();
            this.§6_§ = null;
         }
      }
      
      protected function §`R§(param1:Boolean) : void
      {
         §6!I§.setVisibility(true);
         this.§ 7§();
         §8!w§.pause();
         this.§1!b§(false);
         if(param1)
         {
            this.§6_§ = §@F§.§8!J§.§!W§(§@F§.§8!J§.§&6§(this.§'v§,{"x":0},null,0.25),§@F§.§8!J§.§&6§(this.§?!J§,{"alpha":1},null,0.25));
            this.§6_§.onComplete = this.§`!-§;
            this.§6_§.play();
         }
         else
         {
            this.§'v§.x = 0;
            this.§?!J§.alpha = 1;
            this.§`!-§();
         }
      }
      
      protected function §`!-§() : void
      {
         this.§ 7§();
         §6!I§.addEventListener(§?!Q§.§ set§,this.onUIInteraction);
         this.§1!b§(true);
      }
      
      protected function §1!b§(param1:Boolean) : void
      {
         this.§#!7§.setEnabled(param1);
         this.§^!5§.setEnabled(param1);
         this.§[j§.setEnabled(param1);
      }
      
      protected function §%!B§(param1:String) : void
      {
         this.§#!7§.setComponentVisualState(param1);
         this.§^!5§.setComponentVisualState(param1);
         this.§[j§.setComponentVisualState(param1);
      }
      
      protected function §%i§(param1:Boolean) : void
      {
         §6!I§.removeEventListener(§?!Q§.§ set§,this.onUIInteraction);
         this.§ 7§();
         if(param1)
         {
            this.§6_§ = §@F§.§8!J§.§!W§(§@F§.§8!J§.§&6§(this.§'v§,{"x":§'a§},null,0.25),§@F§.§8!J§.§&6§(this.§?!J§,{"alpha":0},null,0.25));
            this.§6_§.onComplete = this.§`!3§;
            this.§6_§.play();
         }
         else
         {
            this.§'v§.x = §'a§;
            this.§?!J§.alpha = 0;
            this.§`!3§();
         }
      }
      
      protected function §`!3§() : void
      {
         §6!I§.setVisibility(false);
         this.§ 7§();
         dispatchEvent(new §+!z§(§+!z§.§4<§));
         §8!w§.resume();
      }
      
      protected function onUIInteraction(param1:§?!Q§) : void
      {
         if(§<p§)
         {
            return;
         }
         switch(param1.§&"8§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §+!z§(§+!z§.§,"D§,§'!G§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §+!z§(§+!z§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §+!z§(§+!z§.§,"D§,§^!z§()));
         }
      }
   }
}
