package §?",§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §1!T§.§##[§;
   import §2G§.§3W§;
   import §3"I§.§ E§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§>"0§;
   import §<h§.§[#K§;
   import §?"@§.§^!S§;
   import flash.display.MovieClip;
   
   public class §8q§ extends §##[§
   {
      
      public static const §9"q§:Number = -250;
       
      
      protected var §""P§:§4[§ = null;
      
      protected var §+"K§:§[#K§;
      
      protected var §?"t§:MovieClip;
      
      protected var §#=§:§>"0§;
      
      protected var §9F§:§>"0§;
      
      protected var §2"c§:§>"0§;
      
      public function §8q§(param1:§[#K§, param2:§8=§, param3:§3W§, param4:§""C§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §4"y§.setVisibility(false);
         this.§+"K§ = §[#K§(§4"y§.getItemByName("Container_PauseMenu"));
         this.§+"K§.x = §9"q§;
         this.§?"t§ = §4"y§.getItemByName("MovieClip_Bg").mClip;
         this.§#=§ = §>"0§(this.§+"K§.getItemByName("Button_Resume"));
         this.§9F§ = §>"0§(this.§+"K§.getItemByName("Button_Menu"));
         this.§2"c§ = §>"0§(this.§+"K§.getItemByName("Button_Replay"));
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
         this.§ N§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§4"2§(param1);
         §3#U§.§#$4§.background.stopAmbientSound();
      }
      
      private function §;$;§() : void
      {
         if(this.§""P§)
         {
            this.§""P§.stop();
            this.§""P§ = null;
         }
      }
      
      protected function §4"2§(param1:Boolean) : void
      {
         §4"y§.setVisibility(true);
         this.§;$;§();
         §3#U§.pause();
         this.§6!5§(false);
         if(param1)
         {
            this.§""P§ = §&"H§.§6!§.§5!j§(§&"H§.§6!§.§6C§(this.§+"K§,{"x":0},null,0.25),§&"H§.§6!§.§6C§(this.§?"t§,{"alpha":1},null,0.25));
            this.§""P§.onComplete = this.§=k§;
            this.§""P§.play();
         }
         else
         {
            this.§+"K§.x = 0;
            this.§?"t§.alpha = 1;
            this.§=k§();
         }
      }
      
      protected function §=k§() : void
      {
         this.§;$;§();
         §4"y§.addEventListener(§ E§.§=$1§,this.onUIInteraction);
         this.§6!5§(true);
      }
      
      protected function §6!5§(param1:Boolean) : void
      {
         this.§#=§.setEnabled(param1);
         this.§2"c§.setEnabled(param1);
         this.§9F§.setEnabled(param1);
      }
      
      protected function §]!S§(param1:String) : void
      {
         this.§#=§.setComponentVisualState(param1);
         this.§2"c§.setComponentVisualState(param1);
         this.§9F§.setComponentVisualState(param1);
      }
      
      protected function § N§(param1:Boolean) : void
      {
         §4"y§.removeEventListener(§ E§.§=$1§,this.onUIInteraction);
         this.§;$;§();
         if(param1)
         {
            this.§""P§ = §&"H§.§6!§.§5!j§(§&"H§.§6!§.§6C§(this.§+"K§,{"x":§9"q§},null,0.25),§&"H§.§6!§.§6C§(this.§?"t§,{"alpha":0},null,0.25));
            this.§""P§.onComplete = this.§[#l§;
            this.§""P§.play();
         }
         else
         {
            this.§+"K§.x = §9"q§;
            this.§?"t§.alpha = 0;
            this.§[#l§();
         }
      }
      
      protected function §[#l§() : void
      {
         §4"y§.setVisibility(false);
         this.§;$;§();
         dispatchEvent(new §^!S§(§^!S§.§2#+§));
         §3#U§.resume();
      }
      
      protected function onUIInteraction(param1:§ E§) : void
      {
         if(§!"J§)
         {
            return;
         }
         switch(param1.eventName)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §^!S§(§^!S§.§]y§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §^!S§(§^!S§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §^!S§(§^!S§.§]y§,§6>§()));
         }
      }
   }
}
