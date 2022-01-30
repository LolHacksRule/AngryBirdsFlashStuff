package §5"6§
{
   import §1R§.§+s§;
   import §6!>§.§>!#§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §'0§ extends §+s§
   {
       
      
      private var §-"7§:DisplayObject;
      
      private var §#f§:DisplayObjectContainer;
      
      public function §'0§(param1:§>!#§, param2:DisplayObject)
      {
         super(param1);
         this.§-"7§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§-"7§;
      }
      
      override protected function rollback() : void
      {
         if(this.§-"7§ != null && this.§#f§ != null)
         {
            this.§#f§.addChild(this.§-"7§);
            this.§#f§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§-"7§ != null && this.§-"7§.parent != null)
         {
            this.§#f§ = this.§-"7§.parent;
            this.§#f§.removeChild(this.§-"7§);
         }
      }
   }
}
