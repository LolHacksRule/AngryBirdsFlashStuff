package §?"R§
{
   import §5!d§.§8"k§;
   import §6"r§.§="T§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class QuestionPopup extends AbstractPopup
   {
      
      public static const ID:String = "QuestionPopup";
      
      public static const §4a§:int = 1;
       
      
      private var §8y§:String;
      
      private var §-!,§:String;
      
      private var §6!?§:Object;
      
      private var §?!m§:String;
      
      private var §!7§:int;
      
      public function QuestionPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:Object, param7:String = null)
      {
         super(param1,param2,§@#`§.§#!c§.Popups.Popup_QuestionPopup[0],ID);
         this.§8y§ = param3;
         this.§-!,§ = param4;
         this.§6!?§ = param6;
         this.§!7§ = param5;
         this.§?!m§ = param7;
      }
      
      override protected function init() : void
      {
         super.init();
         (§7!j§.getItemByName("TextField_Title") as §]$!§).setText(this.§8y§);
         (§7!j§.getItemByName("TextField_Text") as §]$!§).setText(this.§-!,§);
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §7!j§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§<M§);
         (§7!j§.getItemByName("Image") as §="T§).mClip.gotoAndStop(this.§!7§);
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         dispatchEvent(new §8"k§(§8"k§.§0$8§,this.§6!?§));
         close();
      }
      
      private function §<M§(param1:MouseEvent) : void
      {
         dispatchEvent(new §8"k§(§8"k§.§"!<§,this.§6!?§));
         close();
      }
      
      public function §4D§() : String
      {
         return this.§?!m§;
      }
   }
}
