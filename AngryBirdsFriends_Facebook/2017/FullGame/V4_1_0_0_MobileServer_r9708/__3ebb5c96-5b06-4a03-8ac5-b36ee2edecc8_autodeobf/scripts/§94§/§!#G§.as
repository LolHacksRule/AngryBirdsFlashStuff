package §94§
{
   import §&$!§.§+#!§;
   import §+!C§.§#!L§;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6"r§.§!#A§;
   import §9+§.Starling;
   import §<"1§.§'"S§;
   import §<"p§.§?!T§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §[§.§]"w§;
   import §`!R§.§&"8§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §!#G§ extends §@"X§ implements §]"w§
   {
      
      private static const §@!H§:int = 8;
       
      
      private var §1U§:int;
      
      public function §!#G§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§ #Y§);
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§#!V§("1000-3"))
         {
            §?Q§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §?Q§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
         §?Q§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      override protected function setVersion() : void
      {
         §?Q§.setText(§?!T§.§?!u§,"TextField_Version_Number");
         §?Q§.setText("","TextField_Version_Number_Server");
         §?Q§.setText("User id: " + (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,"TextField_Facebook_User_Id");
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §?Q§.getItemByName("MovieClip_Loading").setVisibility(this.§1U§ != 0);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
               §5"p§(§>!&§.STATE_NAME);
               break;
            case "EASTER_EGG_3":
               §?Q§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§%#k§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§1U§ = §@!H§;
         (§!#A§.§#F§ as §#!L§).§^B§(§]#B§.§-$&§);
         super.activateLevelEngine();
         §?Q§.deactivateView();
         §!#A§.§#F§.§8"d§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§1U§ > 0)
         {
            --this.§1U§;
            if(this.§1U§ == 0)
            {
               §?Q§.activateView();
               §!#A§.§#F§.§8"d§(true);
               Starling.§?$#§.color = 9752286;
            }
         }
      }
   }
}
