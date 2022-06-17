package §?Q§
{
   import § "L§.§"!A§;
   import § "L§.§7`§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §^!t§.§,! §;
   import flash.events.MouseEvent;
   
   public class QuestionPopup extends AbstractPopup
   {
      
      public static const ID:String = "QuestionPopup";
      
      public static const §,"#§:int = 1;
       
      
      private var §@!§:String;
      
      private var §3!$§:String;
      
      private var §!",§:Object;
      
      private var §,#!§:String;
      
      private var §5"D§:int;
      
      public function QuestionPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:Object, param7:String = null)
      {
         super(param1,param2,§false§.§4#;§.Popups.Popup_QuestionPopup[0],ID);
         this.§@!§ = param3;
         this.§3!$§ = param4;
         this.§!",§ = param6;
         this.§5"D§ = param5;
         this.§,#!§ = param7;
      }
      
      override protected function init() : void
      {
         super.init();
         (§;#'§.getItemByName("TextField_Title") as §7`§).setText(this.§@!§);
         (§;#'§.getItemByName("TextField_Text") as §7`§).setText(this.§3!$§);
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         §;#'§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§2$"§);
         (§;#'§.getItemByName("Image") as §"!A§).mClip.gotoAndStop(this.§5"D§);
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         dispatchEvent(new §,! §(§,! §.§<$E§,this.§!",§));
         close();
      }
      
      private function §2$"§(param1:MouseEvent) : void
      {
         dispatchEvent(new §,! §(§,! §.§2$&§,this.§!",§));
         close();
      }
      
      public function §1";§() : String
      {
         return this.§,#!§;
      }
   }
}
