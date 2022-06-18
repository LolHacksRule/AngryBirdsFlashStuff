package § h§
{
   import §2$;§.§-$5§;
   import §2$;§.§=!Z§;
   import §9!6§.AbstractPopup;
   import §<#b§.§+$ §;
   import §[#A§.§&n§;
   import flash.events.MouseEvent;
   
   public class QuestionPopup extends AbstractPopup
   {
      
      public static const ID:String = "QuestionPopup";
      
      public static const §!"d§:int = 1;
       
      
      private var §#_§:String;
      
      private var §-F§:String;
      
      private var §1"1§:Object;
      
      private var § #2§:String;
      
      private var §?#C§:int;
      
      public function QuestionPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:Object, param7:String = null)
      {
         super(param1,param2,§&n§.§7a§.Popups.Popup_QuestionPopup[0],ID);
         this.§#_§ = param3;
         this.§-F§ = param4;
         this.§1"1§ = param6;
         this.§?#C§ = param5;
         this.§ #2§ = param7;
      }
      
      override protected function init() : void
      {
         super.init();
         (§'o§.getItemByName("TextField_Title") as §-$5§).setText(this.§#_§);
         (§'o§.getItemByName("TextField_Text") as §-$5§).setText(this.§-F§);
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         §'o§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§&"2§);
         (§'o§.getItemByName("Image") as §=!Z§).mClip.gotoAndStop(this.§?#C§);
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         dispatchEvent(new §+$ §(§+$ §.§>o§,this.§1"1§));
         close();
      }
      
      private function §&"2§(param1:MouseEvent) : void
      {
         dispatchEvent(new §+$ §(§+$ §.§7"j§,this.§1"1§));
         close();
      }
      
      public function §##J§() : String
      {
         return this.§ #2§;
      }
   }
}
