package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §18§ extends Popup
   {
       
      
      private const §4K§:Number = 0;
      
      private const §5!6§:Number = -5;
      
      private const §^=§:Number = 5;
      
      private const § V§:Number = 50;
      
      private const §`";§:Number = 4;
      
      private var §"!T§:StatePopupManager;
      
      private var §"_§:Boolean = false;
      
      private var §-!Y§:Number = 0;
      
      private var §";§:Number = 0;
      
      private var §&!4§:Number = 0;
      
      private var §0"8§:Number = 0;
      
      private var §0">§:Number = 0;
      
      private var §0x§:Number = 0;
      
      private var §%b§:Number = 0;
      
      private var §7q§:Number = 0;
      
      private var §?!!§:Number = 0;
      
      private var §+d§:Number = 4;
      
      public function §18§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_TournamentTermsAndConditions[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§`!a§);
         this.§"!T§ = param2;
         mClip.stage.addEventListener(Event.ENTER_FRAME,this.§[!V§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§#O§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.§3"E§);
         mClip.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.§8c§);
         this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
         mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§+d§;
         this.§-!Y§ = mClip.TermsScrollBar.height;
         this.§";§ = mClip.TermsAndConditions_Text.y + this.§^=§;
         this.§&!4§ = mClip.TermsAndConditions_Text.y + this.§-!Y§ - mClip.TermsAndConditions_Text.height + this.§ V§;
         this.§0"8§ = mClip.TermsScrollBar.TermsScrollBar_Button.y + this.§4K§;
         this.§0">§ = this.§-!Y§ - mClip.TermsScrollBar.TermsScrollBar_Button.height + this.§5!6§;
         this.§7q§ = mClip.TermsAndConditions_Text.y;
         this.§-_§();
      }
      
      private function §8c§(param1:MouseEvent) : void
      {
         if(!this.§"_§)
         {
            if(param1.delta < 0)
            {
               this.§?!!§ += 5;
            }
            else
            {
               this.§?!!§ -= 5;
            }
            this.§-_§();
         }
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
      }
      
      private function §[!V§(param1:Event) : void
      {
         if(mClip.TermsScrollBar.TermsScrollBar_Button.scaleY != this.§+d§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§+d§;
         }
         if(!this.§"_§ && this.§?!!§ != 0)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y += this.§?!!§;
            this.§?!!§ *= 0.8;
            this.§extends§();
            this.§-_§();
         }
         var _loc2_:Number = mClip.TermsAndConditions_Text.y - (this.§";§ + this.§7q§);
         mClip.TermsAndConditions_Text.y -= _loc2_ / 5;
      }
      
      private function §#O§(param1:MouseEvent) : void
      {
         if(this.§"_§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = (mClip.TermsScrollBar as MovieClip).mouseY + this.§0x§;
            this.§extends§();
            this.§-_§();
         }
      }
      
      private function §extends§() : void
      {
         if(mClip.TermsScrollBar.TermsScrollBar_Button.y < this.§0"8§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§0"8§;
            this.§?!!§ = 0;
         }
         else if(mClip.TermsScrollBar.TermsScrollBar_Button.y > this.§0">§)
         {
            mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§0">§;
            this.§?!!§ = 0;
         }
      }
      
      private function §-_§() : void
      {
         this.§%b§ = mClip.TermsScrollBar.TermsScrollBar_Button.y / this.§0">§;
         if(this.§%b§ < 0)
         {
            this.§%b§ = 0;
         }
         else if(this.§%b§ > 0.999)
         {
            this.§%b§ = 1;
         }
         this.§7q§ = (this.§&!4§ - this.§";§) * this.§%b§;
      }
      
      private function §3"E§(param1:MouseEvent) : void
      {
         this.§?!!§ = 0;
         mClip.Button_Close.mouseEnabled = true;
         this.§"_§ = false;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "SCROLL_DOWN":
               this.§?!!§ = 0;
               mClip.Button_Close.mouseEnabled = false;
               this.§"_§ = true;
               this.§0x§ = mClip.TermsScrollBar.TermsScrollBar_Button.y - (mClip.TermsScrollBar as MovieClip).mouseY;
               break;
            case "SCROLL_UP":
               this.§3"E§(null);
         }
      }
      
      override public function close() : void
      {
         this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         mClip.stage.removeEventListener(Event.ENTER_FRAME,this.§[!V§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§#O§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§3"E§);
         mClip.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.§8c§);
         super.close();
      }
   }
}
