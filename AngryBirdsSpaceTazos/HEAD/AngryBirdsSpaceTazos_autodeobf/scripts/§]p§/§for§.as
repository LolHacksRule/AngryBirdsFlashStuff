package §]p§
{
   import §%!P§.ServerCallEvent;
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §1!K§.§2!h§;
   import §4u§.§!H§;
   import §7!6§.§@Y§;
   import §="<§.§#`§;
   import §]!x§.§&A§;
   import §]!x§.§5!O§;
   import §]!x§.§5i§;
   import §`!w§.§?!U§;
   import flash.events.MouseEvent;
   
   public class §for§ extends §5!O§
   {
      
      private static var §?Y§:Class = §]!-§;
       
      
      private var §!!E§:§!!S§;
      
      public function §for§()
      {
         §<"5§ = true;
         §8!X§ = true;
         super(§>§.§,!i§,§'!h§.§3"4§,§?!U§.§3!c§(§?Y§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§!!E§ = new §!!S§();
         this.§!!E§.addEventListener(ServerCallEvent.§'!x§,this.§1d§);
         this.§!!E§.addEventListener(ServerCallEvent.§9v§,this.§ !q§);
         (§3!a§.getItemByName("TextField_UserNameFieldForgotPassword") as §#`§).§';§.maxChars = §2!h§.§7!B§;
         (§3!a§.getItemByName("TextField_UserNameFieldForgotPassword") as §#`§).§';§.restrict = §2!h§.§'!-§;
         (§3!a§.getItemByName("TextField_UserNameFieldForgotPassword") as §#`§).§';§.addEventListener(MouseEvent.CLICK,this.§<!$§);
      }
      
      private function §<!$§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §3!a§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §3!a§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
         }
      }
      
      private function §1d§(param1:ServerCallEvent) : void
      {
         close();
         §2&§.§6o§.§^7§.openPopup(new §5i§());
      }
      
      private function § !q§(param1:ServerCallEvent) : void
      {
         this.§4" §(param1.text);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         switch(param2)
         {
            case "SEND_PASSWORD":
               _loc4_ = (_loc4_ = (§3!a§.getItemByName("TextField_UserNameFieldForgotPassword") as §#`§).§%!E§()).toLowerCase();
               if(_loc5_ = this.§!!E§.§<O§(_loc4_))
               {
                  this.§4" §(_loc5_);
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
         this.§!!E§.removeEventListener(ServerCallEvent.§'!x§,this.§1d§);
         this.§!!E§.removeEventListener(ServerCallEvent.§9v§,this.§ !q§);
         this.§!!E§.dispose();
         this.§!!E§ = null;
         (§3!a§.getItemByName("TextField_UserNameFieldForgotPassword") as §#`§).§';§.removeEventListener(MouseEvent.CLICK,this.§<!$§);
      }
      
      private function §4" §(param1:String) : void
      {
         §3!a§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         §2&§.§6o§.§^7§.openPopup(new §&A§(param1,§&A§.§?!d§));
      }
      
      override public function updateTextFields() : void
      {
         §!H§.§3R§.updateTextFields(§3!a§,"ForgotPassword_Popup");
      }
   }
}
