package §7N§
{
   import §,b§.§4H§;
   import §1"2§.§,!]§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §%m§ extends Popup
   {
       
      
      private const §]!x§:Number = 0;
      
      private const § !o§:Number = -5;
      
      private const §0!i§:Number = 5;
      
      private const §'!R§:Number = 50;
      
      private const §5"?§:Number = 4;
      
      private var §<q§:StatePopupManager;
      
      private var §2N§:Boolean = false;
      
      private var §9k§:Number = 0;
      
      private var §'2§:Number = 0;
      
      private var §@!D§:Number = 0;
      
      private var §use §:Number = 0;
      
      private var §5!M§:Number = 0;
      
      private var §>!%§:Number = 0;
      
      private var §<D§:Number = 0;
      
      private var §6,§:Number = 0;
      
      private var §2!#§:Number = 0;
      
      private var §#"1§:Number = 4;
      
      public function §%m§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_TournamentTermsAndConditions[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§&!a§);
         this.§<q§ = param2;
         mClip.stage.addEventListener(Event.ENTER_FRAME,this.§`t§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§`k§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.§!!m§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.§[Q§);
         this.§<q§.addEventListener(§4H§.§%!g§,this.onUiInteraction);
         mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§#"1§;
         this.§9k§ = mClip.TermsScrollBar.height;
         this.§'2§ = mClip.TermsAndConditions_Text.y + this.§0!i§;
         this.§@!D§ = mClip.TermsAndConditions_Text.y + this.§9k§ - mClip.TermsAndConditions_Text.height + this.§'!R§;
         this.§use § = mClip.TermsScrollBar.TermsScrollBar_Button.y + this.§]!x§;
         this.§5!M§ = this.§9k§ - mClip.TermsScrollBar.TermsScrollBar_Button.height + this.§ !o§;
         this.§6,§ = mClip.TermsAndConditions_Text.y;
         this.§8N§();
      }
      
      private function §[Q§(param1:MouseEvent) : void
      {
         if(!this.§2N§)
         {
            if(param1.delta < 0)
            {
               this.§2!#§ += 5;
            }
            else
            {
               this.§2!#§ -= 5;
            }
            this.§8N§();
         }
      }
      
      private function §&!a§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function onUiInteraction(param1:§4H§) : void
      {
         this.uiInteractionHandler(param1.§@`§,param1.§@C§,param1.§5!+§);
      }
      
      private function §`t§(param1:Event) : void
      {
         if(mClip.TermsScrollBar.TermsScrollBar_Button.scaleY != this.§#"1§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§#"1§;
         }
         if(!this.§2N§ && this.§2!#§ != 0)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y += this.§2!#§;
            this.§2!#§ *= 0.8;
            this.§`S§();
            this.§8N§();
         }
         var _loc2_:Number = mClip.TermsAndConditions_Text.y - (this.§'2§ + this.§6,§);
         mClip.TermsAndConditions_Text.y -= _loc2_ / 5;
      }
      
      private function §`k§(param1:MouseEvent) : void
      {
         if(this.§2N§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = (mClip.TermsScrollBar as MovieClip).mouseY + this.§>!%§;
            this.§`S§();
            this.§8N§();
         }
      }
      
      private function §`S§() : void
      {
         if(mClip.TermsScrollBar.TermsScrollBar_Button.y < this.§use §)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§use §;
            this.§2!#§ = 0;
         }
         else if(mClip.TermsScrollBar.TermsScrollBar_Button.y > this.§5!M§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§5!M§;
            this.§2!#§ = 0;
         }
      }
      
      private function §8N§() : void
      {
         this.§<D§ = mClip.TermsScrollBar.TermsScrollBar_Button.y / this.§5!M§;
         if(this.§<D§ < 0)
         {
            this.§<D§ = 0;
         }
         else if(this.§<D§ > 0.999)
         {
            this.§<D§ = 1;
         }
         this.§6,§ = (this.§@!D§ - this.§'2§) * this.§<D§;
      }
      
      private function §!!m§(param1:MouseEvent) : void
      {
         this.§2!#§ = 0;
         mClip.Button_Close.mouseEnabled = true;
         this.§2N§ = false;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "SCROLL_DOWN":
               this.§2!#§ = 0;
               mClip.Button_Close.mouseEnabled = false;
               this.§2N§ = true;
               this.§>!%§ = mClip.TermsScrollBar.TermsScrollBar_Button.y - (mClip.TermsScrollBar as MovieClip).mouseY;
               break;
            case "SCROLL_UP":
               this.§!!m§(null);
         }
      }
      
      override public function close() : void
      {
         this.§<q§.removeEventListener(§4H§.§%!g§,this.onUiInteraction);
         mClip.stage.removeEventListener(Event.ENTER_FRAME,this.§`t§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§`k§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§!!m§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.§[Q§);
         super.close();
      }
   }
}
