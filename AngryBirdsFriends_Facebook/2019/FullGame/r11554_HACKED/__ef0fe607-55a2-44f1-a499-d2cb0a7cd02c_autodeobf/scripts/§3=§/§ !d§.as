package §3=§
{
   import § !D§.§4B§;
   import §!§.§="D§;
   import §"$=§.§'![§;
   import §"$=§.§=$&§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §9#K§.§=#f§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §]"'§.§1#"§;
   import §]"P§.Starling;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class § !d§ extends §1U§ implements §="D§
   {
      
      private static const §!",§:int = 8;
       
      
      private var §1!`§:int;
      
      public function § !d§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§!#h§("1000-3"))
         {
            §<"`§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §<"`§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
         §<"`§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      override protected function setVersion() : void
      {
         §<"`§.setText(§=#f§.§;G§,"TextField_Version_Number");
         §<"`§.setText("","TextField_Version_Number_Server");
         §<"`§.setText("User id: " + (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,"TextField_Facebook_User_Id");
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §<"`§.getItemByName("MovieClip_Loading").setVisibility(this.§1!`§ != 0);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               §%D§(§6"H§.STATE_NAME);
               break;
            case "TERMS_AND_PRIVACY":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.exitFullScreen();
               navigateToURL(new URLRequest(§'"a§.§ !f§ + "?locale=" + §1#"§.§<!f§ + "&token=" + §'"a§(§'"a§.§!!8§).§6#X§.§="4§.accessToken + "&appId=" + §'"a§.§;#M§),"_blank");
               break;
            case "EASTER_EGG_3":
               §<"`§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§?!7§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§1!`§ = §!",§;
         (§%"T§.§;`§ as §4B§).§9k§(§=$&§.§2"f§);
         super.activateLevelEngine();
         §<"`§.deactivateView();
         §%"T§.§;`§.setVisible(false);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§1!`§ > 0)
         {
            --this.§1!`§;
            if(this.§1!`§ == 0)
            {
               §<"`§.activateView();
               §%"T§.§;`§.setVisible(true);
               Starling.§3!I§.color = 9752286;
            }
         }
      }
   }
}
