package §>!%§
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §'!m§ extends EventDispatcher
   {
      
      private static const §%!1§:int = 2;
       
      
      public var text:String = "";
      
      public var §^!Z§:int = 0;
      
      public var §7!?§:int = 0;
      
      public var §]2§:Sprite;
      
      public var textField:TextField;
      
      public var §,S§:int = 0;
      
      public var §^! §:Rectangle;
      
      public var §]9§:int = 1;
      
      public var enabled:Boolean = true;
      
      public function §'!m§()
      {
         super();
         this.§]2§ = new Sprite();
      }
      
      public function clear() : void
      {
         Mouse.cursor = MouseCursor.ARROW;
         this.§]2§.graphics.clear();
      }
      
      public function §?X§() : void
      {
         if(this.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
            this.§8&§();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
         }
      }
      
      public function §#^§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
         }
      }
      
      public function §7X§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
         }
      }
      
      protected function §8&§() : void
      {
         var _loc1_:Rectangle = this.textField.getCharBoundaries(this.§^!Z§);
         var _loc2_:Rectangle = this.textField.getCharBoundaries(this.§7!?§);
         this.§]2§.graphics.lineStyle(this.§]9§,0);
         var _loc3_:Number = Math.abs(_loc2_.x + _loc2_.width + §%!1§ - _loc1_.x);
         var _loc4_:Number = Math.abs(_loc2_.height);
         this.§]2§.graphics.moveTo(this.textField.x + _loc1_.x,this.textField.y + _loc1_.y + _loc4_);
         this.§]2§.graphics.lineTo(this.textField.x + _loc1_.x + _loc3_,this.textField.y + _loc1_.y + _loc4_);
      }
   }
}
