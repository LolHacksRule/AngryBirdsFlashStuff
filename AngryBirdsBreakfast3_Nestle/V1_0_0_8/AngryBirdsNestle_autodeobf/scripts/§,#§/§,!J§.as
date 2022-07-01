package §,#§
{
   import §!"+§.§2!H§;
   import §"!G§.§3!f§;
   import §8!e§.§3"&§;
   import §=b§.ColorFadeLayerEvent;
   
   public class §,!J§ extends §>!n§
   {
      
      public static const §'u§:String = "LevelLoadCreditsCustom";
       
      
      public function §,!J§(param1:§3"&§, param2:§3!f§, param3:§2!H§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!b§(true);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+;§(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+;§(true);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         § p§.removeEventListener(ColorFadeLayerEvent.§4!U§,this.onFadeComplete);
         §'"6§(§6L§.§'u§);
      }
   }
}
