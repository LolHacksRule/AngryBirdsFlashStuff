package §^!G§
{
   import §6P§.§1"#§;
   import §]+§.§"G§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §[!r§ extends §1"#§
   {
       
      
      private var §,@§:DisplayObject;
      
      private var §2!R§:DisplayObjectContainer;
      
      public function §[!r§(param1:§"G§, param2:DisplayObject)
      {
         super(param1);
         this.§,@§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§,@§;
      }
      
      override protected function rollback() : void
      {
         if(this.§,@§ != null && this.§2!R§ != null)
         {
            this.§2!R§.addChild(this.§,@§);
            this.§2!R§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§,@§ != null && this.§,@§.parent != null)
         {
            this.§2!R§ = this.§,@§.parent;
            this.§2!R§.removeChild(this.§,@§);
         }
      }
   }
}
