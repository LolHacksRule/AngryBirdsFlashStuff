package §,B§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.utils.Timer;
   
   public class §="9§ extends Shape
   {
      
      private static const §0A§:uint = 1325327;
      
      private static const §2""§:uint = 2390303;
      
      private static const §],§:int = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0A§ = 1325327;
         }
         while(true)
         {
            §2""§ = 2390303;
            while(!(_loc2_ && _loc1_))
            {
               §],§ = 100;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §?p§:Timer;
      
      public function §="9§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.x = param1;
               loop1:
               while(true)
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
                        while(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              graphics.drawCircle(0,0,4);
                              continue loop2;
                           }
                           continue loop0;
                           loop8:
                           while(_loc3_ || this)
                           {
                              while(true)
                              {
                                 scaleY = 0.5;
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop8;
                                 }
                                 addr39:
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 addr96:
                                 while(_loc3_)
                                 {
                                    scaleX = 0.5;
                                    continue loop8;
                                    §§goto(addr39);
                                 }
                                 while(true)
                                 {
                                    alpha = 0.4;
                                    §§goto(addr82);
                                 }
                                 addr82:
                              }
                              return;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function highlight(param1:int = 0) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?p§ = new Timer(param1 * §],§,1);
            while(true)
            {
               this.§?p§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§"Z§);
               while(!_loc3_)
               {
                  this.§?p§.start();
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §"Z§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            alpha = 1;
         }
         loop0:
         while(true)
         {
            scaleX = 1;
            loop1:
            while(true)
            {
               scaleY = 1;
               while(!_loc2_)
               {
                  filters = [new GlowFilter(§2""§,1,5,5,3)];
                  continue loop1;
                  if(_loc3_)
                  {
                     return;
                  }
               }
               continue loop0;
            }
         }
      }
   }
}
