package §]!x§
{
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §4u§.§!H§;
   import §7!6§.§@Y§;
   import §8Y§.§,y§;
   import §[z§.§`!C§;
   import §`!w§.§?!U§;
   import §`>§.§>7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §]F§ extends §5!O§
   {
      
      private static var §]!T§:Class = §8]§;
       
      
      private var §"">§:§`!C§;
      
      private var §5"3§:Boolean;
      
      public function §]F§(param1:Boolean = true)
      {
         §<"5§ = true;
         §8!X§ = true;
         super(§>§.§+!V§,§'!h§.§3"4§,§?!U§.§3!c§(§]!T§));
         this.§5"3§ = param1;
         this.§"">§ = new §`!C§();
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         §3!a§.getItemByName("Button_SendVerificationEmail").setVisibility(this.§5"3§);
         if(this.§5"3§)
         {
            this.§ Z§();
            this.§"">§.addEventListener(§,y§.§8"5§,this.§ =§);
            this.§"">§.addEventListener(§,y§.§49§,this.§=!3§);
         }
      }
      
      private function § =§(param1:Event) : void
      {
         (§2&§.§6o§ as §@T§).§^7§.closePopup(§>§.§+!V§);
         (§2&§.§6o§ as §@T§).§^7§.openPopup(new §;]§());
      }
      
      private function §=!3§(param1:Event) : void
      {
         (§2&§.§6o§ as §@T§).§^7§.closePopup(§>§.§+!V§);
         (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.VERIFICATION_EMAIL_RESEND_ERROR,§&A§.§?!d§));
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "VERIFY_CLOSE":
               close();
               break;
            case "SEND_VERIFICATION_EMAIL":
               this.§"">§.§?!v§();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §!H§.§3R§.updateTextFields(§3!a§,"VerifyAccount_Popup");
         if(this.§5"3§)
         {
            this.§ Z§();
         }
      }
      
      override public function dispose() : void
      {
         if(this.§5"3§)
         {
            this.§"">§.removeEventListener(§,y§.§8"5§,this.§ =§);
            this.§"">§.removeEventListener(§,y§.§49§,this.§=!3§);
         }
         super.dispose();
      }
      
      private function §'5§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      public function § Z§() : void
      {
         var _loc1_:TextField = §3!a§.getItemByName("Button_SendVerificationEmail").mClip.text;
         var _loc2_:MovieClip = §3!a§.getItemByName("Button_SendVerificationEmail").mClip.MovieClip_Verification_Underline;
         var _loc3_:MovieClip = §3!a§.getItemByName("Button_SendVerificationEmail").mClip.MouseHitArea;
         this.§-"C§(_loc1_);
         _loc2_.width = this.§'5§(_loc1_);
         _loc3_.width = _loc2_.width;
      }
      
      private function §-"C§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
   }
}
