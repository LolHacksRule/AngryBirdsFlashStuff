package §%=§
{
   import §4!7§.§%!m§;
   import §;!,§.§#D§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §2_§ extends §#D§
   {
       
      
      private var §?!p§:DisplayObject;
      
      private var _parent:DisplayObjectContainer;
      
      public function §2_§(param1:§%!m§, param2:DisplayObject)
      {
         super(param1);
         this.§?!p§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§?!p§;
      }
      
      override protected function rollback() : void
      {
         if(this.§?!p§ != null && this._parent != null)
         {
            this._parent.addChild(this.§?!p§);
            this._parent = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§?!p§ != null && this.§?!p§.parent != null)
         {
            this._parent = this.§?!p§.parent;
            this._parent.removeChild(this.§?!p§);
         }
      }
   }
}
