package §^!V§
{
   import §"%§.§,!n§;
   import §+-§.§3!5§;
   import §2!6§.§^"§;
   import §4%§.§%0§;
   import §4%§.§,b§;
   import §4%§.§9!Z§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=<§.§ !Y§;
   import §@`§.§>!S§;
   import §]! §.HighscoreSidebar;
   
   public class §=W§ extends Popup
   {
      
      private static var §0P§:Class = §>!X§;
       
      
      private var §3`§:StatePopupManager;
      
      private var §,-§:Boolean = false;
      
      private var §-!6§:§ !"§;
      
      public function §=W§(param1:§>!S§, param2:StatePopupManager, param3:§ !"§)
      {
         super(§ !Y§.§^t§(§0P§),param1);
         §]E§ = param1;
         this.§3`§ = param2;
         this.§-!6§ = param3;
         this.§3`§.addEventListener(§^"§.§'!2§,this.onUiInteraction);
         §[!<§.§'!S§.updateTextFields(§]E§,"ServerError_Popup");
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
            case "BUTTON_CLOSE":
               this.preClose();
               this.§,-§ = true;
         }
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         §%0§.sHighscoreSidebar.§6!m§();
         if(this.§,-§)
         {
            while(§^!h§.§=!R§)
            {
               §^!h§.§9!e§();
            }
            _loc1_ = 0;
            while(_loc1_ < §^!j§.§2M§.length)
            {
               if(§^!j§.§2M§[_loc1_] is Popup)
               {
                  §^!j§.§2M§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§,-§ = false;
            §=!@§.§%!&§();
            §=!@§.§>!T§.§>h§(false);
            §=!@§.§>!T§.§8!2§(false);
            §,b§.§<A§ = §9!Z§.§4D§;
            §3!5§.§[C§(§3!5§.§&!2§(HighscoreSidebar.§!!E§[2]));
            §'j§.§7!$§.§0! §(§,b§.§4D§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
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
         §%0§.sHighscoreSidebar.§6!m§();
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
         this.§3`§.removeEventListener(§^"§.§'!2§,this.onUiInteraction);
         super.deActivate();
      }
      
      override public function updateTextFields() : void
      {
         §[!<§.§'!S§.updateTextFields(§]E§,"ServerError_Popup");
      }
   }
}
