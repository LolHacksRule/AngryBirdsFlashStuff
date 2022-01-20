package §2!G§
{
   import §#!1§.§!!X§;
   import §'+§.§<@§;
   import §,!H§.§ for§;
   import §4!A§.§7#§;
   import §5!W§.§`X§;
   import §7p§.§%g§;
   import §9s§.§!!`§;
   import §@-§.§[y§;
   
   public class §'!R§ extends Popup
   {
      
      private static var §&+§:Class = §9!D§;
       
      
      private var §;5§:StatePopupManager;
      
      private var §%!g§:§ for§;
      
      private var §'!X§:String = "";
      
      public function §'!R§(param1:§%g§, param2:StatePopupManager, param3:§ for§, param4:String)
      {
         super(§<@§.§,'§(§&+§),param1);
         §7Y§ = param1;
         this.§;5§ = param2;
         this.§%!g§ = param3;
         this.§'!X§ = param4;
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
            case "BUTTON_OK":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         if(this.§'!X§ != "")
         {
            §7Y§.getItemByName("TextField_CodeActivatedError").setVisibility(true);
            §7Y§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(false);
            §7Y§.getItemByName("TextField_CodeActivated").setVisibility(false);
            §!!X§.§5!!§.§1!"§(§3![§.§+w§.§`L§().mUIView,"Error_Messages","TextField_CodeActivatedError",this.§'!X§);
         }
         else
         {
            §7Y§.getItemByName("TextField_CodeActivatedError").setVisibility(false);
            §7Y§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(true);
            §7Y§.getItemByName("TextField_CodeActivated").setVisibility(true);
            §!!X§.§5!!§.updateTextFields(§7Y§,"CodeActivated_Popup");
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §`X§.sHighscoreSidebar.enableLogOutButton(false);
         §`X§.sHighscoreSidebar.enableCreditsButton(false);
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
         §`X§.sHighscoreSidebar.enableLogOutButton(true);
         §`X§.sHighscoreSidebar.enableCreditsButton(true);
         this.§;5§.removeEventListener(§!!`§.§5!R§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
