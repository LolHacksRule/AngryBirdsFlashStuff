package §`!6§
{
   import §!!<§.§-"4§;
   import §&!'§.ColorFadeLayerEvent;
   import §&!'§.§]S§;
   import §-!F§.§[!Q§;
   import §>!a§.§5l§;
   import §]!d§.§-!<§;
   
   public class §"7§ extends §-%§
   {
       
      
      protected var §%'§:§]S§ = null;
      
      private var § F§:Boolean;
      
      private var §^a§:Boolean;
      
      public function §"7§(param1:§5l§, param2:§-!<§, param3:§-"4§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%'§ = new §]S§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         if(this.§%'§ && this.§%'§.parent == §!^§.container.mClip)
         {
            §!^§.container.mClip.removeChild(this.§%'§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§ F§ = false;
         if((§&N§.§#Y§ as AngryBirdsCustom).§#A§.§`"1§())
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(false);
         }
         else
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(false);
         }
         this.§^a§ = (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§?" §();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§67§(false);
         §&N§.§#Y§.§@!H§.closeAllPopups();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§67§(this.§^a§);
      }
      
      override public function onLevelLoadError() : void
      {
         §8=§(§?E§.§]O§);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §[!Q§.§=J§.updateTextFields(§!^§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§@!=§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function §@!=§() : void
      {
         if(this.§%'§ && !this.§ F§)
         {
            this.§ F§ = true;
            this.§%'§.§["+§(0);
            if(this.§%'§.parent == §!^§.container.mClip)
            {
               §!^§.container.mClip.removeChild(this.§%'§);
               §!^§.container.mClip.addChild(this.§%'§);
            }
            else
            {
               §!^§.container.mClip.addChild(this.§%'§);
            }
            this.§%'§.§3"5§(1,0.25);
            this.§%'§.addEventListener(ColorFadeLayerEvent.§!D§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§%'§.removeEventListener(ColorFadeLayerEvent.§!D§,this.onFadeComplete);
         §8=§(§&!9§());
      }
   }
}
