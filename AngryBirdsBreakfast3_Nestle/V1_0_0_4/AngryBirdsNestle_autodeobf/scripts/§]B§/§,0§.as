package §]B§
{
   import §#k§.§3!Q§;
   import §'<§.§=!o§;
   import §;!b§.§%>§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §?!4§.§^!S§;
   import §?!6§.§5[§;
   import §@#§.§4!O§;
   import §@#§.§9!'§;
   import §[j§.§-?§;
   import com.angrybirds.§6U§;
   import flash.display.MovieClip;
   
   public class §,0§ extends §3!Q§
   {
      
      public static const §]A§:Number = -250;
       
      
      protected var §+x§:§4!N§ = null;
      
      protected var §]5§:§9!'§;
      
      protected var §#z§:MovieClip;
      
      protected var §`"'§:§4!O§;
      
      protected var §,_§:§4!O§;
      
      protected var §[!@§:§4!O§;
      
      public function §,0§(param1:§9!'§, param2:§=!o§, param3:§-?§, param4:§%>§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §?5§.setVisibility(false);
         this.§]5§ = §9!'§(§?5§.getItemByName("Container_PauseMenu"));
         this.§]5§.x = §]A§;
         this.§#z§ = §?5§.getItemByName("MovieClip_Bg").mClip;
         this.§`"'§ = §4!O§(this.§]5§.getItemByName("Button_Resume"));
         this.§,_§ = §4!O§(this.§]5§.getItemByName("Button_Menu"));
         this.§[!@§ = §4!O§(this.§]5§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§+o§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§3!t§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§,"2§(param1);
         §6U§.§+_§.background.§83§();
      }
      
      private function § t§() : void
      {
         if(this.§+x§)
         {
            this.§+x§.stop();
            this.§+x§ = null;
         }
      }
      
      protected function §,"2§(param1:Boolean) : void
      {
         §?5§.setVisibility(true);
         this.§ t§();
         §6U§.pause();
         this.§,!@§(false);
         if(param1)
         {
            this.§+x§ = §0!M§.§?!+§.§4!t§(§0!M§.§?!+§.§3d§(this.§]5§,{"x":0},null,0.25),§0!M§.§?!+§.§3d§(this.§#z§,{"alpha":1},null,0.25));
            this.§+x§.onComplete = this.§"!U§;
            this.§+x§.play();
         }
         else
         {
            this.§]5§.x = 0;
            this.§#z§.alpha = 1;
            this.§"!U§();
         }
      }
      
      protected function §"!U§() : void
      {
         this.§ t§();
         §?5§.addEventListener(§^!S§.§?!p§,this.onUIInteraction);
         this.§,!@§(true);
      }
      
      protected function §,!@§(param1:Boolean) : void
      {
         this.§`"'§.setEnabled(param1);
         this.§[!@§.setEnabled(param1);
         this.§,_§.setEnabled(param1);
      }
      
      protected function §"!W§(param1:String) : void
      {
         this.§`"'§.setComponentVisualState(param1);
         this.§[!@§.setComponentVisualState(param1);
         this.§,_§.setComponentVisualState(param1);
      }
      
      protected function §3!t§(param1:Boolean) : void
      {
         §?5§.removeEventListener(§^!S§.§?!p§,this.onUIInteraction);
         this.§ t§();
         if(param1)
         {
            this.§+x§ = §0!M§.§?!+§.§4!t§(§0!M§.§?!+§.§3d§(this.§]5§,{"x":§]A§},null,0.25),§0!M§.§?!+§.§3d§(this.§#z§,{"alpha":0},null,0.25));
            this.§+x§.onComplete = this.§]!C§;
            this.§+x§.play();
         }
         else
         {
            this.§]5§.x = §]A§;
            this.§#z§.alpha = 0;
            this.§]!C§();
         }
      }
      
      protected function §]!C§() : void
      {
         §?5§.setVisibility(false);
         this.§ t§();
         dispatchEvent(new §5[§(§5[§.§]r§));
         §6U§.resume();
      }
      
      protected function onUIInteraction(param1:§^!S§) : void
      {
         if(§4!n§)
         {
            return;
         }
         switch(param1.§'"3§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §5[§(§5[§.§%!p§,§[!e§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §5[§(§5[§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §5[§(§5[§.§%!p§,§+!I§()));
         }
      }
   }
}
