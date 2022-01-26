package §_-nb§
{
   import §_-Ou§.§_-DP§;
   import §_-hn§.§_-ZZ§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-N7§ extends §_-ZZ§
   {
       
      
      private var §_-Db§:DisplayObject;
      
      private var §_-0z§:DisplayObjectContainer;
      
      public function §_-N7§(param1:§_-DP§, param2:DisplayObject)
      {
         super(param1);
         this.§_-Db§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-Db§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-Db§ != null && this.§_-0z§ != null)
         {
            this.§_-0z§.addChild(this.§_-Db§);
            this.§_-0z§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-Db§ != null && this.§_-Db§.parent != null)
         {
            this.§_-0z§ = this.§_-Db§.parent;
            this.§_-0z§.removeChild(this.§_-Db§);
         }
      }
   }
}
