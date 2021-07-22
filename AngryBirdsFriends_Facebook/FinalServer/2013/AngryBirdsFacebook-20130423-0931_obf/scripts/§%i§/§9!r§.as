package §%i§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!r§
   {
       
      
      private var §1Y§:Boolean = false;
      
      private var §,x§:MovieClip;
      
      public function §9!r§(param1:MovieClip, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.§,x§ = param1;
               while(true)
               {
                  this.§,x§.buttonMode = true;
                  loop3:
                  while(!(_loc3_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        this.selected = param2;
                        if(!(_loc3_ && param2))
                        {
                           addr50:
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 this.§,x§.addEventListener(MouseEvent.CLICK,this.§[!o§);
                                 continue loop3;
                                 §§goto(addr50);
                              }
                              addr86:
                           }
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get §>R§() : DisplayObject
      {
         return this.§,x§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§,x§.removeEventListener(MouseEvent.CLICK,this.§[!o§);
            do
            {
               this.§,x§ = null;
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §[!o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.selected);
            if(_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().selected = §§pop();
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§1Y§;
      }
      
      public function set selected(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§1Y§ = param1;
         }
         do
         {
            this.§,x§.gotoAndStop(this.§1Y§.toString());
            do
            {
               this.§>R§.dispatchEvent(new Event(Event.CHANGE));
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
   }
}
