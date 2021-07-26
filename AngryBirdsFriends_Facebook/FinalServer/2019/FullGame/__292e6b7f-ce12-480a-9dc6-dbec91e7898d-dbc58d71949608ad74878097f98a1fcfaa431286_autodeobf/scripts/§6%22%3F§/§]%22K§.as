package §6"?§
{
   import § "L§.§1"r§;
   import § "L§.§23§;
   import §!1§.§&#q§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §7#$§.§]#q§;
   import §8!A§.§^#N§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §`§.§%#m§;
   import flash.display.MovieClip;
   
   public class §]"K§ extends §&#q§
   {
      
      public static const §0#B§:Number = -250;
       
      
      protected var §0!k§:§@$-§ = null;
      
      protected var §2"o§:§23§;
      
      protected var §8E§:MovieClip;
      
      protected var §9$3§:§1"r§;
      
      protected var §`">§:§1"r§;
      
      protected var §2"H§:§1"r§;
      
      public function §]"K§(param1:§23§, param2:§]#q§, param3:§3#J§, param4:§%"q§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §?!,§.setVisibility(false);
         this.§2"o§ = §23§(§?!,§.getItemByName("Container_PauseMenu"));
         this.§2"o§.x = §0#B§;
         this.§8E§ = §?!,§.getItemByName("MovieClip_Bg").mClip;
         this.§9$3§ = §1"r§(this.§2"o§.getItemByName("Button_Resume"));
         this.§`">§ = §1"r§(this.§2"o§.getItemByName("Button_Menu"));
         this.§2"H§ = §1"r§(this.§2"o§.getItemByName("Button_Replay"));
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
         this.§&!_§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§"#^§(param1);
         §]$?§.§2#§.background.stopAmbientSound();
      }
      
      private function §&#y§() : void
      {
         if(this.§0!k§)
         {
            this.§0!k§.stop();
            this.§0!k§ = null;
         }
      }
      
      protected function §"#^§(param1:Boolean) : void
      {
         §?!,§.setVisibility(true);
         this.§&#y§();
         §]$?§.pause();
         this.§6#_§(false);
         if(param1)
         {
            this.§0!k§ = §6"W§.§+!,§.§8$>§(§6"W§.§+!,§.§9!n§(this.§2"o§,{"x":0},null,0.25),§6"W§.§+!,§.§9!n§(this.§8E§,{"alpha":1},null,0.25));
            this.§0!k§.onComplete = this.§1"k§;
            this.§0!k§.play();
         }
         else
         {
            this.§2"o§.x = 0;
            this.§8E§.alpha = 1;
            this.§1"k§();
         }
      }
      
      protected function §1"k§() : void
      {
         this.§&#y§();
         §?!,§.addEventListener(§%#m§.§-!O§,this.onUIInteraction);
         this.§6#_§(true);
      }
      
      protected function §6#_§(param1:Boolean) : void
      {
         this.§9$3§.setEnabled(param1);
         this.§2"H§.setEnabled(param1);
         this.§`">§.setEnabled(param1);
      }
      
      protected function §^h§(param1:String) : void
      {
         this.§9$3§.setComponentVisualState(param1);
         this.§2"H§.setComponentVisualState(param1);
         this.§`">§.setComponentVisualState(param1);
      }
      
      protected function §&!_§(param1:Boolean) : void
      {
         §?!,§.removeEventListener(§%#m§.§-!O§,this.onUIInteraction);
         this.§&#y§();
         if(param1)
         {
            this.§0!k§ = §6"W§.§+!,§.§8$>§(§6"W§.§+!,§.§9!n§(this.§2"o§,{"x":§0#B§},null,0.25),§6"W§.§+!,§.§9!n§(this.§8E§,{"alpha":0},null,0.25));
            this.§0!k§.onComplete = this.§,#s§;
            this.§0!k§.play();
         }
         else
         {
            this.§2"o§.x = §0#B§;
            this.§8E§.alpha = 0;
            this.§,#s§();
         }
      }
      
      protected function §,#s§() : void
      {
         §?!,§.setVisibility(false);
         this.§&#y§();
         dispatchEvent(new §^#N§(§^#N§.§0#T§));
         §]$?§.resume();
      }
      
      protected function onUIInteraction(param1:§%#m§) : void
      {
         if(§ #"§)
         {
            return;
         }
         switch(param1.eventName)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §^#N§(§^#N§.§8#j§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §^#N§(§^#N§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §^#N§(§^#N§.§8#j§,§0!,§()));
         }
      }
   }
}
