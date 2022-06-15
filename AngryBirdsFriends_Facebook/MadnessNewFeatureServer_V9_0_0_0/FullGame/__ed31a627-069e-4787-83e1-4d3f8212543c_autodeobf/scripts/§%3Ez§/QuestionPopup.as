package §>z§
{
   import §#,§.§'!`§;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §<#T§.§3#s§;
   import flash.events.MouseEvent;
   
   public class QuestionPopup extends AbstractPopup
   {
      
      public static const ID:String = "QuestionPopup";
      
      public static const §!$2§:int = 1;
       
      
      private var §`A§:String;
      
      private var §"O§:String;
      
      private var §4!'§:Object;
      
      private var §`"6§:String;
      
      private var §2!q§:int;
      
      public function QuestionPopup(param1:int, param2:int, param3:String, param4:String, param5:int, param6:Object, param7:String = null)
      {
         super(param1,param2,§?l§.§3m§.Popups.Popup_QuestionPopup[0],ID);
         this.§`A§ = param3;
         this.§"O§ = param4;
         this.§4!'§ = param6;
         this.§2!q§ = param5;
         this.§`"6§ = param7;
      }
      
      override protected function init() : void
      {
         super.init();
         (§&!M§.getItemByName("TextField_Title") as §`"$§).setText(this.§`A§);
         (§&!M§.getItemByName("TextField_Text") as §`"$§).setText(this.§"O§);
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         §&!M§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§2w§);
         (§&!M§.getItemByName("Image") as §'!`§).mClip.gotoAndStop(this.§2!q§);
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3#s§(§3#s§.§2!U§,this.§4!'§));
         close();
      }
      
      private function §2w§(param1:MouseEvent) : void
      {
         dispatchEvent(new §3#s§(§3#s§.§6"B§,this.§4!'§));
         close();
      }
      
      public function §]!t§() : String
      {
         return this.§`"6§;
      }
   }
}
