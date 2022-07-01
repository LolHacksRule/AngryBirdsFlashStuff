package §%=§
{
   import §4!7§.§%!m§;
   import §;!,§.§#D§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §1!H§ extends §#D§
   {
       
      
      private var §?!p§:DisplayObject;
      
      private var _parent:DisplayObjectContainer;
      
      public function §1!H§(param1:§%!m§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§?!p§ = param2;
         this._parent = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§?!p§;
      }
      
      override protected function rollback() : void
      {
         if(this.§?!p§ != null && this._parent != null && this.§?!p§.parent == this._parent)
         {
            this._parent.removeChild(this.§?!p§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§?!p§ != null && this._parent != null && this.§?!p§.parent != this._parent)
         {
            this._parent.addChild(this.§?!p§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this._parent;
      }
   }
}
