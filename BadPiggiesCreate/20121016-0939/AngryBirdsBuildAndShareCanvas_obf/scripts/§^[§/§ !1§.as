package §^[§
{
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.utils.getTimer;
   
   public class § !1§ extends Shape
   {
      
      private static var §8!§:int;
       
      
      private const §^!0§:int = 100;
      
      private const §-"'§:int = 500;
      
      private var §7A§:int = 0;
      
      public function § !1§(param1:int, param2:int)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super();
            loop0:
            do
            {
               if(getTimer() - §8!§ >= this.§^!0§)
               {
                  this.§7A§ = 0;
                  loop1:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §8!§ = getTimer();
                        do
                        {
                           if(!(_loc4_ || param1))
                           {
                              addr111:
                              while(true)
                              {
                              }
                              addr111:
                           }
                           while(true)
                           {
                              this.x = param1;
                              continue loop1;
                           }
                        }
                        while(!_loc4_);
                        
                        continue loop0;
                     }
                     §§goto(addr111);
                  }
               }
               while(true)
               {
                  this.§7A§ = this.§-"'§;
               }
            }
            while(!_loc4_);
            
            return;
         }
         §§goto(addr111);
      }
      
      public function update(param1:int) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§7A§ += param1;
            loop0:
            while(true)
            {
               §§push(this.§7A§);
               if(_loc5_ || param1)
               {
                  §§push(this.§-"'§);
                  if(_loc5_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           if(!_loc6_)
                           {
                              addr58:
                              if(parent)
                              {
                                 addr60:
                                 parent.removeChild(this);
                                 break;
                              }
                              §§goto(addr26);
                           }
                           continue;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           graphics.clear();
                           if(_loc5_)
                           {
                              if(false)
                              {
                                 break;
                              }
                              §§goto(addr75);
                           }
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 continue;
                              }
                              §§goto(addr60);
                           }
                           break loop0;
                        }
                        §§goto(addr26);
                     }
                     §§goto(addr60);
                  }
                  addr75:
                  §§goto(addr73);
               }
               addr73:
               §§push(this.§7A§ / this.§-"'§);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc6_)
               {
                  graphics.lineStyle(2,16777215,1 - _loc2_);
               }
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(-§§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop() * 100);
                  }
               }
               var _loc3_:int = §§pop();
               §§push(_loc3_);
               if(_loc5_)
               {
                  §§push(-§§pop());
                  if(!_loc6_)
                  {
                     §§push(_loc2_);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop() * 100);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               if(_loc5_ || this)
               {
                  graphics.drawRect(_loc3_,-_loc2_ * 100,_loc4_,_loc2_ * 200);
                  do
                  {
                     filters = [new BlurFilter(4 * _loc2_,4 * _loc2_)];
                  }
                  while(_loc6_ && param1);
                  
               }
               return true;
            }
            addr26:
            return false;
         }
         §§goto(addr58);
      }
   }
}
