package §+!u§
{
   import §#v§.§#!?§;
   import §%$!§.§%h§;
   import §%$!§.§,"n§;
   import §'"-§.§`j§;
   import §'U§.§]#[§;
   import §'z§.§7!J§;
   import §3!T§.§3">§;
   import §5"$§.§]!m§;
   import §52§.§#%§;
   import §6"r§.§0"<§;
   import §6H§.BrandedShopPopup;
   import §>"^§.§3"x§;
   import §?§.§>"$§;
   
   public class §4"&§ extends §3"x§
   {
       
      
      public function §4"&§(param1:§0"<§, param2:§#!?§, param3:§7!J§, param4:§,"n§, param5:§]#[§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §@#_§.getItemByName("Container_PowerUpButtons").mClip.alpha = 1;
         §@#_§.getItemByName("Container_PowerUpButtons").setVisibility(true);
         §@#_§.getItemByName("Button_PowerUp5").setVisibility(false);
         §@#_§.getItemByName("PowerUpCount5_BG").setVisibility(false);
         §@#_§.getItemByName("Movieclip_TntSliderBackground").setVisibility(false);
         §@#_§.getItemByName("Button_PowerUp6").setVisibility(false);
         §@#_§.getItemByName("PowerUpCount6_BG").setVisibility(false);
         §@#_§.getItemByName("TextField_PowerUpCount6").setVisibility(false);
      }
      
      override protected function onUIInteraction(param1:§3">§) : void
      {
         switch(param1.eventName)
         {
            case "PAUSE":
               (§>"$§.§3#'§ as §#%§).§4"w§.§4#^§();
               break;
            case "POWERUP5":
               if(§%h§.§3!]§.§7#S§(§`j§.§?O§.§"!E§) <= 0)
               {
                  BrandedShopPopup.§<!d§(§]!m§.§3!]§.§,"K§.§=""§,"tntdrop0");
                  return;
               }
               break;
         }
         super.onUIInteraction(param1);
      }
      
      override protected function init() : void
      {
         (§@#_§.getItemByName("Movieclip_Slider") as §0"<§).mClip.visible = true;
         super.init();
      }
      
      override protected function setPowerupVisibility() : void
      {
         §`j§.§?O§.§6!u§ = true;
      }
   }
}
