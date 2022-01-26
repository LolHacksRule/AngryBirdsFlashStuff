package §_-Sh§
{
   import §_-0e§.§_-SO§;
   import §_-Aa§.§_-Y4§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-wK§ extends §_-SO§
   {
       
      
      private var §_-x7§:DisplayObject;
      
      private var §_-1I§:DisplayObjectContainer;
      
      public function §_-wK§(param1:§_-Y4§, param2:DisplayObject)
      {
         super(param1);
         this.§_-x7§ = param2;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-x7§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-x7§ != null && this.§_-1I§ != null)
         {
            this.§_-1I§.addChild(this.§_-x7§);
            this.§_-1I§ = null;
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-x7§ != null && this.§_-x7§.parent != null)
         {
            this.§_-1I§ = this.§_-x7§.parent;
            this.§_-1I§.removeChild(this.§_-x7§);
         }
      }
   }
}
