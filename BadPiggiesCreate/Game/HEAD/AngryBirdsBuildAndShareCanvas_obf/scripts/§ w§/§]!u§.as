package § w§
{
   import §%!n§.§;!'§;
   import §`!#§.§[!s§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §]!u§ extends §[!s§
   {
       
      
      private var §[l§:DisplayObject;
      
      private var §9!#§:DisplayObjectContainer;
      
      public function §]!u§(param1:§;!'§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§[l§ = param2;
         this.§9!#§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§[l§;
      }
      
      override protected function rollback() : void
      {
         if(this.§[l§ != null && this.§9!#§ != null && this.§[l§.parent == this.§9!#§)
         {
            this.§9!#§.removeChild(this.§[l§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§[l§ != null && this.§9!#§ != null && this.§[l§.parent != this.§9!#§)
         {
            this.§9!#§.addChild(this.§[l§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§9!#§;
      }
   }
}
