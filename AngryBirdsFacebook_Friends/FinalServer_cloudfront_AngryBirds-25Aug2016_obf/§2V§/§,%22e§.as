package §2V§
{
   import §0#d§.§<#u§;
   import §8§.§#$+§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import §^!,§.§8!H§;
   import §^!,§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class §,"e§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueTutorial";
       
      
      private var §<-§:Number = 1;
      
      private var §%#z§:§8!H§;
      
      public function §,"e§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup", param5:§8!H§ = null)
      {
         super(param1,param2,§@#`§.§#!c§.Popups.Popup_LeagueTutorial[0],ID);
         this.§%#z§ = param5;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§9"5§();
         var _loc2_:§<#u§ = (§>"$§.§<_§ as §8G§).§&#§;
         if(!_loc2_.§]!S§())
         {
            if(_loc2_.§="5§() != §<#u§.§5#n§ && _loc2_.§="5§() != §<#u§.§3b§)
            {
               _loc2_.§&!e§(§<#u§.§3"A§);
            }
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(§7!j§.mClip.btnPrevious)
         {
            §7!j§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§5"g§);
         }
         if(§7!j§.mClip.btnNext)
         {
            §7!j§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§&"w§);
         }
         if(§7!j§.mClip.btnCheckMark)
         {
            §7!j§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§]$§);
         }
         super.hide(param1,param2);
      }
      
      private function §&"w§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         if(this.§<-§ < 3)
         {
            ++this.§<-§;
         }
         this.§9"5§();
      }
      
      private function §5"g§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
         if(this.§<-§ > 1)
         {
            --this.§<-§;
         }
         this.§9"5§();
      }
      
      private function §]$§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         this.§9"5§();
         if(this.§%#z§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(this.§%#z§);
         }
         close(false,false);
      }
      
      private function §9"5§() : void
      {
         §7!j§.mClip.gotoAndStop(this.§<-§);
         if(§7!j§.mClip.btnPrevious)
         {
            §7!j§.mClip.btnPrevious.visible = this.§<-§ > 1;
            §7!j§.mClip.btnPrevious.gotoAndStop(1);
            §7!j§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§5"g§);
            §7!j§.mClip.btnPrevious.addEventListener(MouseEvent.CLICK,this.§5"g§);
            §7!j§.mClip.btnPrevious.buttonMode = true;
            §7!j§.mClip.btnPrevious.useHandCursor = true;
         }
         if(§7!j§.mClip.btnNext)
         {
            §7!j§.mClip.btnNext.visible = this.§<-§ < 3;
            §7!j§.mClip.btnNext.gotoAndStop(1);
            §7!j§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§&"w§);
            §7!j§.mClip.btnNext.addEventListener(MouseEvent.CLICK,this.§&"w§);
            §7!j§.mClip.btnNext.buttonMode = true;
            §7!j§.mClip.btnNext.useHandCursor = true;
         }
         if(§7!j§.mClip.btnCheckMark)
         {
            §7!j§.mClip.btnCheckMark.visible = this.§<-§ == 3;
            §7!j§.mClip.btnCheckMark.gotoAndStop(1);
            §7!j§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§]$§);
            §7!j§.mClip.btnCheckMark.addEventListener(MouseEvent.CLICK,this.§]$§);
            §7!j§.mClip.btnCheckMark.buttonMode = true;
            §7!j§.mClip.btnCheckMark.useHandCursor = true;
         }
      }
   }
}
