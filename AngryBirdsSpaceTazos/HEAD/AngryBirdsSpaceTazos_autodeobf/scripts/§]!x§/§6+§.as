package §]!x§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §4u§.§!H§;
   import §7!6§.§@Y§;
   import §8Y§.PopupClosedEvent;
   import §`!w§.§?!U§;
   import flash.display.MovieClip;
   
   public class §6+§ extends §5!O§
   {
      
      private static var §6!3§:Class = §,!$§;
       
      
      private var §!!"§:MovieClip;
      
      private var §super§:§,4§;
      
      public function §6+§()
      {
         §<"5§ = true;
         §8!X§ = true;
         super(§>§.§"!B§,§'!h§.§3"4§,§?!U§.§3!c§(§6!3§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
      }
      
      private function §&"2§() : void
      {
         this.§!!"§ = §3!a§.getItemByName("MovieClip_DiscSun").mClip;
         if(this.§!!"§)
         {
            this.§super§ = §"!t§.§3R§.§2m§(this.§!!"§,{"rotation":360},{"rotation":0},5);
            this.§super§.onComplete = this.§&"2§;
            this.§super§.play();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               close();
               dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§6!F§));
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§&"2§();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§super§)
         {
            this.§super§.stop();
            this.§super§ = null;
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §!H§.§3R§.updateTextFields(§3!a§,"CodeSubmissionSuccessful_Popup");
      }
   }
}
