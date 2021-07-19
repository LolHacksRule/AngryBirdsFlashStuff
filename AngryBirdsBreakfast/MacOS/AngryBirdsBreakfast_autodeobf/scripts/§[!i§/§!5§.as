package §[!i§
{
   import §,L§.§6!W§;
   import §0"$§.§+!@§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §;!§.§[j§;
   import §;!§.§`B§;
   import §=!L§.§%Z§;
   import §=!L§.§4k§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import each.§8!N§;
   
   public class §!5§ extends §@"§
   {
      
      private static var §4!U§:Class = §2"§;
      
      private static const §9C§:Number = 250;
       
      
      private var §`!Y§:§0]§ = null;
      
      private var §'8§:Number;
      
      private var §&M§:String;
      
      public function §!5§(param1:String)
      {
         §-!w§ = true;
         §@!X§ = false;
         super(§1!<§.§]!p§,§]l§.DEFAULT,this.§`!K§());
         this.§&M§ = param1;
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§4!U§);
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'8§ = §@'§.getItemByName("Container_PauseMenu").x;
         if(this.§&M§)
         {
            (§@'§.getItemByName("TextField_LevelName") as §+!@§).setText(this.§&M§);
         }
         §#u§.cacheAsBitmap = true;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §-!w§ = false;
               close();
               §[j§.§=!<§();
               §6!!§.singleton.§<f§(§[j§.§-!q§);
               break;
            case "RESUME_LEVEL":
               this.closePressed();
               break;
            case "MENU":
               §'!c§.§&j§();
               §6!!§.singleton.§<f§(§`B§.§-!q§);
               §-!w§ = false;
               close();
               break;
            case "MUTE":
               (§6!!§.singleton as §4!=§).§5@§();
               §@'§.getItemByName("MovieClip_SoundOff").mClip.visible = !(§6!!§.singleton as §4!=§).soundsEnabled;
               break;
            case "HELP":
               this.§8<§();
               this.§[P§();
               break;
            case "FULLSCREEN":
               (§6!!§.singleton as §4!=§).§?!l§();
         }
      }
      
      override protected function updateMuteButtonState() : void
      {
         §@'§.getItemByName("MovieClip_SoundOff").mClip.visible = (§6!!§.singleton as §4!=§).soundsEnabled;
      }
      
      override protected function closePressed() : void
      {
         this.§8<§();
      }
      
      protected function §[P§() : void
      {
         var _loc1_:§4k§ = §6!!§.singleton.§6"#§;
         var _loc2_:Vector.<String> = _loc1_.§2s§.getTutorialNamesForMapping(§%Z§.§##§);
         _loc1_.§-z§(_loc2_,true,true,true,true,null,true,true);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §@!X§ = false;
         super.show(param1);
         this.§7L§();
         §@'§.getItemByName("MovieClip_SoundOff").mClip.visible = !(§6!!§.singleton as §4!=§).soundsEnabled;
      }
      
      private function §7L§() : void
      {
         §@'§.getItemByName("Container_PauseMenu").x = this.§'8§ - §9C§;
         this.§3!M§(false);
         if(this.§`!Y§ != null)
         {
            this.§`!Y§.stop();
         }
         this.§`!Y§ = §'^§.§2Z§.§!!f§(§@'§.getItemByName("Container_PauseMenu"),{"x":this.§'8§},null,0.25,§'^§.§"P§);
         this.§`!Y§.onComplete = this.§!!M§;
         this.§`!Y§.play();
      }
      
      private function §!!M§() : void
      {
         this.§3!M§(true);
         this.§1!N§();
      }
      
      private function §3!M§(param1:Boolean) : void
      {
         (§@'§.getItemByName("Button_Resume") as §;§).setEnabled(param1);
         (§@'§.getItemByName("Button_Replay") as §;§).setEnabled(param1);
         (§@'§.getItemByName("Button_Menu") as §;§).setEnabled(param1);
         (§@'§.getItemByName("Button_Help") as §;§).setEnabled(param1);
         (§@'§.getItemByName("Button_FullScreen") as §;§).setEnabled(param1);
         (§@'§.getItemByName("Button_Mute") as §;§).setEnabled(param1);
      }
      
      private function §1!N§() : void
      {
         if(!§&!"§.§1!D§.slingshot.birdsAvailable || !§&!"§.§1!D§.objects.isPigsAlive())
         {
            (§@'§.getItemByName("Button_Help") as §;§).setEnabled(false,true);
            §@'§.getItemByName("Button_Help").mClip.alpha = 0.6;
         }
         else
         {
            (§@'§.getItemByName("Button_Help") as §;§).setEnabled(true,true);
            §@'§.getItemByName("Button_Help").mClip.alpha = 1;
         }
      }
      
      private function §8<§() : void
      {
         if(this.§`!Y§ != null)
         {
            this.§`!Y§.stop();
         }
         hide();
         this.§`!Y§ = §'^§.§2Z§.§!!f§(§@'§.getItemByName("Container_PauseMenu"),{"x":this.§'8§ - §9C§},null,0.2,§'^§.§8H§);
         this.§`!Y§.play();
      }
   }
}
