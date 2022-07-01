package §%!m§
{
   import §1!k§.§4!J§;
   import §=b§.§%"2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §9Y§ extends §4!J§
   {
       
      
      private var §"!c§:DisplayObject;
      
      private var §^"4§:DisplayObjectContainer;
      
      public function §9Y§(param1:§%"2§, param2:DisplayObject)
      {
         super(param1);
         this.§"!c§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§"!c§;
      }
      
      override protected function rollback() : void
      {
         if(this.§"!c§ != null && this.§^"4§ != null)
         {
            this.§^"4§.addChild(this.§"!c§);
            this.§^"4§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§"!c§ != null && this.§"!c§.parent != null)
         {
            this.§^"4§ = this.§"!c§.parent;
            this.§^"4§.removeChild(this.§"!c§);
         }
      }
   }
}
