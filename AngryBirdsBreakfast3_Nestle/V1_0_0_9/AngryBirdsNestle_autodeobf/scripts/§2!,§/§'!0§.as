package §2!,§
{
   import §!R§.§#!L§;
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §8!$§.§1b§;
   import §`!s§.§^2§;
   
   public class §'!0§ extends §,!#§
   {
      
      private static var §^&§:Class = §<!#§;
       
      
      public function §'!0§()
      {
         §&5§ = true;
         §2L§ = true;
         §[!k§ = true;
         super(§8!f§.§3!G§,§finally§.DEFAULT,this.§';§());
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§^&§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
         }
      }
      
      override public function updateTextFields() : void
      {
         §^2§.§&!;§.updateTextFields(§;"#§,"Error_Popup");
      }
   }
}
