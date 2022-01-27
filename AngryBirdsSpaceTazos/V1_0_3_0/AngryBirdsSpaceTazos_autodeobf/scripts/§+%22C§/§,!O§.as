package §+"C§
{
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §6!C§.§7[§;
   import §6B§.§?"2§;
   
   public class §,!O§ extends §^"4§
   {
      
      private static var §1" §:Class = §>#§;
       
      
      public function §,!O§()
      {
         §^">§ = true;
         §6"B§ = true;
         super(§?d§.§%";§,§`B§.§-! §,§7[§.§[!n§(§1" §));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"VerificationEmailSent_Popup");
      }
   }
}
