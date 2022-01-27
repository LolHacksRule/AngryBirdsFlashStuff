package §+g§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §#R§.§%!S§;
   import §%!P§.§@o§;
   import §%"%§.§2Z§;
   import §1z§.§^!@§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   import §["9§.§`"=§;
   import §const§.§-"§;
   import flash.display.MovieClip;
   
   public class §%!N§ extends §-"§
   {
      
      public static const §3!P§:Number = -250;
       
      
      protected var §5!'§:§,4§ = null;
      
      protected var §],§:§,"$§;
      
      protected var §<!q§:MovieClip;
      
      protected var §+"G§:§87§;
      
      protected var §9!i§:§87§;
      
      protected var §"!X§:§87§;
      
      public function §%!N§(param1:§,"$§, param2:§^!@§, param3:§@o§, param4:§2Z§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §-!O§.setVisibility(false);
         this.§],§ = §,"$§(§-!O§.getItemByName("Container_PauseMenu"));
         this.§],§.x = §3!P§;
         this.§<!q§ = §-!O§.getItemByName("MovieClip_Bg").mClip;
         this.§+"G§ = §87§(this.§],§.getItemByName("Button_Resume"));
         this.§9!i§ = §87§(this.§],§.getItemByName("Button_Menu"));
         this.§"!X§ = §87§(this.§],§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§#"=§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§@K§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§?8§(param1);
         §8k§.§;!]§.background.stopAmbientSound();
      }
      
      private function §%y§() : void
      {
         if(this.§5!'§)
         {
            this.§5!'§.stop();
            this.§5!'§ = null;
         }
      }
      
      protected function §?8§(param1:Boolean) : void
      {
         §-!O§.setVisibility(true);
         this.§%y§();
         §8k§.pause();
         this.§["F§(false);
         if(param1)
         {
            this.§5!'§ = §"!t§.§3R§.§!!G§(§"!t§.§3R§.§2m§(this.§],§,{"x":0},null,0.25),§"!t§.§3R§.§2m§(this.§<!q§,{"alpha":1},null,0.25));
            this.§5!'§.onComplete = this.§`!7§;
            this.§5!'§.play();
         }
         else
         {
            this.§],§.x = 0;
            this.§<!q§.alpha = 1;
            this.§`!7§();
         }
      }
      
      protected function §`!7§() : void
      {
         this.§%y§();
         §-!O§.addEventListener(§%!S§.§0!W§,this.onUIInteraction);
         this.§["F§(true);
      }
      
      protected function §["F§(param1:Boolean) : void
      {
         this.§+"G§.setEnabled(param1);
         this.§"!X§.setEnabled(param1);
         this.§9!i§.setEnabled(param1);
      }
      
      protected function §>e§(param1:String) : void
      {
         this.§+"G§.setComponentVisualState(param1);
         this.§"!X§.setComponentVisualState(param1);
         this.§9!i§.setComponentVisualState(param1);
      }
      
      protected function §@K§(param1:Boolean) : void
      {
         §-!O§.removeEventListener(§%!S§.§0!W§,this.onUIInteraction);
         this.§%y§();
         if(param1)
         {
            this.§5!'§ = §"!t§.§3R§.§!!G§(§"!t§.§3R§.§2m§(this.§],§,{"x":§3!P§},null,0.25),§"!t§.§3R§.§2m§(this.§<!q§,{"alpha":0},null,0.25));
            this.§5!'§.onComplete = this.§%m§;
            this.§5!'§.play();
         }
         else
         {
            this.§],§.x = §3!P§;
            this.§<!q§.alpha = 0;
            this.§%m§();
         }
      }
      
      protected function §%m§() : void
      {
         §-!O§.setVisibility(false);
         this.§%y§();
         dispatchEvent(new §`"=§(§`"=§.§1"3§));
         §8k§.resume();
      }
      
      protected function onUIInteraction(param1:§%!S§) : void
      {
         if(§="3§)
         {
            return;
         }
         switch(param1.§[!U§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §`"=§(§`"=§.§`w§,§ 4§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §`"=§(§`"=§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §`"=§(§`"=§.§`w§,§9!"§()));
         }
      }
   }
}
