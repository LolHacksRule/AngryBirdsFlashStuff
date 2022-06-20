package §-!+§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §!a§
   {
       
      
      private var §4!V§:MovieClip;
      
      private var §2""§:MovieClip;
      
      private var mDragging:Boolean = false;
      
      private var §]![§:§5!!§;
      
      public function §!a§(param1:MovieClip, param2:§5!!§)
      {
         super();
         param1.visible = false;
      }
      
      private function §3[§(param1:MouseEvent) : void
      {
         if(this.mDragging)
         {
            this.§4!V§.y = this.§2""§.mouseY;
            this.§4!V§.y = Math.min(this.§4!V§.y,this.§2""§.height - this.§4!V§.height / 2);
            this.§4!V§.y = Math.max(0 + this.§4!V§.height / 2,this.§4!V§.y);
         }
      }
      
      private function §=!M§(param1:MouseEvent) : void
      {
         this.mDragging = false;
      }
      
      private function §;8§(param1:MouseEvent) : void
      {
         this.mDragging = true;
      }
   }
}
