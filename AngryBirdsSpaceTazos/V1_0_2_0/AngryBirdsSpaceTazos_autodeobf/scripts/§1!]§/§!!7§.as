package §1!]§
{
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§^4§;
   import §4!t§.§95§;
   
   public class §!!7§ extends §%"%§
   {
      
      private static var §[@§:Class = §^y§;
       
      
      public function §!!7§()
      {
         §&"<§ = true;
         § !z§ = true;
         super(§&r§.§"#§,§3o§.§0!n§,§=Q§.§%!g§(§[@§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
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
         §^4§.§<"B§.updateTextFields(§&#§,"PasswordResetEmailSent_Popup");
      }
   }
}
