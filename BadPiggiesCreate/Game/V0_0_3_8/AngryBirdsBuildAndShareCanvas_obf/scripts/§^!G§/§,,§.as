package §^!G§
{
   import §6P§.§1"#§;
   import §]+§.§"G§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §,,§ extends §1"#§
   {
       
      
      private var §,@§:DisplayObject;
      
      private var §2!R§:DisplayObjectContainer;
      
      public function §,,§(param1:§"G§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§,@§ = param2;
         this.§2!R§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§,@§;
      }
      
      override protected function rollback() : void
      {
         if(this.§,@§ != null && this.§2!R§ != null && this.§,@§.parent == this.§2!R§)
         {
            this.§2!R§.removeChild(this.§,@§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§,@§ != null && this.§2!R§ != null && this.§,@§.parent != this.§2!R§)
         {
            this.§2!R§.addChild(this.§,@§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§2!R§;
      }
   }
}
