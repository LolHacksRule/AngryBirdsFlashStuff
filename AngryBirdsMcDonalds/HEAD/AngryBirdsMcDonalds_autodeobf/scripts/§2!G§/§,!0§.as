package §2!G§
{
   import §#!1§.§!!X§;
   import §'+§.§<@§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §4!A§.§7#§;
   import §5!W§.§,!B§;
   import §5!W§.§[Z§;
   import §5!W§.§`X§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §9s§.§!!`§;
   import §@-§.§[y§;
   
   public class §,!0§ extends Popup
   {
      
      private static var §&+§:Class = §"w§;
       
      
      private var §;5§:StatePopupManager;
      
      private var §2Y§:Boolean = false;
      
      private var §%!g§:§ for§;
      
      public function §,!0§(param1:§%g§, param2:StatePopupManager, param3:§ for§)
      {
         super(§<@§.§,'§(§&+§),param1);
         §7Y§ = param1;
         this.§;5§ = param2;
         this.§%!g§ = param3;
         this.§;5§.addEventListener(§!!`§.§5!R§,this.onUiInteraction);
         §!!X§.§5!!§.updateTextFields(§7Y§,"ServerError_Popup");
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
            case "BUTTON_CLOSE":
               this.preClose();
               this.§2Y§ = true;
         }
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         §`X§.sHighscoreSidebar.§,!q§();
         if(this.§2Y§)
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
            this.§2Y§ = false;
            §2M§.§[,§();
            §2M§.§1?§.§9!=§(false);
            §2M§.§1?§.§4<§(false);
            §[Z§.§&l§ = §,!B§.§>d§;
            §;_§.§;!M§(§;_§.§6D§(HighscoreSidebar.§#!#§[2]));
            §3![§.§+w§.§^?§(§[Z§.§>d§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         §`X§.sHighscoreSidebar.§,!q§();
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
         super.deActivate();
      }
      
      override public function updateTextFields() : void
      {
         §!!X§.§5!!§.updateTextFields(§7Y§,"ServerError_Popup");
      }
   }
}
