package §]! §
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §0!#§ extends EventDispatcher
   {
      
      private static const §?b§:int = 2;
       
      
      public var text:String = "";
      
      public var §73§:int = 0;
      
      public var § !N§:int = 0;
      
      public var §&!C§:Sprite;
      
      public var textField:TextField;
      
      public var §<N§:int = 0;
      
      public var §0!=§:Rectangle;
      
      public var §`x§:int = 1;
      
      public var enabled:Boolean = true;
      
      public function §0!#§()
      {
         super();
         this.§&!C§ = new Sprite();
      }
      
      public function clear() : void
      {
         Mouse.cursor = MouseCursor.ARROW;
         this.§&!C§.graphics.clear();
      }
      
      public function §0-§() : void
      {
         if(this.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
            this.§42§();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
         }
      }
      
      public function §2!%§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
         }
      }
      
      public function § f§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
         }
      }
      
      protected function §42§() : void
      {
         var _loc1_:Rectangle = this.textField.getCharBoundaries(this.§73§);
         var _loc2_:Rectangle = this.textField.getCharBoundaries(this.§ !N§);
         this.§&!C§.graphics.lineStyle(this.§`x§,0);
         var _loc3_:Number = Math.abs(_loc2_.x + _loc2_.width + §?b§ - _loc1_.x);
         var _loc4_:Number = Math.abs(_loc2_.height);
         this.§&!C§.graphics.moveTo(this.textField.x + _loc1_.x,this.textField.y + _loc1_.y + _loc4_);
         this.§&!C§.graphics.lineTo(this.textField.x + _loc1_.x + _loc3_,this.textField.y + _loc1_.y + _loc4_);
      }
   }
}
