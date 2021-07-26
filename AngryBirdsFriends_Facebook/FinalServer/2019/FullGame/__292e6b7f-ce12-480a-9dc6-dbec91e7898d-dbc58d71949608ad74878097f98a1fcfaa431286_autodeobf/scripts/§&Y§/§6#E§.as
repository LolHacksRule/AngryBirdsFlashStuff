package §&Y§
{
   import § $0§.§,#@§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §3"V§.§ b§;
   import §?#z§.§]$?§;
   import §^"G§.§2+§;
   import flash.events.MouseEvent;
   
   public class §6#E§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueTutorial";
       
      
      private var §?#u§:Number = 1;
      
      private var §&#-§:§,#@§;
      
      public function §6#E§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup", param5:§,#@§ = null)
      {
         super(param1,param2,§false§.§4#;§.Popups.Popup_LeagueTutorial[0],ID);
         this.§&#-§ = param5;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§91§();
         var _loc2_:§2+§ = (§]$?§.§;u§ as §@z§).§8!;§;
         if(!_loc2_.§["O§())
         {
            if(_loc2_.§ $'§() != §2+§.§]#R§ && _loc2_.§ $'§() != §2+§.§0#V§)
            {
               _loc2_.§`##§(§2+§.§@#&§);
            }
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(§;#'§.mClip.btnPrevious)
         {
            §;#'§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§1#&§);
         }
         if(§;#'§.mClip.btnNext)
         {
            §;#'§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§%k§);
         }
         if(§;#'§.mClip.btnCheckMark)
         {
            §;#'§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§9!M§);
         }
         super.hide(param1,param2);
      }
      
      private function §%k§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         if(this.§?#u§ < 3)
         {
            ++this.§?#u§;
         }
         this.§91§();
      }
      
      private function §1#&§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Back",§ b§.§;$5§);
         if(this.§?#u§ > 1)
         {
            --this.§?#u§;
         }
         this.§91§();
      }
      
      private function §9!M§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§91§();
         if(this.§&#-§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(this.§&#-§);
         }
         close(false,false);
      }
      
      private function §91§() : void
      {
         §;#'§.mClip.gotoAndStop(this.§?#u§);
         if(§;#'§.mClip.btnPrevious)
         {
            §;#'§.mClip.btnPrevious.visible = this.§?#u§ > 1;
            §;#'§.mClip.btnPrevious.gotoAndStop(1);
            §;#'§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§1#&§);
            §;#'§.mClip.btnPrevious.addEventListener(MouseEvent.CLICK,this.§1#&§);
            §;#'§.mClip.btnPrevious.buttonMode = true;
            §;#'§.mClip.btnPrevious.useHandCursor = true;
         }
         if(§;#'§.mClip.btnNext)
         {
            §;#'§.mClip.btnNext.visible = this.§?#u§ < 3;
            §;#'§.mClip.btnNext.gotoAndStop(1);
            §;#'§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§%k§);
            §;#'§.mClip.btnNext.addEventListener(MouseEvent.CLICK,this.§%k§);
            §;#'§.mClip.btnNext.buttonMode = true;
            §;#'§.mClip.btnNext.useHandCursor = true;
         }
         if(§;#'§.mClip.btnCheckMark)
         {
            §;#'§.mClip.btnCheckMark.visible = this.§?#u§ == 3;
            §;#'§.mClip.btnCheckMark.gotoAndStop(1);
            §;#'§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§9!M§);
            §;#'§.mClip.btnCheckMark.addEventListener(MouseEvent.CLICK,this.§9!M§);
            §;#'§.mClip.btnCheckMark.buttonMode = true;
            §;#'§.mClip.btnCheckMark.useHandCursor = true;
         }
      }
   }
}
