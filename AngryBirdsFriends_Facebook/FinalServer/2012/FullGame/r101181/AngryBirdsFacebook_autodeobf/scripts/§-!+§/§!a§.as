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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            do
            {
               param1.visible = false;
            }
            while(_loc3_);
            
         }
      }
      
      private function §3[§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.mDragging)
            {
               loop0:
               do
               {
                  this.§4!V§.y = this.§2""§.mouseY;
                  while(true)
                  {
                     this.§4!V§.y = Math.min(this.§4!V§.y,this.§2""§.height - this.§4!V§.height / 2);
                     while(!(_loc3_ && this))
                     {
                        this.§4!V§.y = Math.max(0 + this.§4!V§.height / 2,this.§4!V§.y);
                        if(_loc2_ || this)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!_loc2_);
               
               addr103:
            }
            return;
         }
         §§goto(addr103);
      }
      
      private function §=!M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mDragging = false;
         }
      }
      
      private function §;8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mDragging = true;
         }
      }
   }
}
