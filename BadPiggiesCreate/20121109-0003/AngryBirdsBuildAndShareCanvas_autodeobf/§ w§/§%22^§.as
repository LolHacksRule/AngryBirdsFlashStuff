package § w§
{
   import §%!n§.§;!'§;
   import §`!#§.§[!s§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §"^§ extends §[!s§
   {
       
      
      private var §[l§:DisplayObject;
      
      private var §9!#§:DisplayObjectContainer;
      
      public function §"^§(param1:§;!'§, param2:DisplayObject)
      {
         super(param1);
         this.§[l§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§[l§;
      }
      
      override protected function rollback() : void
      {
         if(this.§[l§ != null && this.§9!#§ != null)
         {
            this.§9!#§.addChild(this.§[l§);
            this.§9!#§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§[l§ != null && this.§[l§.parent != null)
         {
            this.§9!#§ = this.§[l§.parent;
            this.§9!#§.removeChild(this.§[l§);
         }
      }
   }
}
