package §%9§
{
   import §"I§.§ !R§;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §[!b§.§'!R§;
   import §`6§.§!!]§;
   
   public class §9k§ extends §<a§
   {
      
      private static var §!!@§:Class = §+§;
       
      
      public function §9k§()
      {
         §?!^§ = true;
         §+!X§ = true;
         §8!^§ = true;
         super(§9r§.§"F§,§>!H§.DEFAULT,this.§^!!§());
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§!!@§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
         }
      }
      
      override public function updateTextFields() : void
      {
         §!!]§.§?!+§.updateTextFields(§0+§,"Error_Popup");
      }
   }
}
