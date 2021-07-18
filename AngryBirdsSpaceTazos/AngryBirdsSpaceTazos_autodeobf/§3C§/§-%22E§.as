package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §4"§.PopupClosedEvent;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import flash.display.MovieClip;
   
   public class §-"E§ extends §9!;§
   {
      
      private static var §=!'§:Class = §+3§;
       
      
      private var §%!#§:MovieClip;
      
      private var §"_§:§5!9§;
      
      public function §-"E§()
      {
         §>"2§ = true;
         §1"$§ = true;
         super(§1#§.§,!"§,§8"6§.§ K§,§0!g§.§[!y§(§=!'§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      private function §2G§() : void
      {
         this.§%!#§ = §[S§.getItemByName("MovieClip_DiscSun").mClip;
         if(this.§%!#§)
         {
            this.§"_§ = §!D§.§[!1§.§1"<§(this.§%!#§,{"rotation":360},{"rotation":0},5);
            this.§"_§.onComplete = this.§2G§;
            this.§"_§.play();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
               dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§`T§));
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§2G§();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§"_§)
         {
            this.§"_§.stop();
            this.§"_§ = null;
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §&$§.§[!1§.updateTextFields(§[S§,"CodeSubmissionSuccessful_Popup");
      }
   }
}
