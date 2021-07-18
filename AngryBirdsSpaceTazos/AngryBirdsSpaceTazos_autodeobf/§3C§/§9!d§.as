package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §5X§.§+!#§;
   import §7!0§.§3!d§;
   import §7!0§.§8!B§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§&!>§;
   import §<"8§.§6!c§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §9!d§ extends §9!;§
   {
      
      private static var §5""§:Class = §9![§;
       
      
      private var §94§:String = "";
      
      private var §]"C§:String = "";
      
      private var §+"<§:§8!B§;
      
      public function §9!d§()
      {
         §>"2§ = true;
         §1"$§ = true;
         super(§1#§.§,!"§,§8"6§.§ K§,§0!g§.§[!y§(§5""§));
         this.§+"<§ = new §8!B§();
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§;"E§();
         (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.maxChars = 12;
         this.§+"<§.addEventListener(§3!d§.§+T§,this.§1" §);
         this.§+"<§.addEventListener(§3!d§.§!e§,this.§?!3§);
         this.§+"<§.addEventListener(§3!d§.§-l§,this.§21§);
         this.§+"<§.addEventListener(§3!d§.§9!v§,this.§%b§);
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
         §3!+§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "CLOSE":
               close();
               break;
            case "SUBMIT_CODE":
               _loc4_ = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text;
               this.§+"<§.§6!L§(_loc4_);
               break;
            case "CODE_FAQ":
               §6!c§.§?!6§("displayFAQ");
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§+"<§.removeEventListener(§3!d§.§+T§,this.§1" §);
         this.§+"<§.removeEventListener(§3!d§.§!e§,this.§?!3§);
         this.§+"<§.removeEventListener(§3!d§.§-l§,this.§21§);
         this.§+"<§.removeEventListener(§3!d§.§9!v§,this.§%b§);
         §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         if(this.§]"C§ == this.§94§)
         {
            this.§]"C§ = "";
         }
         §&$§.§[!1§.updateTextFields(§[S§,"EnterCode_Popup");
         if(!(§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
         }
         this.§94§ = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text;
         this.§;"E§();
      }
      
      private function §6P§(param1:String) : void
      {
         this.§]"C§ = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text;
         (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text = param1;
         if(param1 != "")
         {
            §[S§.setText(param1,"TextField_TypeCodeHere");
            (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.setSelection(0,param1.length);
            (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
         }
      }
      
      private function §1" §(param1:§3!d§) : void
      {
         dispatchEvent(new §3!d§(§3!d§.§+T§));
         close();
      }
      
      private function §?!3§(param1:§3!d§) : void
      {
         if(§&$§.§[!1§.§^!2§() == "en")
         {
            this.§6P§("Code already used");
         }
         else
         {
            this.§6P§("Código ya utilizado");
         }
      }
      
      private function §21§(param1:§3!d§) : void
      {
         if(§&$§.§[!1§.§^!2§() == "en")
         {
            this.§6P§("Incorrect code");
         }
         else
         {
            this.§6P§("Código incorrecto");
         }
      }
      
      private function §%b§(param1:§3!d§) : void
      {
         this.§6P§(this.§94§);
      }
      
      private function § !$§(param1:MouseEvent) : void
      {
         (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
         if(this.§]"C§ == this.§94§ || this.§]"C§ == "Incorrect code" || this.§]"C§ == "Código incorrecto" || this.§]"C§ == "Code already used" || this.§]"C§ == "Código ya utilizado")
         {
            this.§]"C§ = "";
         }
         §[S§.setText(this.§]"C§,"TextField_TypeCodeHere");
      }
      
      private function §#I§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §;"E§() : void
      {
         var _loc1_:TextField = §[S§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §[S§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §[S§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
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
      
      private function §6!h§(param1:MouseEvent) : void
      {
         var _loc2_:String = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§.text;
         var _loc3_:TextField = (§[S§.getItemByName("TextField_TypeCodeHere") as §&!>§).§ !'§;
         if(_loc2_ == "" && param1.target != _loc3_)
         {
            this.§6P§(this.§94§);
         }
      }
   }
}
