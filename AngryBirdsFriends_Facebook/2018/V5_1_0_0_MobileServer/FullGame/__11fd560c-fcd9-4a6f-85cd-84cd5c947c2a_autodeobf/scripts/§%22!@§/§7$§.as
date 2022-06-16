package §"!@§
{
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §2G§.§ #$§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §?"e§.Starling;
   import §@!M§.§!"p§;
   import §@0§.§2$2§;
   import §]!6§.§6Y§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §7$§ extends § !K§ implements §8#§
   {
      
      private static const §0!>§:int = 8;
       
      
      private var §?7§:int;
      
      public function §7$§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§6"'§);
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§44§("1000-3"))
         {
            §`!H§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §`!H§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
         §`!H§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      override protected function setVersion() : void
      {
         §`!H§.setText(§6Y§.§2!§,"TextField_Version_Number");
         §`!H§.setText("","TextField_Version_Number_Server");
         §`!H§.setText("User id: " + (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,"TextField_Facebook_User_Id");
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §`!H§.getItemByName("MovieClip_Loading").setVisibility(this.§?7§ != 0);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               §1"h§(§>"c§.STATE_NAME);
               break;
            case "TERMS_AND_PRIVACY":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.exitFullScreen();
               navigateToURL(new URLRequest(§,A§.§6#w§ + "?locale=" + § #$§.§3<§ + "&token=" + §,A§(§,A§.§2#O§).§<u§.§@!o§.accessToken + "&appId=" + §,A§.§ !;§),"_blank");
               break;
            case "EASTER_EGG_3":
               §`!H§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§8$,§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§?7§ = §0!>§;
         (§3#U§.§#$4§ as §2$2§).§2#@§(§>f§.§="X§);
         super.activateLevelEngine();
         §`!H§.deactivateView();
         §3#U§.§#$4§.§;"?§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§?7§ > 0)
         {
            --this.§?7§;
            if(this.§?7§ == 0)
            {
               §`!H§.activateView();
               §3#U§.§#$4§.§;"?§(true);
               Starling.§@#K§.color = 9752286;
            }
         }
      }
   }
}
