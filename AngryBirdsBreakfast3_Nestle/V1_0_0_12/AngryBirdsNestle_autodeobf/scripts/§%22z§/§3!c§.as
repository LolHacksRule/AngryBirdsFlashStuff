package §"z§
{
   import §&!I§.§9!C§;
   import §-!J§.§9"!§;
   import §-!h§.§1!$§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §7"6§.§^!_§;
   import §?u§.override;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import flash.display.MovieClip;
   
   public class §3!c§ extends §9"!§
   {
      
      public static const §^"4§:Number = -250;
       
      
      protected var §&A§:§^!T§ = null;
      
      protected var §>[§:§%n§;
      
      protected var §#"+§:MovieClip;
      
      protected var §#!A§:§ `§;
      
      protected var §]Q§:§ `§;
      
      protected var §^w§:§ `§;
      
      public function §3!c§(param1:§%n§, param2:§-g§, param3:override, param4:§^!_§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §!!g§.setVisibility(false);
         this.§>[§ = §%n§(§!!g§.getItemByName("Container_PauseMenu"));
         this.§>[§.x = §^"4§;
         this.§#"+§ = §!!g§.getItemByName("MovieClip_Bg").mClip;
         this.§#!A§ = § `§(this.§>[§.getItemByName("Button_Resume"));
         this.§]Q§ = § `§(this.§>[§.getItemByName("Button_Menu"));
         this.§^w§ = § `§(this.§>[§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§#n§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§[3§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§;!h§(param1);
         §`i§.§&!L§.background.§6!n§();
      }
      
      private function §>"7§() : void
      {
         if(this.§&A§)
         {
            this.§&A§.stop();
            this.§&A§ = null;
         }
      }
      
      protected function §;!h§(param1:Boolean) : void
      {
         §!!g§.setVisibility(true);
         this.§>"7§();
         §`i§.pause();
         this.§06§(false);
         if(param1)
         {
            this.§&A§ = §%"!§.§&!;§.§ !V§(§%"!§.§&!;§.§"!]§(this.§>[§,{"x":0},null,0.25),§%"!§.§&!;§.§"!]§(this.§#"+§,{"alpha":1},null,0.25));
            this.§&A§.onComplete = this.§2"#§;
            this.§&A§.play();
         }
         else
         {
            this.§>[§.x = 0;
            this.§#"+§.alpha = 1;
            this.§2"#§();
         }
      }
      
      protected function §2"#§() : void
      {
         this.§>"7§();
         §!!g§.addEventListener(§9!C§.§;!F§,this.onUIInteraction);
         this.§06§(true);
      }
      
      protected function §06§(param1:Boolean) : void
      {
         this.§#!A§.setEnabled(param1);
         this.§^w§.setEnabled(param1);
         this.§]Q§.setEnabled(param1);
      }
      
      protected function §4e§(param1:String) : void
      {
         this.§#!A§.setComponentVisualState(param1);
         this.§^w§.setComponentVisualState(param1);
         this.§]Q§.setComponentVisualState(param1);
      }
      
      protected function §[3§(param1:Boolean) : void
      {
         §!!g§.removeEventListener(§9!C§.§;!F§,this.onUIInteraction);
         this.§>"7§();
         if(param1)
         {
            this.§&A§ = §%"!§.§&!;§.§ !V§(§%"!§.§&!;§.§"!]§(this.§>[§,{"x":§^"4§},null,0.25),§%"!§.§&!;§.§"!]§(this.§#"+§,{"alpha":0},null,0.25));
            this.§&A§.onComplete = this.§1"2§;
            this.§&A§.play();
         }
         else
         {
            this.§>[§.x = §^"4§;
            this.§#"+§.alpha = 0;
            this.§1"2§();
         }
      }
      
      protected function §1"2§() : void
      {
         §!!g§.setVisibility(false);
         this.§>"7§();
         dispatchEvent(new §1!$§(§1!$§.§!"4§));
         §`i§.resume();
      }
      
      protected function onUIInteraction(param1:§9!C§) : void
      {
         if(§"h§)
         {
            return;
         }
         switch(param1.§7W§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §1!$§(§1!$§.§9!>§,§ !K§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §1!$§(§1!$§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §1!$§(§1!$§.§9!>§,§function§()));
         }
      }
   }
}
