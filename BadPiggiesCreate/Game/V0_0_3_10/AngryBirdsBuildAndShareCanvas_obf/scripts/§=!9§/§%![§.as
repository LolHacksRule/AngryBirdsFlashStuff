package §=!9§
{
   import §'!D§.§&z§;
   import §["6§.§@D§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §%![§ extends §&z§
   {
       
      
      private var §>!C§:DisplayObject;
      
      private var §`D§:DisplayObjectContainer;
      
      public function §%![§(param1:§@D§, param2:DisplayObject)
      {
         super(param1);
         this.§>!C§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§>!C§;
      }
      
      override protected function rollback() : void
      {
         if(this.§>!C§ != null && this.§`D§ != null)
         {
            this.§`D§.addChild(this.§>!C§);
            this.§`D§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§>!C§ != null && this.§>!C§.parent != null)
         {
            this.§`D§ = this.§>!C§.parent;
            this.§`D§.removeChild(this.§>!C§);
         }
      }
   }
}
