package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §4"§.§6!H§;
   import §5X§.§+!#§;
   import §7!0§.§]!e§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §9y§.§8"3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §9!%§ extends §9!;§
   {
      
      private static var §6c§:Class = §#u§;
       
      
      private var §;!O§:§]!e§;
      
      private var §8!2§:Boolean;
      
      public function §9!%§(param1:Boolean = true)
      {
         §>"2§ = true;
         §1"$§ = true;
         super(§1#§.§7!F§,§8"6§.§ K§,§0!g§.§[!y§(§6c§));
         this.§8!2§ = param1;
         this.§;!O§ = new §]!e§();
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         §[S§.getItemByName("Button_SendVerificationEmail").setVisibility(this.§8!2§);
         if(this.§8!2§)
         {
            this.§9!#§();
            this.§;!O§.addEventListener(§6!H§.§''§,this.§%!x§);
            this.§;!O§.addEventListener(§6!H§.§3!b§,this.§;S§);
         }
      }
      
      private function §%!x§(param1:Event) : void
      {
         (§ !g§.§;!'§ as §`Y§).§>";§.closePopup(§1#§.§7!F§);
         (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §,J§());
      }
      
      private function §;S§(param1:Event) : void
      {
         (§ !g§.§;!'§ as §`Y§).§>";§.closePopup(§1#§.§7!F§);
         (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(§8"3§.VERIFICATION_EMAIL_RESEND_ERROR,§^p§.§>F§));
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "VERIFY_CLOSE":
               close();
               break;
            case "SEND_VERIFICATION_EMAIL":
               this.§;!O§.§@9§();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §&$§.§[!1§.updateTextFields(§[S§,"VerifyAccount_Popup");
         if(this.§8!2§)
         {
            this.§9!#§();
         }
      }
      
      override public function dispose() : void
      {
         if(this.§8!2§)
         {
            this.§;!O§.removeEventListener(§6!H§.§''§,this.§%!x§);
            this.§;!O§.removeEventListener(§6!H§.§3!b§,this.§;S§);
         }
         super.dispose();
      }
      
      private function §#I§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §9!#§() : void
      {
         var _loc1_:TextField = §[S§.getItemByName("Button_SendVerificationEmail").mClip.text;
         var _loc2_:MovieClip = §[S§.getItemByName("Button_SendVerificationEmail").mClip.MovieClip_Verification_Underline;
         var _loc3_:MovieClip = §[S§.getItemByName("Button_SendVerificationEmail").mClip.MouseHitArea;
         _loc2_.width = this.§#I§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§45§(_loc1_);
      }
      
      private function §45§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
   }
}
