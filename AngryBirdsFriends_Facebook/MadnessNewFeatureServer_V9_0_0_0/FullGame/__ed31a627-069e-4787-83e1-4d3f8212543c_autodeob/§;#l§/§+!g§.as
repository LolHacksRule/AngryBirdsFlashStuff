package §;#l§
{
   import §%!-§.§?l§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §1"l§.§`""§;
   import §8#K§.§3Z§;
   import §`#@§.§7n§;
   import flash.events.MouseEvent;
   
   public class §+!g§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueTutorial";
       
      
      private var §6#=§:Number = 1;
      
      private var §;"X§:§5!-§;
      
      public function §+!g§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup", param5:§5!-§ = null)
      {
         super(param1,param2,§?l§.§3m§.Popups.Popup_LeagueTutorial[0],ID);
         this.§;"X§ = param5;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§["M§();
         var _loc2_:§`""§ = (§7n§.§-$<§ as § #v§).§=#+§;
         if(!_loc2_.§,#-§())
         {
            if(_loc2_.§=a§() != §`""§.§##k§ && _loc2_.§=a§() != §`""§.§;M§)
            {
               _loc2_.§'u§(§`""§.§`!S§);
            }
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(§&!M§.mClip.btnPrevious)
         {
            §&!M§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§-%§);
         }
         if(§&!M§.mClip.btnNext)
         {
            §&!M§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§;!5§);
         }
         if(§&!M§.mClip.btnCheckMark)
         {
            §&!M§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§8!G§);
         }
         super.hide(param1,param2);
      }
      
      private function §;!5§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         if(this.§6#=§ < 3)
         {
            ++this.§6#=§;
         }
         this.§["M§();
      }
      
      private function §-%§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
         if(this.§6#=§ > 1)
         {
            --this.§6#=§;
         }
         this.§["M§();
      }
      
      private function §8!G§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§["M§();
         if(this.§;"X§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(this.§;"X§);
         }
         close(false,false);
      }
      
      private function §["M§() : void
      {
         §&!M§.mClip.gotoAndStop(this.§6#=§);
         if(§&!M§.mClip.btnPrevious)
         {
            §&!M§.mClip.btnPrevious.visible = this.§6#=§ > 1;
            §&!M§.mClip.btnPrevious.gotoAndStop(1);
            §&!M§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§-%§);
            §&!M§.mClip.btnPrevious.addEventListener(MouseEvent.CLICK,this.§-%§);
            §&!M§.mClip.btnPrevious.buttonMode = true;
            §&!M§.mClip.btnPrevious.useHandCursor = true;
         }
         if(§&!M§.mClip.btnNext)
         {
            §&!M§.mClip.btnNext.visible = this.§6#=§ < 3;
            §&!M§.mClip.btnNext.gotoAndStop(1);
            §&!M§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§;!5§);
            §&!M§.mClip.btnNext.addEventListener(MouseEvent.CLICK,this.§;!5§);
            §&!M§.mClip.btnNext.buttonMode = true;
            §&!M§.mClip.btnNext.useHandCursor = true;
         }
         if(§&!M§.mClip.btnCheckMark)
         {
            §&!M§.mClip.btnCheckMark.visible = this.§6#=§ == 3;
            §&!M§.mClip.btnCheckMark.gotoAndStop(1);
            §&!M§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§8!G§);
            §&!M§.mClip.btnCheckMark.addEventListener(MouseEvent.CLICK,this.§8!G§);
            §&!M§.mClip.btnCheckMark.buttonMode = true;
            §&!M§.mClip.btnCheckMark.useHandCursor = true;
         }
      }
   }
}
