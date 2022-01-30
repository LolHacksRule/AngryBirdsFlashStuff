package §@!l§
{
   import § !Q§.§=!3§;
   import §!!&§.§`!$§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §<!0§.§'!%§;
   
   public class §@H§ extends §-"+§
   {
      
      private static var §2c§:Class = §%!a§;
       
      
      public function §@H§()
      {
         §@_§ = true;
         §!"6§ = true;
         §>,§ = true;
         super(§>!&§.§0?§,§4!f§.DEFAULT,this.§[x§());
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§2c§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
         }
      }
      
      override public function updateTextFields() : void
      {
         §`!$§.§>!P§.updateTextFields(§-"1§,"Error_Popup");
      }
   }
}
