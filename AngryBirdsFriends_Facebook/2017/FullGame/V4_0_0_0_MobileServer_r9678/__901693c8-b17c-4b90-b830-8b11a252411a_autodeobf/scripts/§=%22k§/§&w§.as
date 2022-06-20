package §="k§
{
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §6"r§.§!#A§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §;5§.§12§;
   import §<o§.§3h§;
   import §@#§.§^#Q§;
   import §[!2§.§2#E§;
   import flash.display.MovieClip;
   
   public class §&w§ extends §2#E§
   {
      
      public static const §,6§:Number = -250;
       
      
      protected var §3#8§:§-#C§ = null;
      
      protected var §]#R§:§]!_§;
      
      protected var §!#7§:MovieClip;
      
      protected var §?R§:§,#w§;
      
      protected var §1#8§:§,#w§;
      
      protected var §4"x§:§,#w§;
      
      public function §&w§(param1:§]!_§, param2:§^#Q§, param3:§<&§, param4:§+#!§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §@!3§.setVisibility(false);
         this.§]#R§ = §]!_§(§@!3§.getItemByName("Container_PauseMenu"));
         this.§]#R§.x = §,6§;
         this.§!#7§ = §@!3§.getItemByName("MovieClip_Bg").mClip;
         this.§?R§ = §,#w§(this.§]#R§.getItemByName("Button_Resume"));
         this.§1#8§ = §,#w§(this.§]#R§.getItemByName("Button_Menu"));
         this.§4"x§ = §,#w§(this.§]#R§.getItemByName("Button_Replay"));
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
         this.§3"8§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§9!W§(param1);
         §!#A§.§#F§.background.stopAmbientSound();
      }
      
      private function §!!m§() : void
      {
         if(this.§3#8§)
         {
            this.§3#8§.stop();
            this.§3#8§ = null;
         }
      }
      
      protected function §9!W§(param1:Boolean) : void
      {
         §@!3§.setVisibility(true);
         this.§!!m§();
         §!#A§.pause();
         this.§5#v§(false);
         if(param1)
         {
            this.§3#8§ = §6"w§.§ "D§.§5"L§(§6"w§.§ "D§.§""3§(this.§]#R§,{"x":0},null,0.25),§6"w§.§ "D§.§""3§(this.§!#7§,{"alpha":1},null,0.25));
            this.§3#8§.onComplete = this.§9=§;
            this.§3#8§.play();
         }
         else
         {
            this.§]#R§.x = 0;
            this.§!#7§.alpha = 1;
            this.§9=§();
         }
      }
      
      protected function §9=§() : void
      {
         this.§!!m§();
         §@!3§.addEventListener(§3h§.§9"L§,this.onUIInteraction);
         this.§5#v§(true);
      }
      
      protected function §5#v§(param1:Boolean) : void
      {
         this.§?R§.setEnabled(param1);
         this.§4"x§.setEnabled(param1);
         this.§1#8§.setEnabled(param1);
      }
      
      protected function §%$#§(param1:String) : void
      {
         this.§?R§.setComponentVisualState(param1);
         this.§4"x§.setComponentVisualState(param1);
         this.§1#8§.setComponentVisualState(param1);
      }
      
      protected function §3"8§(param1:Boolean) : void
      {
         §@!3§.removeEventListener(§3h§.§9"L§,this.onUIInteraction);
         this.§!!m§();
         if(param1)
         {
            this.§3#8§ = §6"w§.§ "D§.§5"L§(§6"w§.§ "D§.§""3§(this.§]#R§,{"x":§,6§},null,0.25),§6"w§.§ "D§.§""3§(this.§!#7§,{"alpha":0},null,0.25));
            this.§3#8§.onComplete = this.§,"I§;
            this.§3#8§.play();
         }
         else
         {
            this.§]#R§.x = §,6§;
            this.§!#7§.alpha = 0;
            this.§,"I§();
         }
      }
      
      protected function §,"I§() : void
      {
         §@!3§.setVisibility(false);
         this.§!!m§();
         dispatchEvent(new §12§(§12§.§2$#§));
         §!#A§.resume();
      }
      
      protected function onUIInteraction(param1:§3h§) : void
      {
         if(§+#3§)
         {
            return;
         }
         switch(param1.eventName)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §12§(§12§.§`"Q§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §12§(§12§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §12§(§12§.§`"Q§,§%"H§()));
         }
      }
   }
}
