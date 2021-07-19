package §]![§
{
   import §#"&§.§4!W§;
   import §-!;§.§>!B§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §7!A§.§#"'§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import §^Z§.§8S§;
   import com.angrybirds.§&!"§;
   import flash.display.MovieClip;
   
   public class §="+§ extends §#"'§
   {
      
      public static const §9C§:Number = -250;
       
      
      protected var §`!Y§:§0]§ = null;
      
      protected var §[!3§:§"!a§;
      
      protected var §[i§:MovieClip;
      
      protected var §0!'§:§;§;
      
      protected var §"!>§:§;§;
      
      protected var §&0§:§;§;
      
      public function §="+§(param1:§"!a§, param2:§5!Y§, param3:§4!W§, param4:§6h§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §!O§.setVisibility(false);
         this.§[!3§ = §"!a§(§!O§.getItemByName("Container_PauseMenu"));
         this.§[!3§.x = §9C§;
         this.§[i§ = §!O§.getItemByName("MovieClip_Bg").mClip;
         this.§0!'§ = §;§(this.§[!3§.getItemByName("Button_Resume"));
         this.§"!>§ = §;§(this.§[!3§.getItemByName("Button_Menu"));
         this.§&0§ = §;§(this.§[!3§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§&" §.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§8<§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§7L§(param1);
         §&!"§.§1!D§.background.§#]§();
      }
      
      private function §finally§() : void
      {
         if(this.§`!Y§)
         {
            this.§`!Y§.stop();
            this.§`!Y§ = null;
         }
      }
      
      protected function §7L§(param1:Boolean) : void
      {
         §!O§.setVisibility(true);
         this.§finally§();
         §&!"§.pause();
         this.§3!M§(false);
         if(param1)
         {
            this.§`!Y§ = §'^§.§2Z§.§7!%§(§'^§.§2Z§.§!!f§(this.§[!3§,{"x":0},null,0.25),§'^§.§2Z§.§!!f§(this.§[i§,{"alpha":1},null,0.25));
            this.§`!Y§.onComplete = this.§!!M§;
            this.§`!Y§.play();
         }
         else
         {
            this.§[!3§.x = 0;
            this.§[i§.alpha = 1;
            this.§!!M§();
         }
      }
      
      protected function §!!M§() : void
      {
         this.§finally§();
         §!O§.addEventListener(§>!B§.§7"&§,this.onUIInteraction);
         this.§3!M§(true);
      }
      
      protected function §3!M§(param1:Boolean) : void
      {
         this.§0!'§.setEnabled(param1);
         this.§&0§.setEnabled(param1);
         this.§"!>§.setEnabled(param1);
      }
      
      protected function §5O§(param1:String) : void
      {
         this.§0!'§.setComponentVisualState(param1);
         this.§&0§.setComponentVisualState(param1);
         this.§"!>§.setComponentVisualState(param1);
      }
      
      protected function §8<§(param1:Boolean) : void
      {
         §!O§.removeEventListener(§>!B§.§7"&§,this.onUIInteraction);
         this.§finally§();
         if(param1)
         {
            this.§`!Y§ = §'^§.§2Z§.§7!%§(§'^§.§2Z§.§!!f§(this.§[!3§,{"x":§9C§},null,0.25),§'^§.§2Z§.§!!f§(this.§[i§,{"alpha":0},null,0.25));
            this.§`!Y§.onComplete = this.§8u§;
            this.§`!Y§.play();
         }
         else
         {
            this.§[!3§.x = §9C§;
            this.§[i§.alpha = 0;
            this.§8u§();
         }
      }
      
      protected function §8u§() : void
      {
         §!O§.setVisibility(false);
         this.§finally§();
         dispatchEvent(new §8S§(§8S§.§[$§));
         §&!"§.resume();
      }
      
      protected function onUIInteraction(param1:§>!B§) : void
      {
         if(§2!,§)
         {
            return;
         }
         switch(param1.§3!C§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §8S§(§8S§.§1!K§,§0!S§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §8S§(§8S§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §8S§(§8S§.§1!K§,§2§()));
         }
      }
   }
}
