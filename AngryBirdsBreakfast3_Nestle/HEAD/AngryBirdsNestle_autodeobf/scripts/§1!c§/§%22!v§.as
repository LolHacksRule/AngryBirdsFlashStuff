package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §,M§.§+f§;
   import §1'§.§?>§;
   import §1'§.ColorFadeLayerEvent;
   import §4!i§.§@"#§;
   
   public class §"!v§ extends §'8§
   {
       
      
      protected var §@T§:§?>§ = null;
      
      private var §+T§:Boolean;
      
      private var §%"§:Boolean;
      
      public function §"!v§(param1:§0![§, param2:§+f§, param3:§4O§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§@T§ = new §?>§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         if(this.§@T§ && this.§@T§.parent == §^!T§.container.mClip)
         {
            §^!T§.container.mClip.removeChild(this.§@T§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§+T§ = false;
         if((§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§8!E§())
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(false);
         }
         else
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
         }
         this.§%"§ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§'"5§();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§4!4§(false);
         § !4§.§%"7§.§+!J§.closeAllPopups();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§4!4§(this.§%"§);
      }
      
      override public function onLevelLoadError() : void
      {
         §7"6§(§^j§.§8"%§);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §@"#§.§,2§.updateTextFields(§^!T§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§6!D§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function §6!D§() : void
      {
         if(this.§@T§ && !this.§+T§)
         {
            this.§+T§ = true;
            this.§@T§.§'7§(0);
            if(this.§@T§.parent == §^!T§.container.mClip)
            {
               §^!T§.container.mClip.removeChild(this.§@T§);
               §^!T§.container.mClip.addChild(this.§@T§);
            }
            else
            {
               §^!T§.container.mClip.addChild(this.§@T§);
            }
            this.§@T§.§!!p§(1,0.25);
            this.§@T§.addEventListener(ColorFadeLayerEvent.§#!9§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§@T§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.onFadeComplete);
         §7"6§(§[!w§());
      }
   }
}
