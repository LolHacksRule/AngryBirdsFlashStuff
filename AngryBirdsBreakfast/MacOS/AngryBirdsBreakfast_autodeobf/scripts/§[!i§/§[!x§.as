package §[!i§
{
   import §"n§.§!!G§;
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import each.§8!N§;
   
   public class §[!x§ extends §@"§
   {
      
      private static var §3E§:Class = §3!;§;
       
      
      private var §,!#§:Boolean;
      
      public function §[!x§()
      {
         §-!w§ = true;
         §@!X§ = true;
         §0!T§ = true;
         super(§1!<§.§&!_§,§]l§.DEFAULT,this.§`!K§());
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§3E§);
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§,!#§ = false;
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§,!#§ = true;
               close();
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "LOGOUT_NO":
               this.closePressed();
         }
      }
      
      override protected function closePressed() : void
      {
         close();
         §'!c§.§3!f§("Menu_Back");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§,!#§)
         {
            (§6!!§.singleton as §4!=§).§0Q§();
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §!!G§.§2Z§.updateTextFields(§@'§,"Logout_Popup");
      }
   }
}
