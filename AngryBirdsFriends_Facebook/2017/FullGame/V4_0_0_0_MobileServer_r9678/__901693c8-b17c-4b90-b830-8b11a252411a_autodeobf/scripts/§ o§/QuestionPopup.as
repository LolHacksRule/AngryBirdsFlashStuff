package § o§
{
   import §"!V§.§+0§;
   import §%#A§.§'=§;
   import §%#A§.§^!4§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class QuestionPopup extends AbstractPopup
   {
      
      public static const ID:String = "QuestionPopup";
      
      public static const §%#u§:int = 1;
       
      
      private var §?!#§:String;
      
      private var §17§:String;
      
      private var §-!u§:Object;
      
      private var §?9§:String;
      
      private var §@z§:int;
      
      public function QuestionPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:Object, param7:String = null)
      {
         super(param1,param2,§=>§.§%" §.Popups.Popup_QuestionPopup[0],ID);
         this.§?!#§ = param3;
         this.§17§ = param4;
         this.§-!u§ = param6;
         this.§@z§ = param5;
         this.§?9§ = param7;
      }
      
      override protected function init() : void
      {
         super.init();
         (§1"6§.getItemByName("TextField_Title") as §^!4§).setText(this.§?!#§);
         (§1"6§.getItemByName("TextField_Text") as §^!4§).setText(this.§17§);
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         §1"6§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§7$-§);
         (§1"6§.getItemByName("Image") as §'=§).mClip.gotoAndStop(this.§@z§);
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         dispatchEvent(new §+0§(§+0§.§4!O§,this.§-!u§));
         close();
      }
      
      private function §7$-§(param1:MouseEvent) : void
      {
         dispatchEvent(new §+0§(§+0§.§5!I§,this.§-!u§));
         close();
      }
      
      public function §4f§() : String
      {
         return this.§?9§;
      }
   }
}
