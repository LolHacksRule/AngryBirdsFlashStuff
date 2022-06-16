package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§&%§;
   import §'!j§.Starling;
   import §,!Q§.§6"n§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §1"l§.§`""§;
   import §1#v§.§;!Y§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §>2§.§"§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §?T§ extends §'#J§ implements §%!#§
   {
      
      private static const §`!<§:int = 8;
       
      
      private var §4'§:int;
      
      public function §?T§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§^!^§("1000-3"))
         {
            §[$5§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §[$5§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
         §[$5§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      override protected function setVersion() : void
      {
         §[$5§.setText(§;!Y§.§2#M§,"TextField_Version_Number");
         §[$5§.setText("","TextField_Version_Number_Server");
         §[$5§.setText("User id: " + (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,"TextField_Facebook_User_Id");
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §[$5§.getItemByName("MovieClip_Loading").setVisibility(this.§4'§ != 0);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               §1!L§(§95§.STATE_NAME);
               break;
            case "TERMS_AND_PRIVACY":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.exitFullScreen();
               navigateToURL(new URLRequest(§ #v§.§&$'§ + "?locale=" + §&%§.§,#,§ + "&token=" + § #v§(§ #v§.§1!!§).§]p§.§["D§.accessToken + "&appId=" + § #v§.§>#r§),"_blank");
               break;
            case "EASTER_EGG_3":
               §[$5§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§#y§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§4'§ = §`!<§;
         (§7n§.§6#K§ as §"#1§).§%"5§(§7!J§.§&[§);
         super.activateLevelEngine();
         §[$5§.deactivateView();
         §7n§.§6#K§.setVisible(false);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§4'§ > 0)
         {
            --this.§4'§;
            if(this.§4'§ == 0)
            {
               §[$5§.activateView();
               §7n§.§6#K§.setVisible(true);
               Starling.§>x§.color = 9752286;
            }
         }
      }
   }
}
