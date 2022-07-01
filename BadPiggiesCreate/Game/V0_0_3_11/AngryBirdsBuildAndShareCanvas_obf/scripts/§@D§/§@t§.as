package §@D§
{
   import §1&§.§0?§;
   import §8!X§.§7'§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §@t§ extends §0?§
   {
       
      
      private var §&J§:DisplayObject;
      
      private var §0!^§:DisplayObjectContainer;
      
      public function §@t§(param1:§7'§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§&J§ = param2;
         this.§0!^§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&J§;
      }
      
      override protected function rollback() : void
      {
         if(this.§&J§ != null && this.§0!^§ != null && this.§&J§.parent == this.§0!^§)
         {
            this.§0!^§.removeChild(this.§&J§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§&J§ != null && this.§0!^§ != null && this.§&J§.parent != this.§0!^§)
         {
            this.§0!^§.addChild(this.§&J§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§0!^§;
      }
   }
}
