package §+F§
{
   import §&!V§.§=O§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   import §7-§.§[!$§;
   import §8T§.§[!R§;
   import §?I§.§`E§;
   import §`!"§.§;i§;
   
   public class §#,§ extends Popup
   {
      
      private static var §8+§:Class = §3N§;
       
      
      private var §?E§:StatePopupManager;
      
      private var §'A§:§=O§;
      
      private var §9Y§:String = "";
      
      public function §#,§(param1:§"!n§, param2:StatePopupManager, param3:§=O§, param4:String)
      {
         super(§1[§.§4L§(§8+§),param1);
         §<D§ = param1;
         this.§?E§ = param2;
         this.§'A§ = param3;
         this.§9Y§ = param4;
         this.§?E§.addEventListener(§[!R§.§11§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§[!R§) : void
      {
         this.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
         this.§'A§.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         switch(param2)
         {
            case "BUTTON_OK":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         if(this.§9Y§ != "")
         {
            §<D§.getItemByName("TextField_CodeActivatedError").setVisibility(true);
            §<D§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(false);
            §<D§.getItemByName("TextField_CodeActivated").setVisibility(false);
            §`E§.§@!7§.§2l§(§2!M§.§7!F§.§,y§().mUIView,"Error_Messages","TextField_CodeActivatedError",this.§9Y§);
         }
         else
         {
            §<D§.getItemByName("TextField_CodeActivatedError").setVisibility(false);
            §<D§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(true);
            §<D§.getItemByName("TextField_CodeActivated").setVisibility(true);
            §`E§.§@!7§.updateTextFields(§<D§,"CodeActivated_Popup");
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §[!$§.sHighscoreSidebar.enableLogOutButton(false);
         §[!$§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;i§.§<l§);
            §"! §.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;i§.§3C§);
            §"! §.play();
         }
      }
      
      override public function deActivate() : void
      {
         §[!$§.sHighscoreSidebar.enableLogOutButton(true);
         §[!$§.sHighscoreSidebar.enableCreditsButton(true);
         this.§?E§.removeEventListener(§[!R§.§11§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
