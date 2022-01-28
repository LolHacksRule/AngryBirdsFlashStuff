package §%!m§
{
   import §1!k§.§4!J§;
   import §=b§.§%"2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §4!c§ extends §4!J§
   {
       
      
      private var §"!c§:DisplayObject;
      
      private var §^"4§:DisplayObjectContainer;
      
      public function §4!c§(param1:§%"2§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§"!c§ = param2;
         this.§^"4§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§"!c§;
      }
      
      override protected function rollback() : void
      {
         if(this.§"!c§ != null && this.§^"4§ != null && this.§"!c§.parent == this.§^"4§)
         {
            this.§^"4§.removeChild(this.§"!c§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§"!c§ != null && this.§^"4§ != null && this.§"!c§.parent != this.§^"4§)
         {
            this.§^"4§.addChild(this.§"!c§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§^"4§;
      }
   }
}
