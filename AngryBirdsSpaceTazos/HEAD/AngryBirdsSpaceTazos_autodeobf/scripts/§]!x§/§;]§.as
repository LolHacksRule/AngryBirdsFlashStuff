package §]!x§
{
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §4u§.§!H§;
   import §7!6§.§@Y§;
   import §`!w§.§?!U§;
   
   public class §;]§ extends §5!O§
   {
      
      private static var §?D§:Class = §%"F§;
       
      
      public function §;]§()
      {
         §<"5§ = true;
         §8!X§ = true;
         super(§>§.§7!h§,§'!h§.§3"4§,§?!U§.§3!c§(§?D§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
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
         §!H§.§3R§.updateTextFields(§3!a§,"VerificationEmailSent_Popup");
      }
   }
}
