package §5"6§
{
   import §1R§.§+s§;
   import §6!>§.§>!#§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §!9§ extends §+s§
   {
       
      
      private var §-"7§:DisplayObject;
      
      private var §#f§:DisplayObjectContainer;
      
      public function §!9§(param1:§>!#§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§-"7§ = param2;
         this.§#f§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§-"7§;
      }
      
      override protected function rollback() : void
      {
         if(this.§-"7§ != null && this.§#f§ != null && this.§-"7§.parent == this.§#f§)
         {
            this.§#f§.removeChild(this.§-"7§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§-"7§ != null && this.§#f§ != null && this.§-"7§.parent != this.§#f§)
         {
            this.§#f§.addChild(this.§-"7§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§#f§;
      }
   }
}
