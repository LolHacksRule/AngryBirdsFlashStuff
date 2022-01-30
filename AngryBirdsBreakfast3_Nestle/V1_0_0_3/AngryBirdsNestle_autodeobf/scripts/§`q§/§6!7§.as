package §`q§
{
   import §-!F§.§[!Q§;
   import §=!7§.§%!%§;
   import §@f§.§&!"§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   
   public class §6!7§ extends §'!O§
   {
      
      private static var §1!Z§:Class = § r§;
       
      
      public function §6!7§()
      {
         §=!c§ = true;
         §1!b§ = true;
         §0!2§ = true;
         super(§%!T§.§[!N§,§#!q§.DEFAULT,this.§@A§());
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§1!Z§);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
         }
      }
      
      override public function updateTextFields() : void
      {
         §[!Q§.§=J§.updateTextFields(§#t§,"Error_Popup");
      }
   }
}
