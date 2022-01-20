package §2!G§
{
   import §#!1§.§!!X§;
   import §'+§.§<@§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §0$§.§!t§;
   import §0$§.§8!K§;
   import §0$§.§;L§;
   import §2S§.§6!P§;
   import §4!A§.§7#§;
   import §5!W§.§,!B§;
   import §5!W§.§[Z§;
   import §5!W§.§`X§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §9s§.§!!`§;
   import §=f§.§#!A§;
   import §@!7§.§+!O§;
   import §@-§.§[y§;
   
   public class §5!,§ extends Popup
   {
      
      private static var §&+§:Class = §&g§;
       
      
      private var §;5§:StatePopupManager;
      
      private var §%!g§:§ for§;
      
      private var §5`§:Boolean = false;
      
      public function §5!,§(param1:§%g§, param2:StatePopupManager, param3:§ for§)
      {
         super(§<@§.§,'§(§&+§),param1);
         §7Y§ = param1;
         this.§;5§ = param2;
         this.§%!g§ = param3;
         this.§;5§.addEventListener(§!!`§.§5!R§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§!!`§) : void
      {
         this.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
         this.§%!g§.uiInteractionHandler(param1.§[K§,param1.§3x§,param1.§,a§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§5`§ = true;
               break;
            case "LOGOUT_NO":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         §!!X§.§5!!§.updateTextFields(§7Y§,"Logout_Popup");
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§5`§)
         {
            while(§[!M§.§8!o§)
            {
               §[!M§.§!!-§();
            }
            _loc1_ = 0;
            while(_loc1_ < §-!3§.§^!%§.length)
            {
               if(§-!3§.§^!%§[_loc1_] is Popup)
               {
                  §-!3§.§^!%§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§5`§ = false;
            §+!O§.§=!L§ = true;
            §3![§.§5!6§ = new §;L§("");
            §!t§.levelProfile = [];
            §!t§.§<1§ = new §#!A§();
            §8!K§.§5!!§.§9!I§();
            §2M§.§[,§();
            §2M§.§1?§.§9!=§(false);
            §2M§.§1?§.§4<§(false);
            §[Z§.§&l§ = §,!B§.§>d§;
            §;_§.§;!M§(§;_§.§6D§(HighscoreSidebar.§#!#§[2]));
            §3![§.§+w§.§^?§(§[Z§.§>d§);
            §`X§.sHighscoreSidebar.reset();
            §6!P§.§5!!§.§=0§();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §`X§.sHighscoreSidebar.enableLogOutButton(false);
         §`X§.sHighscoreSidebar.enableCreditsButton(false);
         §`X§.sHighscoreSidebar.enableHelpButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§7#§.§=Y§);
            §]R§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§]R§ != null)
            {
               §]R§.stop();
            }
            §]R§ = §7#§.§5!!§.§30§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§7#§.§4@§);
            §]R§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§;5§.removeEventListener(§!!`§.§5!R§,this.onUiInteraction);
         if(§3![§.§+w§.§5n§() == §,!B§.§>d§)
         {
            §`X§.sHighscoreSidebar.enableCreditsButton(true);
         }
         super.deActivate();
      }
   }
}
