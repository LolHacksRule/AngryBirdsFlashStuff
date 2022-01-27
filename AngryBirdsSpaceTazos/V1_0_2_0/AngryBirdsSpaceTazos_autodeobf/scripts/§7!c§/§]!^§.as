package §7!c§
{
   import §"!>§.§<!o§;
   import §;!0§.;
   import §;"=§.§6!<§;
   import §]!O§.ColorFadeLayerEvent;
   
   public class §]!^§ extends §,!9§
   {
      
      public static const STATE_NAME:String = "LevelLoadCreditsCustom";
       
      
      public function §]!^§(param1:§#2§, param2:§<!o§, param3:§6!<§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §=!#§.removeEventListener(ColorFadeLayerEvent.§9"?§,this.onFadeComplete);
         §2g§(§4'§.STATE_NAME);
      }
   }
}
