package §2!o§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §[N§
   {
       
      
      private var §^0§:MovieClip;
      
      private var §+!^§:MovieClip;
      
      private var mDragging:Boolean = false;
      
      private var §-"X§:§?r§;
      
      public function §[N§(param1:MovieClip, param2:§?r§)
      {
         super();
         param1.visible = false;
      }
      
      private function §6!`§(param1:MouseEvent) : void
      {
         if(this.mDragging)
         {
            this.§^0§.y = this.§+!^§.mouseY;
            this.§^0§.y = Math.min(this.§^0§.y,this.§+!^§.height - this.§^0§.height / 2);
            this.§^0§.y = Math.max(0 + this.§^0§.height / 2,this.§^0§.y);
         }
      }
      
      private function §"!+§(param1:MouseEvent) : void
      {
         this.mDragging = false;
      }
      
      private function §%v§(param1:MouseEvent) : void
      {
         this.mDragging = true;
      }
   }
}
