package §1!]§
{
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§^4§;
   import §4!t§.§95§;
   import §4!x§.§+!h§;
   import §5s§.§ !_§;
   import §]!M§.§'`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §^!W§ extends §%"%§
   {
      
      private static var §,Z§:Class = §5"+§;
       
      
      private var §88§:§+!h§;
      
      private var §%7§:Boolean;
      
      public function §^!W§(param1:Boolean = true)
      {
         §&"<§ = true;
         § !z§ = true;
         super(§&r§.§<!&§,§3o§.§0!n§,§=Q§.§%!g§(§,Z§));
         this.§%7§ = param1;
         this.§88§ = new §+!h§();
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         §&#§.getItemByName("Button_SendVerificationEmail").setVisibility(this.§%7§);
         if(this.§%7§)
         {
            this.§=",§();
            this.§88§.addEventListener(§'`§.§2! §,this.§'"3§);
            this.§88§.addEventListener(§'`§.§8!r§,this.§8!%§);
         }
      }
      
      private function §'"3§(param1:Event) : void
      {
         (§&!h§.§ u§ as §^"=§).§-"F§.closePopup(§&r§.§<!&§);
         (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §;!I§());
      }
      
      private function §8!%§(param1:Event) : void
      {
         (§&!h§.§ u§ as §^"=§).§-"F§.closePopup(§&r§.§<!&§);
         (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.VERIFICATION_EMAIL_RESEND_ERROR,§,!_§.§;V§));
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "VERIFY_CLOSE":
               close();
               break;
            case "SEND_VERIFICATION_EMAIL":
               this.§88§.§2"'§();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §^4§.§<"B§.updateTextFields(§&#§,"VerifyAccount_Popup");
         if(this.§%7§)
         {
            this.§=",§();
         }
      }
      
      override public function dispose() : void
      {
         if(this.§%7§)
         {
            this.§88§.removeEventListener(§'`§.§2! §,this.§'"3§);
            this.§88§.removeEventListener(§'`§.§8!r§,this.§8!%§);
         }
         super.dispose();
      }
      
      private function §3!M§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §=",§() : void
      {
         var _loc1_:TextField = §&#§.getItemByName("Button_SendVerificationEmail").mClip.text;
         var _loc2_:MovieClip = §&#§.getItemByName("Button_SendVerificationEmail").mClip.MovieClip_Verification_Underline;
         var _loc3_:MovieClip = §&#§.getItemByName("Button_SendVerificationEmail").mClip.MouseHitArea;
         _loc2_.width = this.§3!M§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§=3§(_loc1_);
      }
      
      private function §=3§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
   }
}
