package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §8!M§.§2!V§;
   import §<h§.§%M§;
   import §<h§.§@N§;
   import flash.events.MouseEvent;
   
   public class QuestionPopup extends AbstractPopup
   {
      
      public static const ID:String = "QuestionPopup";
      
      public static const §!"0§:int = 1;
       
      
      private var §8#H§:String;
      
      private var §?"j§:String;
      
      private var §6!K§:Object;
      
      private var §`!1§:String;
      
      private var §7H§:int;
      
      public function QuestionPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:Object, param7:String = null)
      {
         super(param1,param2,§1Q§.§5T§.Popups.Popup_QuestionPopup[0],ID);
         this.§8#H§ = param3;
         this.§?"j§ = param4;
         this.§6!K§ = param6;
         this.§7H§ = param5;
         this.§`!1§ = param7;
      }
      
      override protected function init() : void
      {
         super.init();
         (§,#2§.getItemByName("TextField_Title") as §%M§).setText(this.§8#H§);
         (§,#2§.getItemByName("TextField_Text") as §%M§).setText(this.§?"j§);
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         §,#2§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§-!n§);
         (§,#2§.getItemByName("Image") as §@N§).mClip.gotoAndStop(this.§7H§);
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         dispatchEvent(new §2!V§(§2!V§.§,6§,this.§6!K§));
         close();
      }
      
      private function §-!n§(param1:MouseEvent) : void
      {
         dispatchEvent(new §2!V§(§2!V§.§5g§,this.§6!K§));
         close();
      }
      
      public function §[!k§() : String
      {
         return this.§`!1§;
      }
   }
}
