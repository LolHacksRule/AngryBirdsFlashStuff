package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §#"3§.§4!h§;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §-"S§.§>#G§;
   import §4$A§.§=$5§;
   import §<8§.§8!g§;
   import §>#Y§.§2"%§;
   import §?$#§.§^#j§;
   import §?_§.§9! §;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §;r§ extends §+!Y§ implements §=$5§
   {
      
      private static const §^A§:int = 8;
       
      
      private var §1!B§:int;
      
      public function §;r§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§3"^§("1000-3"))
         {
            §@!D§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §@!D§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
         §@!D§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      override protected function setVersion() : void
      {
         §@!D§.setText(§4!h§.§<"6§,"TextField_Version_Number");
         §@!D§.setText("","TextField_Version_Number_Server");
         §@!D§.setText("User id: " + (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,"TextField_Facebook_User_Id");
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §@!D§.getItemByName("MovieClip_Loading").setVisibility(this.§1!B§ != 0);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               §%!?§(§[$2§.STATE_NAME);
               break;
            case "TERMS_AND_PRIVACY":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.exitFullScreen();
               navigateToURL(new URLRequest(§^"a§.§+"A§ + "?locale=" + §2"%§.§`z§ + "&token=" + §^"a§(§^"a§.§9!h§).§9$0§.§0"6§.accessToken + "&appId=" + §^"a§.§-!"§),"_blank");
               break;
            case "EASTER_EGG_3":
               §@!D§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§9#0§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§1!B§ = §^A§;
         (§+!p§.§`?§ as §^#j§).§1[§(§ ^§.§,!t§);
         super.activateLevelEngine();
         §@!D§.deactivateView();
         §+!p§.§`?§.setVisible(false);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§1!B§ > 0)
         {
            --this.§1!B§;
            if(this.§1!B§ == 0)
            {
               §@!D§.activateView();
               §+!p§.§`?§.setVisible(true);
               Starling.§%!q§.color = 9752286;
            }
         }
      }
   }
}
