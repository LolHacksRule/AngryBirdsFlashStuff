package §=E§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §@;§
   {
       
      
      private var §2!>§:MovieClip;
      
      private var §3!w§:MovieClip;
      
      private var mDragging:Boolean = false;
      
      private var §+!§:§"!I§;
      
      public function §@;§(param1:MovieClip, param2:§"!I§)
      {
         super();
         param1.visible = false;
      }
      
      private function §6"B§(param1:MouseEvent) : void
      {
         if(this.mDragging)
         {
            this.§2!>§.y = this.§3!w§.mouseY;
            this.§2!>§.y = Math.min(this.§2!>§.y,this.§3!w§.height - this.§2!>§.height / 2);
            this.§2!>§.y = Math.max(0 + this.§2!>§.height / 2,this.§2!>§.y);
         }
      }
      
      private function §]3§(param1:MouseEvent) : void
      {
         this.mDragging = false;
      }
      
      private function § !!§(param1:MouseEvent) : void
      {
         this.mDragging = true;
      }
   }
}
