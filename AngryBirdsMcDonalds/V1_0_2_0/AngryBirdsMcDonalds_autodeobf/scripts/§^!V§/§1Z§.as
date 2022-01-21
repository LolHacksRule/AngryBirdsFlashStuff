package §^!V§
{
   import §"%§.§,!n§;
   import §2!6§.§^"§;
   import §4%§.§%0§;
   import §6!Q§.§ !"§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=<§.§ !Y§;
   import §@`§.§>!S§;
   
   public class §1Z§ extends Popup
   {
      
      private static var §0P§:Class = §^_§;
       
      
      private var §3`§:StatePopupManager;
      
      private var §-!6§:§ !"§;
      
      private var §=!]§:String = "";
      
      public function §1Z§(param1:§>!S§, param2:StatePopupManager, param3:§ !"§, param4:String)
      {
         super(§ !Y§.§^t§(§0P§),param1);
         §]E§ = param1;
         this.§3`§ = param2;
         this.§-!6§ = param3;
         this.§=!]§ = param4;
         this.§3`§.addEventListener(§^"§.§'!2§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§^"§) : void
      {
         this.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
         this.§-!6§.uiInteractionHandler(param1.§,$§,param1.§[?§,param1.§41§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         switch(param2)
         {
            case "BUTTON_OK":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         if(this.§=!]§ != "")
         {
            §]E§.getItemByName("TextField_CodeActivatedError").setVisibility(true);
            §]E§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(false);
            §]E§.getItemByName("TextField_CodeActivated").setVisibility(false);
            §[!<§.§'!S§.§!W§(§'j§.§7!$§.§7z§().mUIView,"Error_Messages","TextField_CodeActivatedError",this.§=!]§);
         }
         else
         {
            §]E§.getItemByName("TextField_CodeActivatedError").setVisibility(false);
            §]E§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(true);
            §]E§.getItemByName("TextField_CodeActivated").setVisibility(true);
            §[!<§.§'!S§.updateTextFields(§]E§,"CodeActivated_Popup");
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §%0§.sHighscoreSidebar.enableLogOutButton(false);
         §%0§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"!2§.§3d§);
            §?!A§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§?!A§ != null)
            {
               §?!A§.stop();
            }
            §?!A§ = §"!2§.§'!S§.§-!S§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§"!2§.§+!^§);
            §?!A§.play();
         }
      }
      
      override public function deActivate() : void
      {
         §%0§.sHighscoreSidebar.enableLogOutButton(true);
         §%0§.sHighscoreSidebar.enableCreditsButton(true);
         this.§3`§.removeEventListener(§^"§.§'!2§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
