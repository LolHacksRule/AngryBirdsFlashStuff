package §_-px§
{
   import §_-8p§.§_-dW§;
   import §_-wo§.§_-nE§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-GF§ extends §_-nE§
   {
       
      
      private var §_-lg§:DisplayObject;
      
      private var §_-r3§:DisplayObjectContainer;
      
      public function §_-GF§(param1:§_-dW§, param2:DisplayObject)
      {
         super(param1);
         this.§_-lg§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-lg§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-lg§ != null && this.§_-r3§ != null)
         {
            this.§_-r3§.addChild(this.§_-lg§);
            this.§_-r3§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-lg§ != null && this.§_-lg§.parent != null)
         {
            this.§_-r3§ = this.§_-lg§.parent;
            this.§_-r3§.removeChild(this.§_-lg§);
         }
      }
   }
}
