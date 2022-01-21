package §<!R§
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §&?§ extends EventDispatcher
   {
      
      private static const §[f§:int = 2;
       
      
      public var text:String = "";
      
      public var §'n§:int = 0;
      
      public var §?N§:int = 0;
      
      public var §'I§:Sprite;
      
      public var textField:TextField;
      
      public var §%[§:int = 0;
      
      public var §=!<§:Rectangle;
      
      public var §4!l§:int = 1;
      
      public var enabled:Boolean = true;
      
      public function §&?§()
      {
         super();
         this.§'I§ = new Sprite();
      }
      
      public function clear() : void
      {
         Mouse.cursor = MouseCursor.ARROW;
         this.§'I§.graphics.clear();
      }
      
      public function § !V§() : void
      {
         if(this.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
            this.§"!Z§();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
         }
      }
      
      public function §"!c§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
         }
      }
      
      public function §4X§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
         }
      }
      
      protected function §"!Z§() : void
      {
         var _loc1_:Rectangle = this.textField.getCharBoundaries(this.§'n§);
         var _loc2_:Rectangle = this.textField.getCharBoundaries(this.§?N§);
         this.§'I§.graphics.lineStyle(this.§4!l§,0);
         var _loc3_:Number = Math.abs(_loc2_.x + _loc2_.width + §[f§ - _loc1_.x);
         var _loc4_:Number = Math.abs(_loc2_.height);
         this.§'I§.graphics.moveTo(this.textField.x + _loc1_.x,this.textField.y + _loc1_.y + _loc4_);
         this.§'I§.graphics.lineTo(this.textField.x + _loc1_.x + _loc3_,this.textField.y + _loc1_.y + _loc4_);
      }
   }
}
