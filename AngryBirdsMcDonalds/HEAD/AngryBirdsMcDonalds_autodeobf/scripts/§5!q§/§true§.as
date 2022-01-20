package §5!q§
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §true§ extends EventDispatcher
   {
      
      private static const §#!C§:int = 2;
       
      
      public var text:String = "";
      
      public var §9^§:int = 0;
      
      public var §&m§:int = 0;
      
      public var §&[§:Sprite;
      
      public var textField:TextField;
      
      public var §@N§:int = 0;
      
      public var §8Z§:Rectangle;
      
      public var §[5§:int = 1;
      
      public var enabled:Boolean = true;
      
      public function §true§()
      {
         super();
         this.§&[§ = new Sprite();
      }
      
      public function clear() : void
      {
         Mouse.cursor = MouseCursor.ARROW;
         this.§&[§.graphics.clear();
      }
      
      public function §%L§() : void
      {
         if(this.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
            this.§0L§();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
         }
      }
      
      public function §1!K§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
         }
      }
      
      public function §]%§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
         }
      }
      
      protected function §0L§() : void
      {
         var _loc1_:Rectangle = this.textField.getCharBoundaries(this.§9^§);
         var _loc2_:Rectangle = this.textField.getCharBoundaries(this.§&m§);
         this.§&[§.graphics.lineStyle(this.§[5§,0);
         var _loc3_:Number = Math.abs(_loc2_.x + _loc2_.width + §#!C§ - _loc1_.x);
         var _loc4_:Number = Math.abs(_loc2_.height);
         this.§&[§.graphics.moveTo(this.textField.x + _loc1_.x,this.textField.y + _loc1_.y + _loc4_);
         this.§&[§.graphics.lineTo(this.textField.x + _loc1_.x + _loc3_,this.textField.y + _loc1_.y + _loc4_);
      }
   }
}
