package §+"C§
{
   import §!!r§.§3,§;
   import §&e§.§<x§;
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §1!C§.§'!N§;
   import §6!C§.§7[§;
   import §6B§.§?"2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §3'§ extends §^"4§
   {
      
      private static var §&!l§:Class = §#U§;
       
      
      private var §0W§:§3,§;
      
      private var §^!c§:Boolean;
      
      public function §3'§(param1:Boolean = true)
      {
         §^">§ = true;
         §6"B§ = true;
         super(§?d§.§-!3§,§`B§.§-! §,§7[§.§[!n§(§&!l§));
         this.§^!c§ = param1;
         this.§0W§ = new §3,§();
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         § 1§.getItemByName("Button_SendVerificationEmail").setVisibility(this.§^!c§);
         if(this.§^!c§)
         {
            this.§[!d§();
            this.§0W§.addEventListener(§'!N§.§1k§,this.§-"%§);
            this.§0W§.addEventListener(§'!N§.§?!>§,this.§]!m§);
         }
      }
      
      private function §-"%§(param1:Event) : void
      {
         (§&"<§.§<!7§ as §["!§).§1"0§.closePopup(§?d§.§-!3§);
         (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §,!O§());
      }
      
      private function §]!m§(param1:Event) : void
      {
         (§&"<§.§<!7§ as §["!§).§1"0§.closePopup(§?d§.§-!3§);
         (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.VERIFICATION_EMAIL_RESEND_ERROR,§["G§.§[!r§));
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "VERIFY_CLOSE":
               close();
               break;
            case "SEND_VERIFICATION_EMAIL":
               this.§0W§.§9!V§();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"VerifyAccount_Popup");
         if(this.§^!c§)
         {
            this.§[!d§();
         }
      }
      
      override public function dispose() : void
      {
         if(this.§^!c§)
         {
            this.§0W§.removeEventListener(§'!N§.§1k§,this.§-"%§);
            this.§0W§.removeEventListener(§'!N§.§?!>§,this.§]!m§);
         }
         super.dispose();
      }
      
      private function §@3§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      public function §[!d§() : void
      {
         var _loc1_:TextField = § 1§.getItemByName("Button_SendVerificationEmail").mClip.text;
         var _loc2_:MovieClip = § 1§.getItemByName("Button_SendVerificationEmail").mClip.MovieClip_Verification_Underline;
         var _loc3_:MovieClip = § 1§.getItemByName("Button_SendVerificationEmail").mClip.MouseHitArea;
         this.§=m§(_loc1_);
         _loc2_.width = this.§@3§(_loc1_);
         _loc3_.width = _loc2_.width;
      }
      
      private function §=m§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
   }
}
