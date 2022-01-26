package §_-Sh§
{
   import §_-0e§.§_-SO§;
   import §_-Aa§.§_-Y4§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-Lw§ extends §_-SO§
   {
       
      
      private var §_-x7§:DisplayObject;
      
      private var §_-1I§:DisplayObjectContainer;
      
      public function §_-Lw§(param1:§_-Y4§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         super(param1);
         this.§_-x7§ = param2;
         this.§_-1I§ = param3;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-x7§;
      }
      
      override protected function rollback() : void
      {
         if(this.§_-x7§ != null && this.§_-1I§ != null && this.§_-x7§.parent == this.§_-1I§)
         {
            this.§_-1I§.removeChild(this.§_-x7§);
         }
      }
      
      override protected function action() : void
      {
         if(this.§_-x7§ != null && this.§_-1I§ != null && this.§_-x7§.parent != this.§_-1I§)
         {
            this.§_-1I§.addChild(this.§_-x7§);
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-1I§;
      }
   }
}
