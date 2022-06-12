package §<9§
{
   import § !j§.§4#c§;
   import §!"'§.§0"Z§;
   import §!#C§.§#H§;
   import §#,§.§ !>§;
   import §#,§.§]$+§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,"v§.§;"n§;
   import §3!!§.§;2§;
   import §=#f§.§""F§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   
   public class §-"q§ extends §;2§
   {
      
      public static const §&#<§:Number = -250;
       
      
      protected var §8$6§:§7$C§ = null;
      
      protected var §!!B§:§]$+§;
      
      protected var §>t§:MovieClip;
      
      protected var §5"5§:§ !>§;
      
      protected var §4#k§:§ !>§;
      
      protected var §=#z§:§ !>§;
      
      public function §-"q§(param1:§]$+§, param2:§;"n§, param3:§#H§, param4:§4#c§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §6#`§.setVisibility(false);
         this.§!!B§ = §]$+§(§6#`§.getItemByName("Container_PauseMenu"));
         this.§!!B§.x = §&#<§;
         this.§>t§ = §6#`§.getItemByName("MovieClip_Bg").mClip;
         this.§5"5§ = § !>§(this.§!!B§.getItemByName("Button_Resume"));
         this.§4#k§ = § !>§(this.§!!B§.getItemByName("Button_Menu"));
         this.§=#z§ = § !>§(this.§!!B§.getItemByName("Button_Replay"));
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
         this.§9"-§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§=$%§(param1);
         §7n§.§6#K§.background.stopAmbientSound();
      }
      
      private function §+"7§() : void
      {
         if(this.§8$6§)
         {
            this.§8$6§.stop();
            this.§8$6§ = null;
         }
      }
      
      protected function §=$%§(param1:Boolean) : void
      {
         §6#`§.setVisibility(true);
         this.§+"7§();
         §7n§.pause();
         this.§=#%§(false);
         if(param1)
         {
            this.§8$6§ = §"!&§.§`"H§.§;#r§(§"!&§.§`"H§.§1"W§(this.§!!B§,{"x":0},null,0.25),§"!&§.§`"H§.§1"W§(this.§>t§,{"alpha":1},null,0.25));
            this.§8$6§.onComplete = this.§;!O§;
            this.§8$6§.play();
         }
         else
         {
            this.§!!B§.x = 0;
            this.§>t§.alpha = 1;
            this.§;!O§();
         }
      }
      
      protected function §;!O§() : void
      {
         this.§+"7§();
         §6#`§.addEventListener(§0"Z§.§0#,§,this.onUIInteraction);
         this.§=#%§(true);
      }
      
      protected function §=#%§(param1:Boolean) : void
      {
         this.§5"5§.setEnabled(param1);
         this.§=#z§.setEnabled(param1);
         this.§4#k§.setEnabled(param1);
      }
      
      protected function §];§(param1:String) : void
      {
         this.§5"5§.setComponentVisualState(param1);
         this.§=#z§.setComponentVisualState(param1);
         this.§4#k§.setComponentVisualState(param1);
      }
      
      protected function §9"-§(param1:Boolean) : void
      {
         §6#`§.removeEventListener(§0"Z§.§0#,§,this.onUIInteraction);
         this.§+"7§();
         if(param1)
         {
            this.§8$6§ = §"!&§.§`"H§.§;#r§(§"!&§.§`"H§.§1"W§(this.§!!B§,{"x":§&#<§},null,0.25),§"!&§.§`"H§.§1"W§(this.§>t§,{"alpha":0},null,0.25));
            this.§8$6§.onComplete = this.§4#+§;
            this.§8$6§.play();
         }
         else
         {
            this.§!!B§.x = §&#<§;
            this.§>t§.alpha = 0;
            this.§4#+§();
         }
      }
      
      protected function §4#+§() : void
      {
         §6#`§.setVisibility(false);
         this.§+"7§();
         dispatchEvent(new §""F§(§""F§.§;"]§));
         §7n§.resume();
      }
      
      protected function onUIInteraction(param1:§0"Z§) : void
      {
         if(§^!!§)
         {
            return;
         }
         switch(param1.eventName)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §""F§(§""F§.§]E§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §""F§(§""F§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §""F§(§""F§.§]E§,§`![§()));
         }
      }
   }
}
