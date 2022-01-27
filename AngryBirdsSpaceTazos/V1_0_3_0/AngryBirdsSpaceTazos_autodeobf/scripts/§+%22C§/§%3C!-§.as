package §+"C§
{
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §1!C§.PopupClosedEvent;
   import §6!C§.§7[§;
   import §6B§.§?"2§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import flash.display.MovieClip;
   
   public class §<!-§ extends §^"4§
   {
      
      private static var §#!B§:Class = § "+§;
       
      
      private var §"!G§:MovieClip;
      
      private var §"e§:§15§;
      
      public function §<!-§()
      {
         §^">§ = true;
         §6"B§ = true;
         super(§?d§.§=!7§,§`B§.§-! §,§7[§.§[!n§(§#!B§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      private function §<N§() : void
      {
         this.§"!G§ = § 1§.getItemByName("MovieClip_DiscSun").mClip;
         if(this.§"!G§)
         {
            this.§"e§ = §@F§.§8!J§.§&6§(this.§"!G§,{"rotation":360},{"rotation":0},5);
            this.§"e§.onComplete = this.§<N§;
            this.§"e§.play();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
               dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§7H§));
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§<N§();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§"e§)
         {
            this.§"e§.stop();
            this.§"e§ = null;
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"CodeSubmissionSuccessful_Popup");
      }
   }
}
