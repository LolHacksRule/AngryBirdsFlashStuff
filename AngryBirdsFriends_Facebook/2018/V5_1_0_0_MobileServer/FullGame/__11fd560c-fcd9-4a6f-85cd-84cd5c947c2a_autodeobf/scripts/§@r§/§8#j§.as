package §@r§
{
   import § %§.§1Q§;
   import §1!=§.§%#;§;
   import §1!=§.AbstractPopup;
   import §3r§.§]!4§;
   import §;#D§.§3#U§;
   import §@!M§.§!"p§;
   import flash.events.MouseEvent;
   
   public class §8#j§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueTutorial";
       
      
      private var §5!q§:Number = 1;
      
      private var §5#,§:§%#;§;
      
      public function §8#j§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup", param5:§%#;§ = null)
      {
         super(param1,param2,§1Q§.§5T§.Popups.Popup_LeagueTutorial[0],ID);
         this.§5#,§ = param5;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§0$6§();
         var _loc2_:§]!4§ = (§3#U§.§9#^§ as §,A§).§9"x§;
         if(!_loc2_.§,$A§())
         {
            if(_loc2_.§'m§() != §]!4§.§+A§ && _loc2_.§'m§() != §]!4§.§true §)
            {
               _loc2_.§95§(§]!4§.§&#W§);
            }
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(§,#2§.mClip.btnPrevious)
         {
            §,#2§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§2!?§);
         }
         if(§,#2§.mClip.btnNext)
         {
            §,#2§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§;$?§);
         }
         if(§,#2§.mClip.btnCheckMark)
         {
            §,#2§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§>"Y§);
         }
         super.hide(param1,param2);
      }
      
      private function §;$?§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         if(this.§5!q§ < 3)
         {
            ++this.§5!q§;
         }
         this.§0$6§();
      }
      
      private function §2!?§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
         if(this.§5!q§ > 1)
         {
            --this.§5!q§;
         }
         this.§0$6§();
      }
      
      private function §>"Y§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§0$6§();
         if(this.§5#,§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(this.§5#,§);
         }
         close(false,false);
      }
      
      private function §0$6§() : void
      {
         §,#2§.mClip.gotoAndStop(this.§5!q§);
         if(§,#2§.mClip.btnPrevious)
         {
            §,#2§.mClip.btnPrevious.visible = this.§5!q§ > 1;
            §,#2§.mClip.btnPrevious.gotoAndStop(1);
            §,#2§.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.§2!?§);
            §,#2§.mClip.btnPrevious.addEventListener(MouseEvent.CLICK,this.§2!?§);
            §,#2§.mClip.btnPrevious.buttonMode = true;
            §,#2§.mClip.btnPrevious.useHandCursor = true;
         }
         if(§,#2§.mClip.btnNext)
         {
            §,#2§.mClip.btnNext.visible = this.§5!q§ < 3;
            §,#2§.mClip.btnNext.gotoAndStop(1);
            §,#2§.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.§;$?§);
            §,#2§.mClip.btnNext.addEventListener(MouseEvent.CLICK,this.§;$?§);
            §,#2§.mClip.btnNext.buttonMode = true;
            §,#2§.mClip.btnNext.useHandCursor = true;
         }
         if(§,#2§.mClip.btnCheckMark)
         {
            §,#2§.mClip.btnCheckMark.visible = this.§5!q§ == 3;
            §,#2§.mClip.btnCheckMark.gotoAndStop(1);
            §,#2§.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.§>"Y§);
            §,#2§.mClip.btnCheckMark.addEventListener(MouseEvent.CLICK,this.§>"Y§);
            §,#2§.mClip.btnCheckMark.buttonMode = true;
            §,#2§.mClip.btnCheckMark.useHandCursor = true;
         }
      }
   }
}
