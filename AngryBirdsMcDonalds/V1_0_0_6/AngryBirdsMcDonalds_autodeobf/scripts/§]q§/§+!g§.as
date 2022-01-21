package §]q§
{
   import § e§.§&!&§;
   import §"f§.§%1§;
   import §,§.§6!,§;
   import §0;§.§3=§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §8<§.§with§;
   import §[l§.§,Q§;
   
   public class §+!g§ extends Popup
   {
      
      private static var §,c§:Class = §!!!§;
       
      
      private var §=!P§:StatePopupManager;
      
      private var §43§:§1!b§;
      
      private var §%j§:String = "";
      
      public function §+!g§(param1:§3=§, param2:StatePopupManager, param3:§1!b§, param4:String)
      {
         super(§with§.§ !0§(§,c§),param1);
         §"]§ = param1;
         this.§=!P§ = param2;
         this.§43§ = param3;
         this.§%j§ = param4;
         this.§=!P§.addEventListener(§6!,§.§;I§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§6!,§) : void
      {
         this.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
         this.§43§.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         switch(param2)
         {
            case "BUTTON_OK":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         if(this.§%j§ != "")
         {
            §"]§.getItemByName("TextField_CodeActivatedError").setVisibility(true);
            §"]§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(false);
            §"]§.getItemByName("TextField_CodeActivated").setVisibility(false);
            §&!&§.§+j§.§,^§(§ 4§.§6q§.§9!B§().mUIView,"Error_Messages","TextField_CodeActivatedError",this.§%j§);
         }
         else
         {
            §"]§.getItemByName("TextField_CodeActivatedError").setVisibility(false);
            §"]§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(true);
            §"]§.getItemByName("TextField_CodeActivated").setVisibility(true);
            §&!&§.§+j§.updateTextFields(§"]§,"CodeActivated_Popup");
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §,Q§.sHighscoreSidebar.enableLogOutButton(false);
         §,Q§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§%1§.§=!1§);
            §<!J§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§%1§.§&!P§);
            §<!J§.play();
         }
      }
      
      override public function deActivate() : void
      {
         §,Q§.sHighscoreSidebar.enableLogOutButton(true);
         §,Q§.sHighscoreSidebar.enableCreditsButton(true);
         this.§=!P§.removeEventListener(§6!,§.§;I§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
