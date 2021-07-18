package §50§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.utils.Timer;
   
   public class §+!&§ extends Shape
   {
      
      private static const §?0§:uint = 1325327;
      
      private static const §9!P§:uint = 2390303;
      
      private static const §8";§:int = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?0§ = 1325327;
            while(true)
            {
               §9!P§ = 2390303;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §8";§ = 100;
                     if(_loc2_ || §+!&§)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      private var §<H§:Timer;
      
      public function §+!&§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            while(true)
            {
               this.x = param1;
               loop1:
               while(_loc4_)
               {
                  this.y = param2;
                  loop2:
                  while(true)
                  {
                     graphics.lineStyle(0,0,0);
                     loop3:
                     while(true)
                     {
                        graphics.beginFill(16777215,1);
                        while(_loc4_)
                        {
                           while(_loc4_)
                           {
                              scaleY = 0.5;
                              if(_loc4_ || param2)
                              {
                                 addr40:
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       alpha = 0.4;
                                    }
                                    addr99:
                                 }
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    addr106:
                                    while(true)
                                    {
                                       filters = [new GlowFilter(§?0§,1,4,4,3)];
                                       §§goto(addr99);
                                    }
                                    §§goto(addr40);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            graphics.drawCircle(0,0,4);
            §§goto(addr106);
         }
      }
      
      public function highlight(param1:int = 0) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§<H§ = new Timer(param1 * §8";§,1);
            while(true)
            {
               this.§<H§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§5!_§);
               while(_loc3_ || _loc3_)
               {
                  this.§<H§.start();
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §5!_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            alpha = 1;
         }
         loop0:
         do
         {
            scaleX = 1;
            while(true)
            {
               scaleY = 1;
               while(!_loc3_)
               {
                  filters = [new GlowFilter(§9!P§,1,5,5,3)];
                  while(!(_loc3_ && _loc2_))
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                     if(!(_loc3_ && param1))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(!(_loc2_ || _loc3_));
         
      }
   }
}
