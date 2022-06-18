package §1!2§
{
   import §"$=§.§'![§;
   import §,"8§.§6!v§;
   import §3"G§.§16§;
   import §5!$§.§"S§;
   import §5!$§.§<c§;
   import §5"G§.§8"`§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §=!2§.§%"T§;
   import §]"'§.§""K§;
   import §`"S§.§]!a§;
   import flash.display.MovieClip;
   
   public class §=C§ extends §]!a§
   {
      
      public static const §2_§:Number = -250;
       
      
      protected var §!![§:§]%§ = null;
      
      protected var §,#g§:§<c§;
      
      protected var §@$@§:MovieClip;
      
      protected var §,E§:§"S§;
      
      protected var §-!F§:§"S§;
      
      protected var §3"B§:§"S§;
      
      public function §=C§(param1:§<c§, param2:§'![§, param3:§""K§, param4:§16§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §+!9§.setVisibility(false);
         this.§,#g§ = §<c§(§+!9§.getItemByName("Container_PauseMenu"));
         this.§,#g§.x = §2_§;
         this.§@$@§ = §+!9§.getItemByName("MovieClip_Bg").mClip;
         this.§,E§ = §"S§(this.§,#g§.getItemByName("Button_Resume"));
         this.§-!F§ = §"S§(this.§,#g§.getItemByName("Button_Menu"));
         this.§3"B§ = §"S§(this.§,#g§.getItemByName("Button_Replay"));
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
         this.§]#n§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§throw§(param1);
         §%"T§.§;`§.background.stopAmbientSound();
      }
      
      private function §2!]§() : void
      {
         if(this.§!![§)
         {
            this.§!![§.stop();
            this.§!![§ = null;
         }
      }
      
      protected function §throw§(param1:Boolean) : void
      {
         §+!9§.setVisibility(true);
         this.§2!]§();
         §%"T§.pause();
         this.§%B§(false);
         if(param1)
         {
            this.§!![§ = §'#n§.§?q§.§set §(§'#n§.§?q§.§9!N§(this.§,#g§,{"x":0},null,0.25),§'#n§.§?q§.§9!N§(this.§@$@§,{"alpha":1},null,0.25));
            this.§!![§.onComplete = this.§"#I§;
            this.§!![§.play();
         }
         else
         {
            this.§,#g§.x = 0;
            this.§@$@§.alpha = 1;
            this.§"#I§();
         }
      }
      
      protected function §"#I§() : void
      {
         this.§2!]§();
         §+!9§.addEventListener(§8"`§.§,$A§,this.onUIInteraction);
         this.§%B§(true);
      }
      
      protected function §%B§(param1:Boolean) : void
      {
         this.§,E§.setEnabled(param1);
         this.§3"B§.setEnabled(param1);
         this.§-!F§.setEnabled(param1);
      }
      
      protected function §2"`§(param1:String) : void
      {
         this.§,E§.setComponentVisualState(param1);
         this.§3"B§.setComponentVisualState(param1);
         this.§-!F§.setComponentVisualState(param1);
      }
      
      protected function §]#n§(param1:Boolean) : void
      {
         §+!9§.removeEventListener(§8"`§.§,$A§,this.onUIInteraction);
         this.§2!]§();
         if(param1)
         {
            this.§!![§ = §'#n§.§?q§.§set §(§'#n§.§?q§.§9!N§(this.§,#g§,{"x":§2_§},null,0.25),§'#n§.§?q§.§9!N§(this.§@$@§,{"alpha":0},null,0.25));
            this.§!![§.onComplete = this.§-#`§;
            this.§!![§.play();
         }
         else
         {
            this.§,#g§.x = §2_§;
            this.§@$@§.alpha = 0;
            this.§-#`§();
         }
      }
      
      protected function §-#`§() : void
      {
         §+!9§.setVisibility(false);
         this.§2!]§();
         dispatchEvent(new §6!v§(§6!v§.§7G§));
         §%"T§.resume();
      }
      
      protected function onUIInteraction(param1:§8"`§) : void
      {
         if(§<`§)
         {
            return;
         }
         switch(param1.eventName)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §6!v§(§6!v§.§5"R§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §6!v§(§6!v§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §6!v§(§6!v§.§5"R§,§^"6§()));
         }
      }
   }
}
