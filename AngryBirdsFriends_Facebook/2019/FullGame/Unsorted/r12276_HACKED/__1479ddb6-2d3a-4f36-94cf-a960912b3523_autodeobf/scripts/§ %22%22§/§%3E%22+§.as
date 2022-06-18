package § ""§
{
   import § "v§.§4$4§;
   import §+!n§.§+!p§;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
   import §?_§.§9! §;
   import §[#A§.§&n§;
   import flash.events.MouseEvent;
   
   public class §>"+§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueTutorial";
       
      
      private var §8"5§:Number = 1;
      
      private var §3"V§:§?!y§;
      
      public function §>"+§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup", param5:§?!y§ = null)
      {
         super(param1,param2,§&n§.§7a§.Popups.Popup_LeagueTutorial[0],ID);
         this.§3"V§ = param5;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§8'§();
         var _loc2_:§9! § = (§+!p§.§;"-§ as §^"a§).§?"c§;
         if(!_loc2_.§0!-§())
         {
            if(_loc2_.§5$>§() != §9! §.§>$>§ && _loc2_.§5$>§() != §9! §.§=$=§)
            {
               _loc2_.§ !A§(§9! §.§`"x§);
            }
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(§'o§.mClip.btnPrevious)
         {
            §'o§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§=!K§);
         }
         if(§'o§.mClip.btnNext)
         {
            §'o§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§0,§);
         }
         if(§'o§.mClip.btnCheckMark)
         {
            §'o§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§'"m§);
         }
         super.hide(param1,param2);
      }
      
      private function §0,§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         if(this.§8"5§ < 3)
         {
            ++this.§8"5§;
         }
         this.§8'§();
      }
      
      private function §=!K§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
         if(this.§8"5§ > 1)
         {
            --this.§8"5§;
         }
         this.§8'§();
      }
      
      private function §'"m§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§8'§();
         if(this.§3"V§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(this.§3"V§);
         }
         close(false,false);
      }
      
      private function §8'§() : void
      {
         §'o§.mClip.gotoAndStop(this.§8"5§);
         if(§'o§.mClip.btnPrevious)
         {
            §'o§.mClip.btnPrevious.visible = this.§8"5§ > 1;
            §'o§.mClip.btnPrevious.gotoAndStop(1);
            §'o§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§=!K§);
            §'o§.mClip.btnPrevious.addEventListener(MouseEvent.CLICK,this.§=!K§);
            §'o§.mClip.btnPrevious.buttonMode = true;
            §'o§.mClip.btnPrevious.useHandCursor = true;
         }
         if(§'o§.mClip.btnNext)
         {
            §'o§.mClip.btnNext.visible = this.§8"5§ < 3;
            §'o§.mClip.btnNext.gotoAndStop(1);
            §'o§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§0,§);
            §'o§.mClip.btnNext.addEventListener(MouseEvent.CLICK,this.§0,§);
            §'o§.mClip.btnNext.buttonMode = true;
            §'o§.mClip.btnNext.useHandCursor = true;
         }
         if(§'o§.mClip.btnCheckMark)
         {
            §'o§.mClip.btnCheckMark.visible = this.§8"5§ == 3;
            §'o§.mClip.btnCheckMark.gotoAndStop(1);
            §'o§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§'"m§);
            §'o§.mClip.btnCheckMark.addEventListener(MouseEvent.CLICK,this.§'"m§);
            §'o§.mClip.btnCheckMark.buttonMode = true;
            §'o§.mClip.btnCheckMark.useHandCursor = true;
         }
      }
   }
}
