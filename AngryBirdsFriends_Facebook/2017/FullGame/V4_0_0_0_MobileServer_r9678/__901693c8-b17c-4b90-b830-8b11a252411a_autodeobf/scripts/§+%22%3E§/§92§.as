package §+">§
{
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §8#D§.§=>§;
   import §<#m§.§!"<§;
   import §<#m§.AbstractPopup;
   import §`!R§.§&"8§;
   import flash.events.MouseEvent;
   
   public class §92§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueTutorial";
       
      
      private var §!I§:Number = 1;
      
      private var §<#7§:§!"<§;
      
      public function §92§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup", param5:§!"<§ = null)
      {
         super(param1,param2,§=>§.§%" §.Popups.Popup_LeagueTutorial[0],ID);
         this.§<#7§ = param5;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§?!J§();
         var _loc2_:§&"8§ = (§!#A§.§>q§ as §-#+§).§'M§;
         if(!_loc2_.§]!§())
         {
            if(_loc2_.§6'§() != §&"8§.§!#4§ && _loc2_.§6'§() != §&"8§.§ k§)
            {
               _loc2_.§"$9§(§&"8§.§1"K§);
            }
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(§1"6§.mClip.btnPrevious)
         {
            §1"6§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§>"B§);
         }
         if(§1"6§.mClip.btnNext)
         {
            §1"6§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§7"M§);
         }
         if(§1"6§.mClip.btnCheckMark)
         {
            §1"6§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§9i§);
         }
         super.hide(param1,param2);
      }
      
      private function §7"M§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         if(this.§!I§ < 3)
         {
            ++this.§!I§;
         }
         this.§?!J§();
      }
      
      private function §>"B§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
         if(this.§!I§ > 1)
         {
            --this.§!I§;
         }
         this.§?!J§();
      }
      
      private function §9i§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§?!J§();
         if(this.§<#7§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(this.§<#7§);
         }
         close(false,false);
      }
      
      private function §?!J§() : void
      {
         §1"6§.mClip.gotoAndStop(this.§!I§);
         if(§1"6§.mClip.btnPrevious)
         {
            §1"6§.mClip.btnPrevious.visible = this.§!I§ > 1;
            §1"6§.mClip.btnPrevious.gotoAndStop(1);
            §1"6§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§>"B§);
            §1"6§.mClip.btnPrevious.addEventListener(MouseEvent.CLICK,this.§>"B§);
            §1"6§.mClip.btnPrevious.buttonMode = true;
            §1"6§.mClip.btnPrevious.useHandCursor = true;
         }
         if(§1"6§.mClip.btnNext)
         {
            §1"6§.mClip.btnNext.visible = this.§!I§ < 3;
            §1"6§.mClip.btnNext.gotoAndStop(1);
            §1"6§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§7"M§);
            §1"6§.mClip.btnNext.addEventListener(MouseEvent.CLICK,this.§7"M§);
            §1"6§.mClip.btnNext.buttonMode = true;
            §1"6§.mClip.btnNext.useHandCursor = true;
         }
         if(§1"6§.mClip.btnCheckMark)
         {
            §1"6§.mClip.btnCheckMark.visible = this.§!I§ == 3;
            §1"6§.mClip.btnCheckMark.gotoAndStop(1);
            §1"6§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§9i§);
            §1"6§.mClip.btnCheckMark.addEventListener(MouseEvent.CLICK,this.§9i§);
            §1"6§.mClip.btnCheckMark.buttonMode = true;
            §1"6§.mClip.btnCheckMark.useHandCursor = true;
         }
      }
   }
}
