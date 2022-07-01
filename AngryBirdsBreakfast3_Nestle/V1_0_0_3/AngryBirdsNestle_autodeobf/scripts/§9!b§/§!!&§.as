package §9!b§
{
   import §#!`§.§+"#§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!L§.§?!d§;
   import §>!a§.§5l§;
   import §]!d§.§-!<§;
   import §`!C§.§=!a§;
   import §`!h§.§-!7§;
   import com.angrybirds.§4!l§;
   import flash.display.MovieClip;
   
   public class §!!&§ extends §-!7§
   {
      
      public static const §-2§:Number = -250;
       
      
      protected var §[o§:§]!X§ = null;
      
      protected var § Q§:§5" §;
      
      protected var §1!D§:MovieClip;
      
      protected var §>u§:§?v§;
      
      protected var §"w§:§?v§;
      
      protected var §"!'§:§?v§;
      
      public function §!!&§(param1:§5" §, param2:§5l§, param3:§+"#§, param4:§-!<§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §&!e§.setVisibility(false);
         this.§ Q§ = §5" §(§&!e§.getItemByName("Container_PauseMenu"));
         this.§ Q§.x = §-2§;
         this.§1!D§ = §&!e§.getItemByName("MovieClip_Bg").mClip;
         this.§>u§ = §?v§(this.§ Q§.getItemByName("Button_Resume"));
         this.§"w§ = §?v§(this.§ Q§.getItemByName("Button_Menu"));
         this.§"!'§ = §?v§(this.§ Q§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§^!§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§=!e§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§?&§(param1);
         §4!l§.§,!8§.background.§?§();
      }
      
      private function §3"§() : void
      {
         if(this.§[o§)
         {
            this.§[o§.stop();
            this.§[o§ = null;
         }
      }
      
      protected function §?&§(param1:Boolean) : void
      {
         §&!e§.setVisibility(true);
         this.§3"§();
         §4!l§.pause();
         this.§'!i§(false);
         if(param1)
         {
            this.§[o§ = §`!F§.§=J§.§]W§(§`!F§.§=J§.§-r§(this.§ Q§,{"x":0},null,0.25),§`!F§.§=J§.§-r§(this.§1!D§,{"alpha":1},null,0.25));
            this.§[o§.onComplete = this.§"!y§;
            this.§[o§.play();
         }
         else
         {
            this.§ Q§.x = 0;
            this.§1!D§.alpha = 1;
            this.§"!y§();
         }
      }
      
      protected function §"!y§() : void
      {
         this.§3"§();
         §&!e§.addEventListener(§?!d§.§@q§,this.onUIInteraction);
         this.§'!i§(true);
      }
      
      protected function §'!i§(param1:Boolean) : void
      {
         this.§>u§.setEnabled(param1);
         this.§"!'§.setEnabled(param1);
         this.§"w§.setEnabled(param1);
      }
      
      protected function §"!>§(param1:String) : void
      {
         this.§>u§.setComponentVisualState(param1);
         this.§"!'§.setComponentVisualState(param1);
         this.§"w§.setComponentVisualState(param1);
      }
      
      protected function §=!e§(param1:Boolean) : void
      {
         §&!e§.removeEventListener(§?!d§.§@q§,this.onUIInteraction);
         this.§3"§();
         if(param1)
         {
            this.§[o§ = §`!F§.§=J§.§]W§(§`!F§.§=J§.§-r§(this.§ Q§,{"x":§-2§},null,0.25),§`!F§.§=J§.§-r§(this.§1!D§,{"alpha":0},null,0.25));
            this.§[o§.onComplete = this.§53§;
            this.§[o§.play();
         }
         else
         {
            this.§ Q§.x = §-2§;
            this.§1!D§.alpha = 0;
            this.§53§();
         }
      }
      
      protected function §53§() : void
      {
         §&!e§.setVisibility(false);
         this.§3"§();
         dispatchEvent(new §=!a§(§=!a§.§5!v§));
         §4!l§.resume();
      }
      
      protected function onUIInteraction(param1:§?!d§) : void
      {
         if(§0n§)
         {
            return;
         }
         switch(param1.§&"5§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §=!a§(§=!a§.§1K§,§4!5§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §=!a§(§=!a§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §=!a§(§=!a§.§1K§,§=""§()));
         }
      }
   }
}
