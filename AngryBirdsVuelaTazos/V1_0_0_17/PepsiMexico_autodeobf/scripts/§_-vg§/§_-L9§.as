package §_-vg§
{
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-t9§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-L9§ extends §_-t9§
   {
       
      
      private var §_-9Z§:DisplayObject;
      
      private var §_-AP§:DisplayObjectContainer;
      
      public function §_-L9§(param1:§_-Ps§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§_-9Z§ = param2;
         this.§_-AP§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-9Z§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-9Z§ != null && this.§_-AP§ != null && this.§_-9Z§.parent == this.§_-AP§)
         {
            this.§_-AP§.removeChild(this.§_-9Z§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-9Z§ != null && this.§_-AP§ != null && this.§_-9Z§.parent != this.§_-AP§)
         {
            this.§_-AP§.addChild(this.§_-9Z§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-AP§;
      }
   }
}
