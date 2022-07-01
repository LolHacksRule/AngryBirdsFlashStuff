package §#!]§
{
   import §+T§.§1!7§;
   import §+T§.ColorFadeLayerEvent;
   import §2!s§.§0l§;
   import §7"6§.§^!_§;
   import §`!s§.§^2§;
   
   public class §#!j§ extends §6U§
   {
       
      
      protected var §0!h§:§1!7§ = null;
      
      private var §[!U§:Boolean;
      
      private var §6]§:Boolean;
      
      public function §#!j§(param1:§-g§, param2:§^!_§, param3:§0l§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0!h§ = new §1!7§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         if(this.§0!h§ && this.§0!h§.parent == §4!q§.container.mClip)
         {
            §4!q§.container.mClip.removeChild(this.§0!h§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§[!U§ = false;
         if((§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§;9§())
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(false);
         }
         else
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(false);
         }
         this.§6]§ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§+E§();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§-_§(false);
         §-!2§.§7O§.§0!l§.closeAllPopups();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§-_§(this.§6]§);
      }
      
      override public function onLevelLoadError() : void
      {
         §]a§(§=A§.§]!y§);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §^2§.§&!;§.updateTextFields(§4!q§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§`"4§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function §`"4§() : void
      {
         if(this.§0!h§ && !this.§[!U§)
         {
            this.§[!U§ = true;
            this.§0!h§.§&'§(0);
            if(this.§0!h§.parent == §4!q§.container.mClip)
            {
               §4!q§.container.mClip.removeChild(this.§0!h§);
               §4!q§.container.mClip.addChild(this.§0!h§);
            }
            else
            {
               §4!q§.container.mClip.addChild(this.§0!h§);
            }
            this.§0!h§.§2u§(1,0.25);
            this.§0!h§.addEventListener(ColorFadeLayerEvent.§7! §,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§0!h§.removeEventListener(ColorFadeLayerEvent.§7! §,this.onFadeComplete);
         §]a§(§-!<§());
      }
   }
}
