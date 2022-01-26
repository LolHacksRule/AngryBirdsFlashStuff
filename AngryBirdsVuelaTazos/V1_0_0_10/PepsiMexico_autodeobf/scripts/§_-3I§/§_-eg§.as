package §_-3I§
{
   import §_-SJ§.§_-Q5§;
   import §_-sN§.§_-7q§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-eg§ extends §_-7q§
   {
       
      
      private var §_-CB§:DisplayObject;
      
      private var §_-Za§:DisplayObjectContainer;
      
      public function §_-eg§(param1:§_-Q5§, param2:DisplayObject)
      {
         super(param1);
         this.§_-CB§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-CB§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-CB§ != null && this.§_-Za§ != null)
         {
            this.§_-Za§.addChild(this.§_-CB§);
            this.§_-Za§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-CB§ != null && this.§_-CB§.parent != null)
         {
            this.§_-Za§ = this.§_-CB§.parent;
            this.§_-Za§.removeChild(this.§_-CB§);
         }
      }
   }
}
