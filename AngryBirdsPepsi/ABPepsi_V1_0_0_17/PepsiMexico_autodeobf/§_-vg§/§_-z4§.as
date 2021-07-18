package §_-vg§
{
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-t9§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-z4§ extends §_-t9§
   {
       
      
      private var §_-9Z§:DisplayObject;
      
      private var §_-AP§:DisplayObjectContainer;
      
      public function §_-z4§(param1:§_-Ps§, param2:DisplayObject)
      {
         super(param1);
         this.§_-9Z§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-9Z§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-9Z§ != null && this.§_-AP§ != null)
         {
            this.§_-AP§.addChild(this.§_-9Z§);
            this.§_-AP§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-9Z§ != null && this.§_-9Z§.parent != null)
         {
            this.§_-AP§ = this.§_-9Z§.parent;
            this.§_-AP§.removeChild(this.§_-9Z§);
         }
      }
   }
}
