package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §%z§.§?8§;
   import §+!5§.ColorFadeLayerEvent;
   
   public class §`"$§ extends §&!5§
   {
      
      public static const §7w§:String = "LevelLoadCreditsCustom";
       
      
      public function §`"$§(param1:§ q§, param2:§>u§, param3:§?8§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§4!y§(true);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§70§(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§70§(true);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §;"3§.removeEventListener(ColorFadeLayerEvent.§@!?§,this.onFadeComplete);
         §?n§(§ !S§.§7w§);
      }
   }
}
