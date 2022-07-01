package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §,M§.§+f§;
   import §1'§.ColorFadeLayerEvent;
   
   public class §^!,§ extends §"!v§
   {
      
      public static const §8"%§:String = "LevelLoadCreditsCustom";
       
      
      public function §^!,§(param1:§0![§, param2:§+f§, param3:§4O§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§9!z§(true);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§;!I§(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§;!I§(true);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §@T§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.onFadeComplete);
         §7"6§(§1!Z§.§8"%§);
      }
   }
}
