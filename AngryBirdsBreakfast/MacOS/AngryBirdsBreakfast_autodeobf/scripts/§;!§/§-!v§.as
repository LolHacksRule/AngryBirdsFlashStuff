package §;!§
{
   import §&v§.§#!R§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.ColorFadeLayerEvent;
   
   public class §-!v§ extends §2q§
   {
      
      public static const §-!q§:String = "LevelLoadCreditsCustom";
       
      
      public function §-!v§(param1:§5!Y§, param2:§6h§, param3:§#!R§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §'x§.removeEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
         §<f§(§&4§.§-!q§);
      }
   }
}
