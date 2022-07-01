package §;"§
{
   import §!""§.§]H§;
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §0!q§.§;!-§;
   import §1![§.§`w§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §9!p§.§?!=§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import flash.display.MovieClip;
   
   public class §+`§ extends §?!=§
   {
      
      public static const §%n§:Number = -250;
       
      
      protected var §5"3§:§]W§ = null;
      
      protected var §`!;§:§,6§;
      
      protected var §#!l§:MovieClip;
      
      protected var §8!n§:§]"%§;
      
      protected var §;r§:§]"%§;
      
      protected var §`§:§]"%§;
      
      public function §+`§(param1:§,6§, param2:§0![§, param3:§`w§, param4:§+f§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §!o§.setVisibility(false);
         this.§`!;§ = §,6§(§!o§.getItemByName("Container_PauseMenu"));
         this.§`!;§.x = §%n§;
         this.§#!l§ = §!o§.getItemByName("MovieClip_Bg").mClip;
         this.§8!n§ = §]"%§(this.§`!;§.getItemByName("Button_Resume"));
         this.§;r§ = §]"%§(this.§`!;§.getItemByName("Button_Menu"));
         this.§`§ = §]"%§(this.§`!;§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§4a§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§7!u§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§function§(param1);
         §@!S§.§2A§.background.§0"1§();
      }
      
      private function §3G§() : void
      {
         if(this.§5"3§)
         {
            this.§5"3§.stop();
            this.§5"3§ = null;
         }
      }
      
      protected function §function§(param1:Boolean) : void
      {
         §!o§.setVisibility(true);
         this.§3G§();
         §@!S§.pause();
         this.§7!]§(false);
         if(param1)
         {
            this.§5"3§ = §0!o§.§,2§.§+!p§(§0!o§.§,2§.§4!t§(this.§`!;§,{"x":0},null,0.25),§0!o§.§,2§.§4!t§(this.§#!l§,{"alpha":1},null,0.25));
            this.§5"3§.onComplete = this.§>!r§;
            this.§5"3§.play();
         }
         else
         {
            this.§`!;§.x = 0;
            this.§#!l§.alpha = 1;
            this.§>!r§();
         }
      }
      
      protected function §>!r§() : void
      {
         this.§3G§();
         §!o§.addEventListener(§]H§.§59§,this.onUIInteraction);
         this.§7!]§(true);
      }
      
      protected function §7!]§(param1:Boolean) : void
      {
         this.§8!n§.setEnabled(param1);
         this.§`§.setEnabled(param1);
         this.§;r§.setEnabled(param1);
      }
      
      protected function §8#§(param1:String) : void
      {
         this.§8!n§.setComponentVisualState(param1);
         this.§`§.setComponentVisualState(param1);
         this.§;r§.setComponentVisualState(param1);
      }
      
      protected function §7!u§(param1:Boolean) : void
      {
         §!o§.removeEventListener(§]H§.§59§,this.onUIInteraction);
         this.§3G§();
         if(param1)
         {
            this.§5"3§ = §0!o§.§,2§.§+!p§(§0!o§.§,2§.§4!t§(this.§`!;§,{"x":§%n§},null,0.25),§0!o§.§,2§.§4!t§(this.§#!l§,{"alpha":0},null,0.25));
            this.§5"3§.onComplete = this.§]r§;
            this.§5"3§.play();
         }
         else
         {
            this.§`!;§.x = §%n§;
            this.§#!l§.alpha = 0;
            this.§]r§();
         }
      }
      
      protected function §]r§() : void
      {
         §!o§.setVisibility(false);
         this.§3G§();
         dispatchEvent(new §;!-§(§;!-§.§3!w§));
         §@!S§.resume();
      }
      
      protected function onUIInteraction(param1:§]H§) : void
      {
         if(§4R§)
         {
            return;
         }
         switch(param1.§4o§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §;!-§(§;!-§.§,d§,§5!B§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §;!-§(§;!-§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §;!-§(§;!-§.§,d§,§@f§()));
         }
      }
   }
}
