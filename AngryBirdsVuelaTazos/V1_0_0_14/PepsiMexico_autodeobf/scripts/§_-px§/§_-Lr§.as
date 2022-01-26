package §_-px§
{
   import §_-8p§.§_-dW§;
   import §_-wo§.§_-nE§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-Lr§ extends §_-nE§
   {
       
      
      private var §_-lg§:DisplayObject;
      
      private var §_-r3§:DisplayObjectContainer;
      
      public function §_-Lr§(param1:§_-dW§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§_-lg§ = param2;
         this.§_-r3§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-lg§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-lg§ != null && this.§_-r3§ != null && this.§_-lg§.parent == this.§_-r3§)
         {
            this.§_-r3§.removeChild(this.§_-lg§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-lg§ != null && this.§_-r3§ != null && this.§_-lg§.parent != this.§_-r3§)
         {
            this.§_-r3§.addChild(this.§_-lg§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-r3§;
      }
   }
}
