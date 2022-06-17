package §]$<§
{
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §;$5§.§@#G§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import flash.events.MouseEvent;
   
   public class §^#l§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueTutorial";
       
      
      private var §]"D§:Number = 1;
      
      private var §4q§:§@#G§;
      
      public function §^#l§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup", param5:§@#G§ = null)
      {
         super(param1,param2,§0"j§.§-i§.Popups.Popup_LeagueTutorial[0],ID);
         this.§4q§ = param5;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§[!t§();
         var _loc2_:§<"c§ = (§%"T§.§>$<§ as §'"a§).§1#b§;
         if(!_loc2_.§7!I§())
         {
            if(_loc2_.§9$@§() != §<"c§.§,;§ && _loc2_.§9$@§() != §<"c§.§<"q§)
            {
               _loc2_.§#W§(§<"c§.§1# §);
            }
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(§8#Y§.mClip.btnPrevious)
         {
            §8#Y§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§##^§);
         }
         if(§8#Y§.mClip.btnNext)
         {
            §8#Y§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§""$§);
         }
         if(§8#Y§.mClip.btnCheckMark)
         {
            §8#Y§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§<K§);
         }
         super.hide(param1,param2);
      }
      
      private function §""$§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         if(this.§]"D§ < 3)
         {
            ++this.§]"D§;
         }
         this.§[!t§();
      }
      
      private function §##^§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
         if(this.§]"D§ > 1)
         {
            --this.§]"D§;
         }
         this.§[!t§();
      }
      
      private function §<K§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§[!t§();
         if(this.§4q§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(this.§4q§);
         }
         close(false,false);
      }
      
      private function §[!t§() : void
      {
         §8#Y§.mClip.gotoAndStop(this.§]"D§);
         if(§8#Y§.mClip.btnPrevious)
         {
            §8#Y§.mClip.btnPrevious.visible = this.§]"D§ > 1;
            §8#Y§.mClip.btnPrevious.gotoAndStop(1);
            §8#Y§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§##^§);
            §8#Y§.mClip.btnPrevious.addEventListener(MouseEvent.CLICK,this.§##^§);
            §8#Y§.mClip.btnPrevious.buttonMode = true;
            §8#Y§.mClip.btnPrevious.useHandCursor = true;
         }
         if(§8#Y§.mClip.btnNext)
         {
            §8#Y§.mClip.btnNext.visible = this.§]"D§ < 3;
            §8#Y§.mClip.btnNext.gotoAndStop(1);
            §8#Y§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§""$§);
            §8#Y§.mClip.btnNext.addEventListener(MouseEvent.CLICK,this.§""$§);
            §8#Y§.mClip.btnNext.buttonMode = true;
            §8#Y§.mClip.btnNext.useHandCursor = true;
         }
         if(§8#Y§.mClip.btnCheckMark)
         {
            §8#Y§.mClip.btnCheckMark.visible = this.§]"D§ == 3;
            §8#Y§.mClip.btnCheckMark.gotoAndStop(1);
            §8#Y§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§<K§);
            §8#Y§.mClip.btnCheckMark.addEventListener(MouseEvent.CLICK,this.§<K§);
            §8#Y§.mClip.btnCheckMark.buttonMode = true;
            §8#Y§.mClip.btnCheckMark.useHandCursor = true;
         }
      }
   }
}
