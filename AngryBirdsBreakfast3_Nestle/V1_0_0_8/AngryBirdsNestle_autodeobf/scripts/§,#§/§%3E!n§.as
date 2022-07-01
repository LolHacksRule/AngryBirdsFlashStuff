package §,#§
{
   import §!"+§.§2!H§;
   import §"!G§.§3!f§;
   import §%f§.§[@§;
   import §8!e§.§3"&§;
   import §=b§.§5!p§;
   import §=b§.ColorFadeLayerEvent;
   
   public class §>!n§ extends § K§
   {
       
      
      protected var § p§:§5!p§ = null;
      
      private var §6!d§:Boolean;
      
      private var §;6§:Boolean;
      
      public function §>!n§(param1:§3"&§, param2:§3!f§, param3:§2!H§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§ p§ = new §5!p§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         if(this.§ p§ && this.§ p§.parent == §^!6§.container.mClip)
         {
            §^!6§.container.mClip.removeChild(this.§ p§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§6!d§ = false;
         if((§-O§.§5!1§ as AngryBirdsCustom).§9]§.§`!E§())
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(false);
         }
         else
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(false);
         }
         this.§;6§ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§83§();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+!h§(false);
         §-O§.§5!1§.§-6§.closeAllPopups();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+!h§(this.§;6§);
      }
      
      override public function onLevelLoadError() : void
      {
         §'"6§(§=%§.§'u§);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §[@§.§"e§.updateTextFields(§^!6§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§#! §();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function §#! §() : void
      {
         if(this.§ p§ && !this.§6!d§)
         {
            this.§6!d§ = true;
            this.§ p§.§+b§(0);
            if(this.§ p§.parent == §^!6§.container.mClip)
            {
               §^!6§.container.mClip.removeChild(this.§ p§);
               §^!6§.container.mClip.addChild(this.§ p§);
            }
            else
            {
               §^!6§.container.mClip.addChild(this.§ p§);
            }
            this.§ p§.§<!9§(1,0.25);
            this.§ p§.addEventListener(ColorFadeLayerEvent.§4!U§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§ p§.removeEventListener(ColorFadeLayerEvent.§4!U§,this.onFadeComplete);
         §'"6§(§0"4§());
      }
   }
}
