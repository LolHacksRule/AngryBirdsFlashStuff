package §]§
{
   import §!L§.§`#u§;
   import §"#k§.Starling;
   import §#g§.§!P§;
   import §+`§.§%"q§;
   import §,#,§.§%"#§;
   import §3"V§.§ b§;
   import §6"p§.§^"t§;
   import §7"&§.§1k§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class § "i§ extends §[#t§ implements §1k§
   {
      
      private static const §6"=§:int = 8;
       
      
      private var §2!2§:int;
      
      public function § "i§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§`p§("1000-3"))
         {
            §;!w§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §;!w§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
         §;!w§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      override protected function setVersion() : void
      {
         §;!w§.setText(§^"t§.§`!C§,"TextField_Version_Number");
         §;!w§.setText("","TextField_Version_Number_Server");
         §;!w§.setText("User id: " + (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,"TextField_Facebook_User_Id");
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §;!w§.getItemByName("MovieClip_Loading").setVisibility(this.§2!2§ != 0);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               §3#§(§3"E§.STATE_NAME);
               break;
            case "TERMS_AND_PRIVACY":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.exitFullScreen();
               navigateToURL(new URLRequest(§@z§.§-z§ + "?locale=" + §%"#§.§%#G§ + "&token=" + §@z§(§@z§.§ !D§).§ !n§.§@#-§.accessToken + "&appId=" + §@z§.§0"W§),"_blank");
               break;
            case "EASTER_EGG_3":
               §;!w§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§0a§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§2!2§ = §6"=§;
         (§]$?§.§2#§ as §!P§).§8!k§(§?# §.§8#v§);
         super.activateLevelEngine();
         §;!w§.deactivateView();
         §]$?§.§2#§.setVisible(false);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§2!2§ > 0)
         {
            --this.§2!2§;
            if(this.§2!2§ == 0)
            {
               §;!w§.activateView();
               §]$?§.§2#§.setVisible(true);
               Starling.§4$#§.color = 9752286;
            }
         }
      }
   }
}
