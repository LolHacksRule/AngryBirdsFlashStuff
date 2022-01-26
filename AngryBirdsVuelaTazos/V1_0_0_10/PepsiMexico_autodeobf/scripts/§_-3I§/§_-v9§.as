package §_-3I§
{
   import §_-SJ§.§_-Q5§;
   import §_-sN§.§_-7q§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-v9§ extends §_-7q§
   {
       
      
      private var §_-CB§:DisplayObject;
      
      private var §_-Za§:DisplayObjectContainer;
      
      public function §_-v9§(param1:§_-Q5§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§_-CB§ = param2;
         this.§_-Za§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-CB§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-CB§ != null && this.§_-Za§ != null && this.§_-CB§.parent == this.§_-Za§)
         {
            this.§_-Za§.removeChild(this.§_-CB§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-CB§ != null && this.§_-Za§ != null && this.§_-CB§.parent != this.§_-Za§)
         {
            this.§_-Za§.addChild(this.§_-CB§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-Za§;
      }
   }
}
