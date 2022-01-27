package §1!]§
{
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§^4§;
   import §4!t§.§95§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §]!M§.PopupClosedEvent;
   import flash.display.MovieClip;
   
   public class §@R§ extends §%"%§
   {
      
      private static var §7s§:Class = §>V§;
       
      
      private var §4E§:MovieClip;
      
      private var §5"'§:§8"+§;
      
      public function §@R§()
      {
         §&"<§ = true;
         § !z§ = true;
         super(§&r§.§2B§,§3o§.§0!n§,§=Q§.§%!g§(§7s§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      private function §#e§() : void
      {
         this.§4E§ = §&#§.getItemByName("MovieClip_DiscSun").mClip;
         if(this.§4E§)
         {
            this.§5"'§ = §<K§.§<"B§.§`!c§(this.§4E§,{"rotation":360},{"rotation":0},5);
            this.§5"'§.onComplete = this.§#e§;
            this.§5"'§.play();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
               dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§2!J§));
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§#e§();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§5"'§)
         {
            this.§5"'§.stop();
            this.§5"'§ = null;
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §^4§.§<"B§.updateTextFields(§&#§,"CodeSubmissionSuccessful_Popup");
      }
   }
}
