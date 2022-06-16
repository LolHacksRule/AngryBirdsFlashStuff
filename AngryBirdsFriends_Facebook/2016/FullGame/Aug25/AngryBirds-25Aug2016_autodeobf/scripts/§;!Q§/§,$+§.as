package §;!Q§
{
   import §'!U§.§0!?§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,$+§ extends AbstractPopup
   {
       
      
      private const §7#0§:Number = 0;
      
      private const §^!O§:Number = -5;
      
      private const §&H§:Number = 5;
      
      private const §;"+§:Number = 50;
      
      private const §'"k§:Number = 4;
      
      private var §;#@§:Boolean = false;
      
      private var §,#Y§:Number = 0;
      
      private var §<"w§:Number = 0;
      
      private var §@!Y§:Number = 0;
      
      private var §-#G§:Number = 0;
      
      private var §4#7§:Number = 0;
      
      private var §'"f§:Number = 0;
      
      private var §?"O§:Number = 0;
      
      private var §-C§:Number = 0;
      
      private var §0#c§:Number = 0;
      
      private var §'#E§:Number = 4;
      
      private var mClip:MovieClip;
      
      public function §,$+§(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_RaffleTermsAndConditionsPopup[0]);
         this.mClip = §7!j§.mClip;
         this.mClip.stage.addEventListener(Event.ENTER_FRAME,this.§1#R§);
         this.mClip.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-!c§);
         this.mClip.stage.addEventListener(MouseEvent.MOUSE_UP,this.§&!x§);
         this.mClip.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.§^s§);
         this.mClip.TermsScrollBar.TermsScrollBar_Button.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.mClip.TermsScrollBar.TermsScrollBar_Button.addEventListener(MouseEvent.MOUSE_UP,this.§&!x§);
         this.mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§'#E§;
         this.§,#Y§ = this.mClip.TermsScrollBar.height;
         this.§<"w§ = this.mClip.TermsAndConditions_Text.y + this.§&H§;
         this.§@!Y§ = this.mClip.TermsAndConditions_Text.y + this.§,#Y§ - this.mClip.TermsAndConditions_Text.height + this.§;"+§;
         this.§-#G§ = this.mClip.TermsScrollBar.TermsScrollBar_Button.y + this.§7#0§;
         this.§4#7§ = this.§,#Y§ - this.mClip.TermsScrollBar.TermsScrollBar_Button.height + this.§^!O§;
         this.§-C§ = this.mClip.TermsAndConditions_Text.y;
         this.§>!J§();
      }
      
      protected function onMouseDown(param1:MouseEvent) : void
      {
         this.§;#@§ = true;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "CLOSE_POPUP":
               close();
               break;
            case "SCROLL_DOWN":
               this.§0#c§ = 0;
               this.mClip.Button_Close.mouseEnabled = false;
               this.§;#@§ = true;
               this.§'"f§ = this.mClip.TermsScrollBar.TermsScrollBar_Button.y - (this.mClip.TermsScrollBar as MovieClip).mouseY;
         }
      }
      
      private function §^s§(param1:MouseEvent) : void
      {
         if(!this.§;#@§)
         {
            if(param1.delta < 0)
            {
               this.§0#c§ += 5;
            }
            else
            {
               this.§0#c§ -= 5;
            }
            this.§>!J§();
         }
      }
      
      private function §1#R§(param1:Event) : void
      {
         if(this.mClip.TermsScrollBar.TermsScrollBar_Button.scaleY != this.§'#E§)
         {
            this.mClip.TermsScrollBar.TermsScrollBar_Button.scaleY = this.§'#E§;
         }
         if(!this.§;#@§ && this.§0#c§ != 0)
         {
            this.mClip.TermsScrollBar.TermsScrollBar_Button.y += this.§0#c§;
            this.§0#c§ *= 0.8;
            this.§5"]§();
            this.§>!J§();
         }
         var _loc2_:Number = this.mClip.TermsAndConditions_Text.y - (this.§<"w§ + this.§-C§);
         this.mClip.TermsAndConditions_Text.y -= _loc2_ / 5;
      }
      
      private function §-!c§(param1:MouseEvent) : void
      {
         if(this.§;#@§)
         {
            this.mClip.TermsScrollBar.TermsScrollBar_Button.y = (this.mClip.TermsScrollBar as MovieClip).mouseY + this.§'"f§;
            this.§5"]§();
            this.§>!J§();
         }
      }
      
      private function §5"]§() : void
      {
         if(this.mClip.TermsScrollBar.TermsScrollBar_Button.y < this.§-#G§)
         {
            this.mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§-#G§;
            this.§0#c§ = 0;
         }
         else if(this.mClip.TermsScrollBar.TermsScrollBar_Button.y > this.§4#7§)
         {
            this.mClip.TermsScrollBar.TermsScrollBar_Button.y = this.§4#7§;
            this.§0#c§ = 0;
         }
      }
      
      private function §>!J§() : void
      {
         this.§?"O§ = this.mClip.TermsScrollBar.TermsScrollBar_Button.y / this.§4#7§;
         if(this.§?"O§ < 0)
         {
            this.§?"O§ = 0;
         }
         else if(this.§?"O§ > 0.999)
         {
            this.§?"O§ = 1;
         }
         this.§-C§ = (this.§@!Y§ - this.§<"w§) * this.§?"O§;
      }
      
      private function §&!x§(param1:MouseEvent) : void
      {
         this.§0#c§ = 0;
         this.mClip.Button_Close.mouseEnabled = true;
         this.§;#@§ = false;
      }
      
      override public function dispose() : void
      {
         this.mClip.stage.removeEventListener(Event.ENTER_FRAME,this.§1#R§);
         this.mClip.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§-!c§);
         this.mClip.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§&!x§);
         this.mClip.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.§^s§);
         this.mClip.TermsScrollBar.TermsScrollBar_Button.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.mClip.TermsScrollBar.TermsScrollBar_Button.removeEventListener(MouseEvent.MOUSE_UP,this.§&!x§);
         super.dispose();
      }
   }
}
