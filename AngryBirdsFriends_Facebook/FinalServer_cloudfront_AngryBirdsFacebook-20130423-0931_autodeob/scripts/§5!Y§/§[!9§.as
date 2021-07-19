package §5!Y§
{
   import §1!t§.§""B§;
   import §6!H§.§6!e§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §[!9§ extends Popup
   {
       
      
      private const §3"Z§:Number = 0;
      
      private const §#!U§:Number = -5;
      
      private const §@"5§:Number = 5;
      
      private const §'!F§:Number = 50;
      
      private const §'1§:Number = 4;
      
      private var §>"P§:StatePopupManager;
      
      private var §^"Q§:Boolean = false;
      
      private var §1"Y§:Number = 0;
      
      private var §=4§:Number = 0;
      
      private var §2"&§:Number = 0;
      
      private var §]7§:Number = 0;
      
      private var §2"T§:Number = 0;
      
      private var §<!`§:Number = 0;
      
      private var §8o§:Number = 0;
      
      private var §'"E§:Number = 0;
      
      private var §%-§:Number = 0;
      
      private var §="M§:Number = 4;
      
      public function §[!9§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupView_RaffleWinnersPopup[0],param1);
         this.§>"P§ = param2;
         this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
         mClip.stage.addEventListener(Event.ENTER_FRAME,this.§=!%§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!M§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.§ [§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.§1"C§);
         mClip.TermsScrollBar.TermsScrollBar_Button.addEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
         mClip.TermsScrollBar.TermsScrollBar_Button.addEventListener(MouseEvent.MOUSE_UP,this.§ [§);
         this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
         mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§="M§;
         this.§1"Y§ = mClip.TermsScrollBar.height;
         this.§=4§ = mClip.CompetitionWinners_Text.y + this.§@"5§;
         this.§2"&§ = mClip.CompetitionWinners_Text.y + this.§1"Y§ - mClip.CompetitionWinners_Text.height + this.§'!F§;
         this.§]7§ = mClip.TermsScrollBar.TermsScrollBar_Button.y + this.§3"Z§;
         this.§2"T§ = this.§1"Y§ - mClip.TermsScrollBar.TermsScrollBar_Button.height + this.§#!U§;
         this.§'"E§ = mClip.CompetitionWinners_Text.y;
         this.§#!R§();
      }
      
      protected function §%v§(param1:MouseEvent) : void
      {
         this.§^"Q§ = true;
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "CLOSE_POPUP":
               this.close();
               break;
            case "SCROLL_DOWN":
               this.§%-§ = 0;
               mClip.Button_Close.mouseEnabled = false;
               this.§^"Q§ = true;
               this.§<!`§ = mClip.TermsScrollBar.TermsScrollBar_Button.y - (mClip.TermsScrollBar as MovieClip).mouseY;
         }
      }
      
      private function §1"C§(param1:MouseEvent) : void
      {
         if(!this.§^"Q§)
         {
            if(param1.delta < 0)
            {
               this.§%-§ += 5;
            }
            else
            {
               this.§%-§ -= 5;
            }
            this.§#!R§();
         }
      }
      
      private function §=!%§(param1:Event) : void
      {
         if(mClip.TermsScrollBar.TermsScrollBar_Button.scaleY != this.§="M§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§="M§;
         }
         if(!this.§^"Q§ && this.§%-§ != 0)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y += this.§%-§;
            this.§%-§ *= 0.8;
            this.§5!9§();
            this.§#!R§();
         }
         var _loc2_:Number = mClip.CompetitionWinners_Text.y - (this.§=4§ + this.§'"E§);
         mClip.CompetitionWinners_Text.y -= _loc2_ / 5;
      }
      
      private function §%!M§(param1:MouseEvent) : void
      {
         if(this.§^"Q§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = (mClip.TermsScrollBar as MovieClip).mouseY + this.§<!`§;
            this.§5!9§();
            this.§#!R§();
         }
      }
      
      private function §5!9§() : void
      {
         if(mClip.TermsScrollBar.TermsScrollBar_Button.y < this.§]7§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§]7§;
            this.§%-§ = 0;
         }
         else if(mClip.TermsScrollBar.TermsScrollBar_Button.y > this.§2"T§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§2"T§;
            this.§%-§ = 0;
         }
      }
      
      private function §#!R§() : void
      {
         this.§8o§ = mClip.TermsScrollBar.TermsScrollBar_Button.y / this.§2"T§;
         if(this.§8o§ < 0)
         {
            this.§8o§ = 0;
         }
         else if(this.§8o§ > 0.999)
         {
            this.§8o§ = 1;
         }
         this.§'"E§ = (this.§2"&§ - this.§=4§) * this.§8o§;
      }
      
      private function § [§(param1:MouseEvent) : void
      {
         this.§%-§ = 0;
         mClip.Button_Close.mouseEnabled = true;
         this.§^"Q§ = false;
      }
      
      override public function close() : void
      {
         this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
         mClip.stage.removeEventListener(Event.ENTER_FRAME,this.§=!%§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§%!M§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§ [§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.§1"C§);
         mClip.TermsScrollBar.TermsScrollBar_Button.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
         mClip.TermsScrollBar.TermsScrollBar_Button.removeEventListener(MouseEvent.MOUSE_UP,this.§ [§);
         super.close();
      }
   }
}
