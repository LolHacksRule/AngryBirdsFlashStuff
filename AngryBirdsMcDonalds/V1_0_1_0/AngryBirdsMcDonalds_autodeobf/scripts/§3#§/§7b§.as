package §3#§
{
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §7b§ extends EventDispatcher
   {
      
      private static const § !g§:int = 2;
       
      
      public var text:String = "";
      
      public var §>!^§:int = 0;
      
      public var §^!`§:int = 0;
      
      public var §'D§:Sprite;
      
      public var textField:TextField;
      
      public var §6$§:int = 0;
      
      public var §'B§:Rectangle;
      
      public var §-!=§:int = 1;
      
      public var enabled:Boolean = true;
      
      public function §7b§()
      {
         super();
         this.§'D§ = new Sprite();
      }
      
      public function clear() : void
      {
         Mouse.cursor = MouseCursor.ARROW;
         this.§'D§.graphics.clear();
      }
      
      public function §&!b§() : void
      {
         if(this.enabled)
         {
            Mouse.cursor = MouseCursor.BUTTON;
            this.§@§();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OVER));
         }
      }
      
      public function §-!`§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
         }
      }
      
      public function §]!N§() : void
      {
         if(this.enabled)
         {
            this.clear();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
         }
      }
      
      protected function §@§() : void
      {
         var _loc1_:Rectangle = this.textField.getCharBoundaries(this.§>!^§);
         var _loc2_:Rectangle = this.textField.getCharBoundaries(this.§^!`§);
         this.§'D§.graphics.lineStyle(this.§-!=§,0);
         var _loc3_:Number = Math.abs(_loc2_.x + _loc2_.width + § !g§ - _loc1_.x);
         var _loc4_:Number = Math.abs(_loc2_.height);
         this.§'D§.graphics.moveTo(this.textField.x + _loc1_.x,this.textField.y + _loc1_.y + _loc4_);
         this.§'D§.graphics.lineTo(this.textField.x + _loc1_.x + _loc3_,this.textField.y + _loc1_.y + _loc4_);
      }
   }
}
