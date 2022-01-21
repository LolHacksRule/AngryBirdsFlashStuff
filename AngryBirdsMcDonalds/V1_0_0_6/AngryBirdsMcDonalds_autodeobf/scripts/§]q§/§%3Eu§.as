package §]q§
{
   import § e§.§&!&§;
   import §"f§.§%1§;
   import §#M§.§+!Z§;
   import §,§.§6!,§;
   import §0;§.§3=§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §7_§.§^d§;
   import §8<§.§with§;
   import §<!R§.HighscoreSidebar;
   import §[l§.§ A§;
   import §[l§.§,Q§;
   import §[l§.§26§;
   
   public class §>u§ extends Popup
   {
      
      private static var §,c§:Class = §1!c§;
       
      
      private var §=!P§:StatePopupManager;
      
      private var §,i§:Boolean = false;
      
      private var §43§:§1!b§;
      
      public function §>u§(param1:§3=§, param2:StatePopupManager, param3:§1!b§)
      {
         super(§with§.§ !0§(§,c§),param1);
         §"]§ = param1;
         this.§=!P§ = param2;
         this.§43§ = param3;
         this.§=!P§.addEventListener(§6!,§.§;I§,this.onUiInteraction);
         §&!&§.§+j§.updateTextFields(§"]§,"ServerError_Popup");
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
            case "BUTTON_CLOSE":
               this.preClose();
               this.§,i§ = true;
         }
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         §,Q§.sHighscoreSidebar.§7F§();
         if(this.§,i§)
         {
            while(§+$§.§+!l§)
            {
               §+$§.§[2§();
            }
            _loc1_ = 0;
            while(_loc1_ < §6l§.§#!Y§.length)
            {
               if(§6l§.§#!Y§[_loc1_] is Popup)
               {
                  §6l§.§#!Y§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§,i§ = false;
            §+!Z§.§2!§();
            §+!Z§.§?!<§.§,!7§(false);
            §+!Z§.§?!<§.§#!Z§(false);
            §26§.§`!,§ = § A§.§!_§;
            §^d§.§^N§(§^d§.§?;§(HighscoreSidebar.§^7§[2]));
            § 4§.§6q§.§]!D§(§26§.§!_§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         §,Q§.sHighscoreSidebar.§7F§();
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
         this.§=!P§.removeEventListener(§6!,§.§;I§,this.onUiInteraction);
         super.deActivate();
      }
      
      override public function updateTextFields() : void
      {
         §&!&§.§+j§.updateTextFields(§"]§,"ServerError_Popup");
      }
   }
}
