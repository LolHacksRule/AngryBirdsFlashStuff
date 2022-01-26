package §_-nb§
{
   import §_-Ou§.§_-DP§;
   import §_-hn§.§_-ZZ§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-mR§ extends §_-ZZ§
   {
       
      
      private var §_-Db§:DisplayObject;
      
      private var §_-0z§:DisplayObjectContainer;
      
      public function §_-mR§(param1:§_-DP§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§_-Db§ = param2;
         this.§_-0z§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-Db§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-Db§ != null && this.§_-0z§ != null && this.§_-Db§.parent == this.§_-0z§)
         {
            this.§_-0z§.removeChild(this.§_-Db§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-Db§ != null && this.§_-0z§ != null && this.§_-Db§.parent != this.§_-0z§)
         {
            this.§_-0z§.addChild(this.§_-Db§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-0z§;
      }
   }
}
