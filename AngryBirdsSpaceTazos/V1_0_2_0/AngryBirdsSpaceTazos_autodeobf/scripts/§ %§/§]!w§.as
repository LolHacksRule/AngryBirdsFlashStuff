package § %§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §"!>§.§<!o§;
   import §""%§.§extends§;
   import §+!9§.§;0§;
   import §;!0§.;
   import §<!#§.§""§;
   import §<!d§.§'S§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §>"0§.§7"$§;
   import flash.display.MovieClip;
   
   public class §]!w§ extends §'S§
   {
      
      public static const §!![§:Number = -250;
       
      
      protected var §>!S§:§8"+§ = null;
      
      protected var §"!'§:§1s§;
      
      protected var §05§:MovieClip;
      
      protected var §&D§:§3!A§;
      
      protected var § C§:§3!A§;
      
      protected var §2!G§:§3!A§;
      
      public function §]!w§(param1:§1s§, param2:§#2§, param3:§extends§, param4:§<!o§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §3!C§.setVisibility(false);
         this.§"!'§ = §1s§(§3!C§.getItemByName("Container_PauseMenu"));
         this.§"!'§.x = §!![§;
         this.§05§ = §3!C§.getItemByName("MovieClip_Bg").mClip;
         this.§&D§ = §3!A§(this.§"!'§.getItemByName("Button_Resume"));
         this.§ C§ = §3!A§(this.§"!'§.getItemByName("Button_Menu"));
         this.§2!G§ = §3!A§(this.§"!'§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§,W§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§[2§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§@C§(param1);
         §;0§.§@!^§.background.stopAmbientSound();
      }
      
      private function §`V§() : void
      {
         if(this.§>!S§)
         {
            this.§>!S§.stop();
            this.§>!S§ = null;
         }
      }
      
      protected function §@C§(param1:Boolean) : void
      {
         §3!C§.setVisibility(true);
         this.§`V§();
         §;0§.pause();
         this.§>b§(false);
         if(param1)
         {
            this.§>!S§ = §<K§.§<"B§.§]"B§(§<K§.§<"B§.§`!c§(this.§"!'§,{"x":0},null,0.25),§<K§.§<"B§.§`!c§(this.§05§,{"alpha":1},null,0.25));
            this.§>!S§.onComplete = this.§3"4§;
            this.§>!S§.play();
         }
         else
         {
            this.§"!'§.x = 0;
            this.§05§.alpha = 1;
            this.§3"4§();
         }
      }
      
      protected function §3"4§() : void
      {
         this.§`V§();
         §3!C§.addEventListener(§""§.§#!J§,this.onUIInteraction);
         this.§>b§(true);
      }
      
      protected function §>b§(param1:Boolean) : void
      {
         this.§&D§.setEnabled(param1);
         this.§2!G§.setEnabled(param1);
         this.§ C§.setEnabled(param1);
      }
      
      protected function §+!,§(param1:String) : void
      {
         this.§&D§.setComponentVisualState(param1);
         this.§2!G§.setComponentVisualState(param1);
         this.§ C§.setComponentVisualState(param1);
      }
      
      protected function §[2§(param1:Boolean) : void
      {
         §3!C§.removeEventListener(§""§.§#!J§,this.onUIInteraction);
         this.§`V§();
         if(param1)
         {
            this.§>!S§ = §<K§.§<"B§.§]"B§(§<K§.§<"B§.§`!c§(this.§"!'§,{"x":§!![§},null,0.25),§<K§.§<"B§.§`!c§(this.§05§,{"alpha":0},null,0.25));
            this.§>!S§.onComplete = this.§'j§;
            this.§>!S§.play();
         }
         else
         {
            this.§"!'§.x = §!![§;
            this.§05§.alpha = 0;
            this.§'j§();
         }
      }
      
      protected function §'j§() : void
      {
         §3!C§.setVisibility(false);
         this.§`V§();
         dispatchEvent(new §7"$§(§7"$§.§'G§));
         §;0§.resume();
      }
      
      protected function onUIInteraction(param1:§""§) : void
      {
         if(§'!e§)
         {
            return;
         }
         switch(param1.§-!<§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §7"$§(§7"$§.§>m§,§'F§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §7"$§(§7"$§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §7"$§(§7"$§.§>m§,§#"2§()));
         }
      }
   }
}
