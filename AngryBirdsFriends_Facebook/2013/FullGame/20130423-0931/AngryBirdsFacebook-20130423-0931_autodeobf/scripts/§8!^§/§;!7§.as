package §8!^§
{
   import §%!I§.§7"1§;
   import §%i§.§0!Y§;
   import §,l§.§#!,§;
   import §0D§.§3!R§;
   import §1!t§.§""B§;
   import §4!<§.§%6§;
   import §5!Y§.§8y§;
   import §5!Y§.§9"6§;
   import §@!"§.§?l§;
   import §^"F§.§!!I§;
   import §^"F§.§4!2§;
   import §`!6§.§>i§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §;!7§ extends §7"1§
   {
       
      
      public function §;!7§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         super(param1,param2);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §2"@§.getItemByName("Container_PowerUpButtons").mClip.alpha = 1;
         §2"@§.getItemByName("Container_PowerUpButtons").setVisibility(true);
         §2"@§.getItemByName("Button_PowerUp5").setVisibility(false);
         §2"@§.getItemByName("PowerUpCount5_BG").setVisibility(false);
         §2"@§.getItemByName("Movieclip_TntSliderBackground").setVisibility(true);
         §2"@§.getItemByName("Button_PowerUp6").setVisibility(false);
         §2"@§.getItemByName("PowerUpCount6_BG").setVisibility(false);
         §2"@§.getItemByName("TextField_PowerUpCount6").setVisibility(false);
      }
      
      override protected function showTutorials() : void
      {
         §8y§.showTutorials(§2"@§,true);
         §8y§.§7"?§(§2"@§,§3!R§.§&"5§.§%!^§.tutorials,true);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§2"@§.getItemByName("Movieclip_Slider") as §0!Y§).mClip.visible = true;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "PAUSE":
               (§?l§.§'h§ as §%6§).§+"3§.§]W§();
               break;
            case "POWERUP5":
               if(§#!,§.§&"5§.§]![§(§4!2§.§%!U§.§1!#§) <= 0)
               {
                  §9"6§.§7!B§(§3!R§.§&"5§.§%!^§.§;[§,"tntdrop0");
                  return;
               }
               break;
         }
         super.uiInteractionHandler(param1,param2,param3);
      }
      
      override public function run(param1:Number) : int
      {
         return super.run(param1);
      }
      
      override public function init() : void
      {
         §>!%§ = true;
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_FacebookLevelPlay[0]);
         §7!k§ = new §>i§(§2"@§);
         §1m§ = (§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).width - 25;
         § "1§ = (§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).x;
         §;"W§ = new §!!I§(§2"@§);
         §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
         § "+§();
      }
      
      override protected function dimPowerUp() : void
      {
         super.dimPowerUp();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override protected function setPowerupVisibility() : void
      {
         §4!2§.§%!U§.§ !T§ = true;
      }
   }
}
