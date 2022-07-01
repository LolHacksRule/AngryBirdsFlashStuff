package §@D§
{
   import §1&§.§0?§;
   import §8!X§.§7'§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §89§ extends §0?§
   {
       
      
      private var §&J§:DisplayObject;
      
      private var §0!^§:DisplayObjectContainer;
      
      public function §89§(param1:§7'§, param2:DisplayObject)
      {
         super(param1);
         this.§&J§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&J§;
      }
      
      override protected function rollback() : void
      {
         if(this.§&J§ != null && this.§0!^§ != null)
         {
            this.§0!^§.addChild(this.§&J§);
            this.§0!^§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§&J§ != null && this.§&J§.parent != null)
         {
            this.§0!^§ = this.§&J§.parent;
            this.§0!^§.removeChild(this.§&J§);
         }
      }
   }
}
