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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            do
            {
               param1.visible = false;
            }
            while(!_loc3_);
            
         }
      }
      
      private function §6!`§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.mDragging)
            {
               loop0:
               while(true)
               {
                  this.§^0§.y = this.§+!^§.mouseY;
                  addr100:
                  while(true)
                  {
                     this.§^0§.y = Math.min(this.§^0§.y,this.§+!^§.height - this.§^0§.height / 2);
                     do
                     {
                        this.§^0§.y = Math.max(0 + this.§^0§.height / 2,this.§^0§.y);
                     }
                     while(!_loc3_);
                     
                     if(!_loc2_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr20);
               }
            }
            addr20:
            return;
         }
         §§goto(addr100);
      }
      
      private function §"!+§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mDragging = false;
         }
      }
      
      private function §%v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.mDragging = true;
         }
      }
   }
}
