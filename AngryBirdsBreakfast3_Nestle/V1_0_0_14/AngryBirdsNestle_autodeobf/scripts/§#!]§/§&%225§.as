package §#!]§
{
   import §+T§.ColorFadeLayerEvent;
   import §2!s§.§0l§;
   import §7"6§.§^!_§;
   
   public class §&"5§ extends §#!j§
   {
      
      public static const §]!y§:String = "LevelLoadCreditsCustom";
       
      
      public function §&"5§(param1:§-g§, param2:§^!_§, param3:§0l§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§,!a§(true);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§?!§(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§?!§(true);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §0!h§.removeEventListener(ColorFadeLayerEvent.§7! §,this.onFadeComplete);
         §]a§(§'"$§.§]!y§);
      }
   }
}
