package §]!V§
{
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §7"1§.ColorFadeLayerEvent;
   import §[^§.§'g§;
   
   public class §>!Z§ extends § do§
   {
      
      public static const §+a§:String = "LevelLoadCreditsCustom";
       
      
      public function §>!Z§(param1:§5!1§, param2:§&S§, param3:§'g§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§5!D§(true);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§?q§(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§?q§(true);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §7B§.removeEventListener(ColorFadeLayerEvent.§+!t§,this.onFadeComplete);
         §8!`§(§5"'§.§+a§);
      }
   }
}
