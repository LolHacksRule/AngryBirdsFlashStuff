package §?!N§
{
   import §%#v§.§0"j§;
   import §5!$§.§-#j§;
   import §5!$§.§>§;
   import §8t§.§=#U§;
   import §;$5§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class QuestionPopup extends AbstractPopup
   {
      
      public static const ID:String = "QuestionPopup";
      
      public static const §+"m§:int = 1;
       
      
      private var §=c§:String;
      
      private var §8F§:String;
      
      private var §&!8§:Object;
      
      private var §5"l§:String;
      
      private var §=#q§:int;
      
      public function QuestionPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:Object, param7:String = null)
      {
         super(param1,param2,§0"j§.§-i§.Popups.Popup_QuestionPopup[0],ID);
         this.§=c§ = param3;
         this.§8F§ = param4;
         this.§&!8§ = param6;
         this.§=#q§ = param5;
         this.§5"l§ = param7;
      }
      
      override protected function init() : void
      {
         super.init();
         (§8#Y§.getItemByName("TextField_Title") as §-#j§).setText(this.§=c§);
         (§8#Y§.getItemByName("TextField_Text") as §-#j§).setText(this.§8F§);
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         §8#Y§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§ k§);
         (§8#Y§.getItemByName("Image") as §>#8§).mClip.gotoAndStop(this.§=#q§);
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         dispatchEvent(new §=#U§(§=#U§.§`2§,this.§&!8§));
         close();
      }
      
      private function § k§(param1:MouseEvent) : void
      {
         dispatchEvent(new §=#U§(§=#U§.§2#N§,this.§&!8§));
         close();
      }
      
      public function §=$0§() : String
      {
         return this.§5"l§;
      }
   }
}
