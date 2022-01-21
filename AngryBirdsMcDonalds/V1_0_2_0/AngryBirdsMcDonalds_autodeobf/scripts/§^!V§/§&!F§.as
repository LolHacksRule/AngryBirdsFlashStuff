package §^!V§
{
   import § v§.§!!^§;
   import § v§.§%!^§;
   import §"%§.§,!n§;
   import §+-§.§3!5§;
   import §2!6§.§^"§;
   import §4%§.§%0§;
   import §4%§.§,b§;
   import §4%§.§9!Z§;
   import §5<§.§-!a§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=<§.§ !Y§;
   import §@]§.§?![§;
   import §@`§.§>!S§;
   import §]! §.HighscoreSidebar;
   
   public class §&!F§ extends Popup
   {
      
      private static var §0P§:Class = § i§;
       
      
      private var §3`§:StatePopupManager;
      
      private var §-!6§:§ !"§;
      
      private var § Q§:Boolean = false;
      
      public function §&!F§(param1:§>!S§, param2:StatePopupManager, param3:§ !"§)
      {
         super(§ !Y§.§^t§(§0P§),param1);
         §]E§ = param1;
         this.§3`§ = param2;
         this.§-!6§ = param3;
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
            case "LOGIN_YES":
               this.preClose();
               this.§ Q§ = true;
               break;
            case "LOGIN_NO":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         §[!<§.§'!S§.updateTextFields(§]E§,"ConfirmLogin_Popup");
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§ Q§)
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
            this.§ Q§ = false;
            §-!a§.§2!7§ = true;
            §'j§.§%g§ = new §%!^§("");
            §!!^§.levelProfile = [];
            §!!^§.§,!a§ = new §?![§();
            §9!Z§.§7M§ = true;
            §=!@§.§%!&§();
            §=!@§.§>!T§.§>h§(false);
            §=!@§.§>!T§.§8!2§(false);
            §,b§.§<A§ = §9!Z§.§4D§;
            §3!5§.§[C§(§3!5§.§&!2§(HighscoreSidebar.§!!E§[2]));
            §'j§.§7!$§.§0! §(§,b§.§4D§);
            §%0§.sHighscoreSidebar.reset();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §%0§.sHighscoreSidebar.enableLoginButton(false);
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
         this.§3`§.removeEventListener(§^"§.§'!2§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
