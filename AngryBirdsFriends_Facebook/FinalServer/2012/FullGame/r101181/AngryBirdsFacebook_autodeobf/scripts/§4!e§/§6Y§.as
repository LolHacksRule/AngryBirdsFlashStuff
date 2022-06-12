package §4!e§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6Y§
   {
       
      
      private var §'!K§:Boolean = false;
      
      private var §"d§:MovieClip;
      
      public function §6Y§(param1:MovieClip, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§"d§ = param1;
            loop1:
            while(true)
            {
               this.§"d§.buttonMode = true;
               loop2:
               do
               {
                  this.§"d§.addEventListener(MouseEvent.CLICK,this.§5V§);
                  while(_loc4_)
                  {
                     if(_loc4_)
                     {
                        this.selected = param2;
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               while(!(_loc4_ || param2));
               
               return;
            }
         }
      }
      
      public function get §[%§() : DisplayObject
      {
         return this.§"d§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"d§.removeEventListener(MouseEvent.CLICK,this.§5V§);
         }
         do
         {
            this.§"d§ = null;
         }
         while(!_loc2_);
         
      }
      
      private function §5V§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.selected);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().selected = §§pop();
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§'!K§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!K§ = param1;
            while(true)
            {
               this.§"d§.gotoAndStop(this.§'!K§.toString());
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§[%§.dispatchEvent(new Event(Event.CHANGE));
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
   }
}
