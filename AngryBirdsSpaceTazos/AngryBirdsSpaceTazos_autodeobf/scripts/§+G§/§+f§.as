package §+G§
{
   import §!?§.§=!_§;
   import §%!r§.§3!'§;
   import §+u§.§`v§;
   import §,"&§.§9q§;
   import §77§.§ ",§;
   import §77§.§@_§;
   import §<W§.§]"+§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^8§.§#h§;
   import §`!j§.§9"!§;
   import flash.display.MovieClip;
   
   public class §+f§ extends §`v§
   {
      
      public static const §&!Q§:Number = -250;
       
      
      protected var §0"F§:§5!9§ = null;
      
      protected var §,#§:§ ",§;
      
      protected var §5y§:MovieClip;
      
      protected var §;!@§:§@_§;
      
      protected var §-!a§:§@_§;
      
      protected var §0E§:§@_§;
      
      public function §+f§(param1:§ ",§, param2:§9"!§, param3:§=!_§, param4:§3!'§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §,!w§.setVisibility(false);
         this.§,#§ = § ",§(§,!w§.getItemByName("Container_PauseMenu"));
         this.§,#§.x = §&!Q§;
         this.§5y§ = §,!w§.getItemByName("MovieClip_Bg").mClip;
         this.§;!@§ = §@_§(this.§,#§.getItemByName("Button_Resume"));
         this.§-!a§ = §@_§(this.§,#§.getItemByName("Button_Menu"));
         this.§0E§ = §@_§(this.§,#§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§6u§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§,D§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§>@§(param1);
         §9q§.§>!L§.background.stopAmbientSound();
      }
      
      private function §=a§() : void
      {
         if(this.§0"F§)
         {
            this.§0"F§.stop();
            this.§0"F§ = null;
         }
      }
      
      protected function §>@§(param1:Boolean) : void
      {
         §,!w§.setVisibility(true);
         this.§=a§();
         §9q§.pause();
         this.§!"%§(false);
         if(param1)
         {
            this.§0"F§ = §!D§.§[!1§.§"!D§(§!D§.§[!1§.§1"<§(this.§,#§,{"x":0},null,0.25),§!D§.§[!1§.§1"<§(this.§5y§,{"alpha":1},null,0.25));
            this.§0"F§.onComplete = this.§#!t§;
            this.§0"F§.play();
         }
         else
         {
            this.§,#§.x = 0;
            this.§5y§.alpha = 1;
            this.§#!t§();
         }
      }
      
      protected function §#!t§() : void
      {
         this.§=a§();
         §,!w§.addEventListener(§]"+§.§`!C§,this.onUIInteraction);
         this.§!"%§(true);
      }
      
      protected function §!"%§(param1:Boolean) : void
      {
         this.§;!@§.setEnabled(param1);
         this.§0E§.setEnabled(param1);
         this.§-!a§.setEnabled(param1);
      }
      
      protected function §-!'§(param1:String) : void
      {
         this.§;!@§.setComponentVisualState(param1);
         this.§0E§.setComponentVisualState(param1);
         this.§-!a§.setComponentVisualState(param1);
      }
      
      protected function §,D§(param1:Boolean) : void
      {
         §,!w§.removeEventListener(§]"+§.§`!C§,this.onUIInteraction);
         this.§=a§();
         if(param1)
         {
            this.§0"F§ = §!D§.§[!1§.§"!D§(§!D§.§[!1§.§1"<§(this.§,#§,{"x":§&!Q§},null,0.25),§!D§.§[!1§.§1"<§(this.§5y§,{"alpha":0},null,0.25));
            this.§0"F§.onComplete = this.§1C§;
            this.§0"F§.play();
         }
         else
         {
            this.§,#§.x = §&!Q§;
            this.§5y§.alpha = 0;
            this.§1C§();
         }
      }
      
      protected function §1C§() : void
      {
         §,!w§.setVisibility(false);
         this.§=a§();
         dispatchEvent(new §#h§(§#h§.§ C§));
         §9q§.resume();
      }
      
      protected function onUIInteraction(param1:§]"+§) : void
      {
         if(§>!-§)
         {
            return;
         }
         switch(param1.§9X§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §#h§(§#h§.§&C§,§`!e§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §#h§(§#h§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §#h§(§#h§.§&C§,§?!I§()));
         }
      }
   }
}
