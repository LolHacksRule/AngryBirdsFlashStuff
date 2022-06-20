package §<m§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class § !h§
   {
       
      
      private var §3!Y§:MovieClip;
      
      private var §`#§:MovieClip;
      
      private var mDragging:Boolean = false;
      
      private var §;!I§:§9d§;
      
      public function § !h§(param1:MovieClip, param2:§9d§)
      {
         super();
         param1.visible = false;
      }
      
      private function §"!R§(param1:MouseEvent) : void
      {
         if(this.mDragging)
         {
            this.§3!Y§.y = this.§`#§.mouseY;
            this.§3!Y§.y = Math.min(this.§3!Y§.y,this.§`#§.height - this.§3!Y§.height / 2);
            this.§3!Y§.y = Math.max(0 + this.§3!Y§.height / 2,this.§3!Y§.y);
         }
      }
      
      private function §&"'§(param1:MouseEvent) : void
      {
         this.mDragging = false;
      }
      
      private function §continue§(param1:MouseEvent) : void
      {
         this.mDragging = true;
      }
   }
}
