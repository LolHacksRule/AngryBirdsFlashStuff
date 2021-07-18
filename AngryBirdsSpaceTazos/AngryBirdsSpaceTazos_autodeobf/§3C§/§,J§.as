package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   
   public class §,J§ extends §9!;§
   {
      
      private static var §8d§:Class = §1+§;
       
      
      public function §,J§()
      {
         §>"2§ = true;
         §1"$§ = true;
         super(§1#§.§1K§,§8"6§.§ K§,§0!g§.§[!y§(§8d§));
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
         §&$§.§[!1§.updateTextFields(§[S§,"VerificationEmailSent_Popup");
      }
   }
}
