package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   
   public class §1!x§ extends §9!;§
   {
      
      private static var § "0§:Class = §3!9§;
       
      
      public function §1!x§()
      {
         §>"2§ = true;
         §1"$§ = true;
         super(§1#§.§1K§,§8"6§.§ K§,§0!g§.§[!y§(§ "0§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
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
         §&$§.§[!1§.updateTextFields(§[S§,"PasswordResetEmailSent_Popup");
      }
   }
}
