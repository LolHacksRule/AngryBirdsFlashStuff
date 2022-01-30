package §=!9§
{
   import §'!D§.§&z§;
   import §["6§.§@D§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §@!A§ extends §&z§
   {
       
      
      private var §>!C§:DisplayObject;
      
      private var §`D§:DisplayObjectContainer;
      
      public function §@!A§(param1:§@D§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§>!C§ = param2;
         this.§`D§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§>!C§;
      }
      
      override protected function rollback() : void
      {
         if(this.§>!C§ != null && this.§`D§ != null && this.§>!C§.parent == this.§`D§)
         {
            this.§`D§.removeChild(this.§>!C§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§>!C§ != null && this.§`D§ != null && this.§>!C§.parent != this.§`D§)
         {
            this.§`D§.addChild(this.§>!C§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§`D§;
      }
   }
}
