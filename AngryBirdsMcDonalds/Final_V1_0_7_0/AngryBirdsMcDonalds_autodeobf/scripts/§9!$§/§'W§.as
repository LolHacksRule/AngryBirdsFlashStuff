package §9!$§
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §'W§ extends EventDispatcher
   {
      
      private static const §&P§:int = 2;
       
      
      public var text:String = "";
      
      public var §4!e§:int = 0;
      
      public var §,!#§:int = 0;
      
      public var §0x§:Sprite;
      
      public var textField:TextField;
      
      public var §8!9§:int = 0;
      
      public var §?!`§:Rectangle;
      
      public var §@D§:int = 1;
      
      public var enabled:Boolean = true;
      
      public function §'W§()
      {
         super();
         this.§0x§ = new Sprite();
      }
      
      public function clear() : void
      {
         Mouse.cursor = MouseCursor.ARROW;
         this.§0x§.graphics.clear();
      }
      
      public function §`v§() : void
      {
         if(this.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
            this.§1u§();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
         }
      }
      
      public function §2T§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
         }
      }
      
      public function §0!'§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
         }
      }
      
      protected function §1u§() : void
      {
         var _loc1_:Rectangle = this.textField.getCharBoundaries(this.§4!e§);
         var _loc2_:Rectangle = this.textField.getCharBoundaries(this.§,!#§);
         this.§0x§.graphics.lineStyle(this.§@D§,0);
         var _loc3_:Number = Math.abs(_loc2_.x + _loc2_.width + §&P§ - _loc1_.x);
         var _loc4_:Number = Math.abs(_loc2_.height);
         this.§0x§.graphics.moveTo(this.textField.x + _loc1_.x,this.textField.y + _loc1_.y + _loc4_);
         this.§0x§.graphics.lineTo(this.textField.x + _loc1_.x + _loc3_,this.textField.y + _loc1_.y + _loc4_);
      }
   }
}
