package §^!k§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class §"!,§ extends Shape
   {
      
      private static var §8!O§:int;
       
      
      private const §<!T§:int = 100;
      
      private const §3"<§:int = 500;
      
      private var §9R§:int = 0;
      
      public function §"!,§(param1:int, param2:int)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            if(getTimer() - §8!O§ >= this.§<!T§)
            {
               this.§9R§ = 0;
               break;
            }
            if(!(_loc4_ && param2))
            {
               continue;
            }
            addr110:
            loop5:
            while(true)
            {
               loop3:
               while(true)
               {
                  this.x = param1;
                  addr39:
                  addr64:
                  while(!(_loc4_ && param2))
                  {
                     if(!_loc4_)
                     {
                        this.y = param2;
                        if(_loc3_ || _loc3_)
                        {
                           return;
                        }
                        continue;
                     }
                     continue loop5;
                  }
                  while(true)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        break loop0;
                     }
                     continue loop3;
                     §§goto(addr39);
                  }
               }
            }
         }
         while(true)
         {
            §8!O§ = getTimer();
            §§goto(addr64);
         }
      }
      
      public function update(param1:int) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§9R§ += param1;
            loop0:
            while(true)
            {
               §§push(this.§9R§);
               if(_loc5_)
               {
                  §§push(this.§3"<§);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           graphics.clear();
                           if(!(_loc6_ && this))
                           {
                              if(_loc5_ || this)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    addr43:
                                    if(false)
                                    {
                                       break;
                                    }
                                    §§push(this.§9R§);
                                    break loop0;
                                 }
                                 addr80:
                                 parent.removeChild(this);
                              }
                              break;
                           }
                           if(!(_loc6_ && _loc3_))
                           {
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr45:
                     }
                     continue;
                     return false;
                  }
                  addr105:
                  §§push(§§pop() / §§pop());
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc6_)
                  {
                     graphics.lineStyle(2,16777215,1 - _loc2_);
                  }
                  §§push(_loc2_);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(-§§pop());
                     if(_loc5_ || _loc2_)
                     {
                        addr135:
                        §§push(§§pop() * 100);
                     }
                     var _loc3_:int = §§pop();
                     §§push(_loc3_);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(-§§pop());
                        if(_loc5_)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              §§push(§§pop() * 100);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(int(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(_loc5_)
                     {
                        graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
                        do
                        {
                           filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
                        }
                        while(!_loc5_);
                        
                     }
                     return true;
                  }
                  §§goto(addr135);
               }
               break;
            }
            §§goto(addr105);
            §§push(this.§3"<§);
         }
         §§goto(addr43);
      }
   }
}
