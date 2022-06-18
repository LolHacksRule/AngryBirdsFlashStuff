package §`#F§
{
   import § !3§.§+$E§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §2$;§.§!"e§;
   import §2$;§.§;!b§;
   import §=-§.§@$%§;
   import §=X§.§3§;
   import §>#Y§.§@!p§;
   import §?o§.§4#?§;
   import flash.display.MovieClip;
   
   public class §^#I§ extends §+$E§
   {
      
      public static const §6#[§:Number = -250;
       
      
      protected var §?"u§:§@#5§ = null;
      
      protected var §^]§:§!"e§;
      
      protected var §'$-§:MovieClip;
      
      protected var §&!p§:§;!b§;
      
      protected var §8v§:§;!b§;
      
      protected var §9"b§:§;!b§;
      
      public function §^#I§(param1:§!"e§, param2:§4#?§, param3:§@!p§, param4:§?!>§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §<!§.setVisibility(false);
         this.§^]§ = §!"e§(§<!§.getItemByName("Container_PauseMenu"));
         this.§^]§.x = §6#[§;
         this.§'$-§ = §<!§.getItemByName("MovieClip_Bg").mClip;
         this.§&!p§ = §;!b§(this.§^]§.getItemByName("Button_Resume"));
         this.§8v§ = §;!b§(this.§^]§.getItemByName("Button_Menu"));
         this.§9"b§ = §;!b§(this.§^]§.getItemByName("Button_Replay"));
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
         this.§1!V§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§@d§(param1);
         §+!p§.§`?§.background.stopAmbientSound();
      }
      
      private function §=#[§() : void
      {
         if(this.§?"u§)
         {
            this.§?"u§.stop();
            this.§?"u§ = null;
         }
      }
      
      protected function §@d§(param1:Boolean) : void
      {
         §<!§.setVisibility(true);
         this.§=#[§();
         §+!p§.pause();
         this.§?!s§(false);
         if(param1)
         {
            this.§?"u§ = §5"<§.§3"1§.§!"[§(§5"<§.§3"1§.§3#§(this.§^]§,{"x":0},null,0.25),§5"<§.§3"1§.§3#§(this.§'$-§,{"alpha":1},null,0.25));
            this.§?"u§.onComplete = this.§&"X§;
            this.§?"u§.play();
         }
         else
         {
            this.§^]§.x = 0;
            this.§'$-§.alpha = 1;
            this.§&"X§();
         }
      }
      
      protected function §&"X§() : void
      {
         this.§=#[§();
         §<!§.addEventListener(§3#6§.§[!$§,this.onUIInteraction);
         this.§?!s§(true);
      }
      
      protected function §?!s§(param1:Boolean) : void
      {
         this.§&!p§.setEnabled(param1);
         this.§9"b§.setEnabled(param1);
         this.§8v§.setEnabled(param1);
      }
      
      protected function §%"k§(param1:String) : void
      {
         this.§&!p§.setComponentVisualState(param1);
         this.§9"b§.setComponentVisualState(param1);
         this.§8v§.setComponentVisualState(param1);
      }
      
      protected function §1!V§(param1:Boolean) : void
      {
         §<!§.removeEventListener(§3#6§.§[!$§,this.onUIInteraction);
         this.§=#[§();
         if(param1)
         {
            this.§?"u§ = §5"<§.§3"1§.§!"[§(§5"<§.§3"1§.§3#§(this.§^]§,{"x":§6#[§},null,0.25),§5"<§.§3"1§.§3#§(this.§'$-§,{"alpha":0},null,0.25));
            this.§?"u§.onComplete = this.§40§;
            this.§?"u§.play();
         }
         else
         {
            this.§^]§.x = §6#[§;
            this.§'$-§.alpha = 0;
            this.§40§();
         }
      }
      
      protected function §40§() : void
      {
         §<!§.setVisibility(false);
         this.§=#[§();
         dispatchEvent(new §@$%§(§@$%§.§?2§));
         §+!p§.resume();
      }
      
      protected function onUIInteraction(param1:§3#6§) : void
      {
         if(§&"-§)
         {
            return;
         }
         switch(param1.eventName)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §@$%§(§@$%§.§,f§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §@$%§(§@$%§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §@$%§(§@$%§.§,f§,§0U§()));
         }
      }
   }
}
