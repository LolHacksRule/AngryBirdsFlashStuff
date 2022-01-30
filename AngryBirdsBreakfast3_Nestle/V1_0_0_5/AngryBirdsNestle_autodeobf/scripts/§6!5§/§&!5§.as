package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §%z§.§?8§;
   import §+!5§.§2O§;
   import §+!5§.ColorFadeLayerEvent;
   import §2W§.§+!d§;
   
   public class §&!5§ extends §4!R§
   {
       
      
      protected var §;"3§:§2O§ = null;
      
      private var §#"&§:Boolean;
      
      private var §9!V§:Boolean;
      
      public function §&!5§(param1:§ q§, param2:§>u§, param3:§?8§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§;"3§ = new §2O§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         if(this.§;"3§ && this.§;"3§.parent == § !z§.container.mClip)
         {
            § !z§.container.mClip.removeChild(this.§;"3§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§#"&§ = false;
         if((§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§ !`§())
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(false);
         }
         else
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(false);
         }
         this.§9!V§ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§[w§();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§94§(false);
         §-!I§.§[f§.§@!C§.closeAllPopups();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§94§(this.§9!V§);
      }
      
      override public function onLevelLoadError() : void
      {
         §?n§(§^!+§.§7w§);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §+!d§.§<"5§.updateTextFields(§ !z§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§0!j§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function §0!j§() : void
      {
         if(this.§;"3§ && !this.§#"&§)
         {
            this.§#"&§ = true;
            this.§;"3§.§6!L§(0);
            if(this.§;"3§.parent == § !z§.container.mClip)
            {
               § !z§.container.mClip.removeChild(this.§;"3§);
               § !z§.container.mClip.addChild(this.§;"3§);
            }
            else
            {
               § !z§.container.mClip.addChild(this.§;"3§);
            }
            this.§;"3§.§5!F§(1,0.25);
            this.§;"3§.addEventListener(ColorFadeLayerEvent.§@!?§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§;"3§.removeEventListener(ColorFadeLayerEvent.§@!?§,this.onFadeComplete);
         §?n§(§+!j§());
      }
   }
}
