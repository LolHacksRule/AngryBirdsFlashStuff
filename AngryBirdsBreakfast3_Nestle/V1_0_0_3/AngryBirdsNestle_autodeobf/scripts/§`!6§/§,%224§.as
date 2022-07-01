package §`!6§
{
   import §!!<§.§-"4§;
   import §&!'§.ColorFadeLayerEvent;
   import §>!a§.§5l§;
   import §]!d§.§-!<§;
   
   public class §,"4§ extends §"7§
   {
      
      public static const §]O§:String = "LevelLoadCreditsCustom";
       
      
      public function §,"4§(param1:§5l§, param2:§-!<§, param3:§-"4§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"$§(true);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§,v§(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§,v§(true);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §%'§.removeEventListener(ColorFadeLayerEvent.§!D§,this.onFadeComplete);
         §8=§(§3B§.§]O§);
      }
   }
}
