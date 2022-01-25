package §'!3§
{
   import §'"!§.§+§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §4!i§.§@"#§;
   
   public class §!i§ extends §;!o§
   {
      
      private static var §9P§:Class = § !m§;
       
      
      public function §!i§()
      {
         §9p§ = true;
         §]G§ = true;
         §^J§ = true;
         super(§`!t§.§9r§,§4z§.DEFAULT,this.§'!,§());
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§9P§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
         }
      }
      
      override public function updateTextFields() : void
      {
         §@"#§.§,2§.updateTextFields(§29§,"Error_Popup");
      }
   }
}
