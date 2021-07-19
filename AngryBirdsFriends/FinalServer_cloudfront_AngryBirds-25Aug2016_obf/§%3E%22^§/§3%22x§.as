package §>"^§
{
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §'U§.§]#[§;
   import §'z§.§7!J§;
   import §+!d§.§2![§;
   import §-"i§.§;"§;
   import §-"i§.§^"A§;
   import §0#d§.§<#u§;
   import §3!T§.§3">§;
   import §52§.§#%§;
   import §6!!§.§,_§;
   import §6"r§.§0"<§;
   import §<H§.§1"T§;
   import §?§.§>"$§;
   
   public class §3"x§ extends §,_§
   {
       
      
      public function §3"x§(param1:§0"<§, param2:§#!?§, param3:§7!J§, param4:§,"n§, param5:§]#[§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §@#_§.getItemByName("Button_MightyEagle").setVisibility(false);
         §@#_§.getItemByName("TextField_PowerUpCountME").setVisibility(false);
         §@#_§.getItemByName("PowerUpCountME_BG").setVisibility(false);
      }
      
      override protected function onUIInteraction(param1:§3">§) : void
      {
         switch(param1.eventName)
         {
            case "PAUSE":
               (§>"$§.§3#'§ as §#%§).§4"w§.§4#^§();
         }
         super.onUIInteraction(param1);
      }
      
      override public function adjustTopHudPosition() : void
      {
         if(§2![§.§6b§)
         {
            §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").x = 184;
            §@#_§.getItemByName("Container_PowerUpButtons").x = 184;
         }
         else
         {
            §@#_§.getItemByName("Button_Slingshot").setVisibility(false);
            §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").x = 114;
            §@#_§.getItemByName("Container_PowerUpButtons").x = 114;
         }
      }
      
      override protected function disablePowerupMenu() : void
      {
         super.disablePowerupMenu();
      }
      
      override protected function showScoresForLevel() : void
      {
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§,#I§);
         (§>"$§.§<_§ as §8G§).§&#§.§+#M§();
         (§>"$§.§<_§ as §8G§).§&#§.§"$0§();
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override protected function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function getLevelLoadState() : String
      {
         return §;"§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §^"A§.STATE_NAME;
      }
      
      override protected function showTutorials() : void
      {
         var _loc1_:String = "ALL_TOURNAMENT";
         §1"T§.§4"m§(_loc1_,true);
         §1"T§.showTutorials(true,true);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
