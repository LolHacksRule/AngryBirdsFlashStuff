package §;!§
{
   import §"n§.§!!G§;
   import §&v§.§#!R§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §<!F§.ColorFadeLayerEvent;
   
   public class §2q§ extends §[j§
   {
       
      
      protected var §'x§:§,!e§ = null;
      
      private var §;!u§:Boolean;
      
      public function §2q§(param1:§5!Y§, param2:§6h§, param3:§#!R§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'x§ = new §,!e§(0,0,0,0);
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         if(this.§'x§ && this.§'x§.parent == §?P§.container.mClip)
         {
            §?P§.container.mClip.removeChild(this.§'x§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§;!u§ = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function onLevelLoadError() : void
      {
         §<f§(§+A§.§-!q§);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §!!G§.§2Z§.updateTextFields(§?P§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§^t§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function §^t§() : void
      {
         if(this.§'x§ && !this.§;!u§)
         {
            this.§;!u§ = true;
            this.§'x§.§7z§(0);
            if(this.§'x§.parent == §?P§.container.mClip)
            {
               §?P§.container.mClip.removeChild(this.§'x§);
               §?P§.container.mClip.addChild(this.§'x§);
            }
            else
            {
               §?P§.container.mClip.addChild(this.§'x§);
            }
            this.§'x§.§=v§(1,0.25);
            this.§'x§.addEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§'x§.removeEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
         §<f§(§1f§());
      }
   }
}
