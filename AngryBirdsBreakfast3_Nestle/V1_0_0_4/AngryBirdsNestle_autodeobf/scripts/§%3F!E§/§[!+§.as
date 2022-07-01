package §?!E§
{
   import §'<§.§=!o§;
   import §5!7§.§<"2§;
   import §;!b§.§%>§;
   import §`!_§.ColorFadeLayerEvent;
   
   public class §[!+§ extends §9!Q§
   {
      
      public static const §+B§:String = "LevelLoadCreditsCustom";
       
      
      public function §[!+§(param1:§=!o§, param2:§%>§, param3:§<"2§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§;!m§(true);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§!!g§(false);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§!!g§(true);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §[!x§.removeEventListener(ColorFadeLayerEvent.§"!^§,this.onFadeComplete);
         §0!w§(§2S§.§+B§);
      }
   }
}
