package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §%f§.§[@§;
   import §;4§.§%@§;
   import §>P§.§,3§;
   
   public class §#V§ extends §1>§
   {
      
      private static var §1r§:Class = §;!%§;
       
      
      public function §#V§()
      {
         §2!b§ = true;
         §@n§ = true;
         §!d§ = true;
         super(§4&§.§;!C§,§ !+§.DEFAULT,this.§'!N§());
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§1r§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
         }
      }
      
      override public function updateTextFields() : void
      {
         §[@§.§"e§.updateTextFields(§@!U§,"Error_Popup");
      }
   }
}
