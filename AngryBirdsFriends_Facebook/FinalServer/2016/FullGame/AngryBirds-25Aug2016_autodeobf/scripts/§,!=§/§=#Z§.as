package §,!=§
{
   import §!x§.§4"d§;
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §0#d§.§<#u§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §52§.§#%§;
   import §8§.§ ;§;
   import §8§.§#$+§;
   import §8§.§,#`§;
   import §?§.§>"$§;
   import §^a§.Starling;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §=#Z§ extends §"$6§ implements §@#@§
   {
      
      private static const §5!N§:int = 8;
       
      
      private var §<#>§:int;
      
      public function §=#Z§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§4$&§);
         if(!(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§9"C§("1000-3"))
         {
            §!$§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         else
         {
            §!$§.getItemByName("ButtonEasterEgg3").setVisibility(false);
         }
         §!$§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      override protected function setVersion() : void
      {
         §!$§.setText(§4"d§.§>#k§,"TextField_Version_Number");
         §!$§.setText("","TextField_Version_Number_Server");
         §!$§.setText("User id: " + (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,"TextField_Facebook_User_Id");
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§,#`§ = §8G§.§%#S§.§[A§();
         _loc1_.§6x§(§ ;§.§0e§);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§.getItemByName("Button_FullScreen").setVisibility(false);
      }
      
      override protected function readyToShowCredits() : void
      {
         §!$§.getItemByName("MovieClip_Loading").setVisibility(this.§<#>§ != 0);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               §7P§(§[!'§.STATE_NAME);
               break;
            case "EASTER_EGG_3":
               §!$§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§ R§("1000-3");
               break;
            case "APP_ENGINE_BUTTON":
               navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
         }
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
      
      override protected function activateLevelEngine() : void
      {
         this.§<#>§ = §5!N§;
         (§>"$§.§3#'§ as §#%§).§=!f§(§-"R§.§?! §);
         super.activateLevelEngine();
         §!$§.deactivateView();
         §>"$§.§3#'§.§5'§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§<#>§ > 0)
         {
            --this.§<#>§;
            if(this.§<#>§ == 0)
            {
               §!$§.activateView();
               §>"$§.§3#'§.§5'§(true);
               Starling.§<#`§.color = 9752286;
            }
         }
      }
   }
}
