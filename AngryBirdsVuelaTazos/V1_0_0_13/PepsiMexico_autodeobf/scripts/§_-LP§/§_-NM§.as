package §_-lp§
{
   import §_-My§.§_-ya§;
   import §_-h2§.§_-CC§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-NM§ extends §_-ya§
   {
       
      
      private var §_-YF§:DisplayObject;
      
      private var §_-K-§:DisplayObjectContainer;
      
      public function §_-NM§(param1:§_-CC§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§_-YF§ = param2;
         this.§_-K-§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-YF§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-YF§ != null && this.§_-K-§ != null && this.§_-YF§.parent == this.§_-K-§)
         {
            this.§_-K-§.removeChild(this.§_-YF§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-YF§ != null && this.§_-K-§ != null && this.§_-YF§.parent != this.§_-K-§)
         {
            this.§_-K-§.addChild(this.§_-YF§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-K-§;
      }
   }
}
