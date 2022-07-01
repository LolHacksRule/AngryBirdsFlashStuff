package § q§
{
   import §"!G§.§3!f§;
   import §#!n§.§+!o§;
   import §0W§.§]!D§;
   import §1!=§.§#d§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §8!e§.§3"&§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §<" §.§]!g§;
   import com.angrybirds.§4"6§;
   import flash.display.MovieClip;
   
   public class §9!B§ extends §]!D§
   {
      
      public static const §+!n§:Number = -250;
       
      
      protected var §!!I§:§["$§ = null;
      
      protected var §&!q§:§^!i§;
      
      protected var §<!?§:MovieClip;
      
      protected var §2&§:§9!M§;
      
      protected var §7!0§:§9!M§;
      
      protected var §&#§:§9!M§;
      
      public function §9!B§(param1:§^!i§, param2:§3"&§, param3:§+!o§, param4:§3!f§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §[_§.setVisibility(false);
         this.§&!q§ = §^!i§(§[_§.getItemByName("Container_PauseMenu"));
         this.§&!q§.x = §+!n§;
         this.§<!?§ = §[_§.getItemByName("MovieClip_Bg").mClip;
         this.§2&§ = §9!M§(this.§&!q§.getItemByName("Button_Resume"));
         this.§7!0§ = §9!M§(this.§&!q§.getItemByName("Button_Menu"));
         this.§&#§ = §9!M§(this.§&!q§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§!3§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§0#§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§;!r§(param1);
         §4"6§.§;!k§.background.§-!J§();
      }
      
      private function §`M§() : void
      {
         if(this.§!!I§)
         {
            this.§!!I§.stop();
            this.§!!I§ = null;
         }
      }
      
      protected function §;!r§(param1:Boolean) : void
      {
         §[_§.setVisibility(true);
         this.§`M§();
         §4"6§.pause();
         this.§;!i§(false);
         if(param1)
         {
            this.§!!I§ = §6!u§.§"e§.§4M§(§6!u§.§"e§.§0!O§(this.§&!q§,{"x":0},null,0.25),§6!u§.§"e§.§0!O§(this.§<!?§,{"alpha":1},null,0.25));
            this.§!!I§.onComplete = this.§#§;
            this.§!!I§.play();
         }
         else
         {
            this.§&!q§.x = 0;
            this.§<!?§.alpha = 1;
            this.§#§();
         }
      }
      
      protected function §#§() : void
      {
         this.§`M§();
         §[_§.addEventListener(§]!g§.§&u§,this.onUIInteraction);
         this.§;!i§(true);
      }
      
      protected function §;!i§(param1:Boolean) : void
      {
         this.§2&§.setEnabled(param1);
         this.§&#§.setEnabled(param1);
         this.§7!0§.setEnabled(param1);
      }
      
      protected function §>r§(param1:String) : void
      {
         this.§2&§.setComponentVisualState(param1);
         this.§&#§.setComponentVisualState(param1);
         this.§7!0§.setComponentVisualState(param1);
      }
      
      protected function §0#§(param1:Boolean) : void
      {
         §[_§.removeEventListener(§]!g§.§&u§,this.onUIInteraction);
         this.§`M§();
         if(param1)
         {
            this.§!!I§ = §6!u§.§"e§.§4M§(§6!u§.§"e§.§0!O§(this.§&!q§,{"x":§+!n§},null,0.25),§6!u§.§"e§.§0!O§(this.§<!?§,{"alpha":0},null,0.25));
            this.§!!I§.onComplete = this.§]""§;
            this.§!!I§.play();
         }
         else
         {
            this.§&!q§.x = §+!n§;
            this.§<!?§.alpha = 0;
            this.§]""§();
         }
      }
      
      protected function §]""§() : void
      {
         §[_§.setVisibility(false);
         this.§`M§();
         dispatchEvent(new §#d§(§#d§.§8!P§));
         §4"6§.resume();
      }
      
      protected function onUIInteraction(param1:§]!g§) : void
      {
         if(§`^§)
         {
            return;
         }
         switch(param1.§=P§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §#d§(§#d§.§^!^§,§'m§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §#d§(§#d§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §#d§(§#d§.§^!^§,§ O§()));
         }
      }
   }
}
