package §-!a§
{
   import §!"0§.§`"F§;
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §+"C§.§0E§;
   import §+"C§.§["G§;
   import §+"C§.§^"4§;
   import §,!7§.§2a§;
   import §5R§.ServerCallEvent;
   import §6!C§.§7[§;
   import §6B§.§?"2§;
   import flash.events.MouseEvent;
   
   public class §32§ extends §^"4§
   {
      
      private static var § b§:Class = §?H§;
       
      
      private var §&0§:§<!z§;
      
      public function §32§()
      {
         §^">§ = true;
         §6"B§ = true;
         super(§?d§.§4!9§,§`B§.§-! §,§7[§.§[!n§(§ b§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§&0§ = new §<!z§();
         this.§&0§.addEventListener(ServerCallEvent.§1"8§,this.§-!!§);
         this.§&0§.addEventListener(ServerCallEvent.§0i§,this.§3"2§);
         (§ 1§.getItemByName("TextField_UserNameFieldForgotPassword") as §2a§).§%!%§.maxChars = §`"F§.§3"C§;
         (§ 1§.getItemByName("TextField_UserNameFieldForgotPassword") as §2a§).§%!%§.restrict = §`"F§.§ !t§;
         (§ 1§.getItemByName("TextField_UserNameFieldForgotPassword") as §2a§).§%!%§.addEventListener(MouseEvent.CLICK,this.§#<§);
      }
      
      private function §#<§(param1:MouseEvent) : void
      {
         if(param1.target.parent == § 1§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            § 1§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
         }
      }
      
      private function §-!!§(param1:ServerCallEvent) : void
      {
         close();
         §&"<§.§<!7§.§1"0§.openPopup(new §0E§());
      }
      
      private function §3"2§(param1:ServerCallEvent) : void
      {
         this.§6N§(param1.text);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         switch(param2)
         {
            case "SEND_PASSWORD":
               _loc4_ = (_loc4_ = (§ 1§.getItemByName("TextField_UserNameFieldForgotPassword") as §2a§).§;!E§()).toLowerCase();
               if(_loc5_ = this.§&0§.§`<§(_loc4_))
               {
                  this.§6N§(_loc5_);
               }
               break;
            case "CANCEL_SEND_PASSWORD":
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      override public function dispose() : void
      {
         this.§&0§.removeEventListener(ServerCallEvent.§1"8§,this.§-!!§);
         this.§&0§.removeEventListener(ServerCallEvent.§0i§,this.§3"2§);
         this.§&0§.dispose();
         this.§&0§ = null;
         (§ 1§.getItemByName("TextField_UserNameFieldForgotPassword") as §2a§).§%!%§.removeEventListener(MouseEvent.CLICK,this.§#<§);
      }
      
      private function §6N§(param1:String) : void
      {
         § 1§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         §&"<§.§<!7§.§1"0§.openPopup(new §["G§(param1,§["G§.§[!r§));
      }
      
      override public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"ForgotPassword_Popup");
      }
   }
}
