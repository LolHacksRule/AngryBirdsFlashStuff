package §%!6§
{
   public class §'[§
   {
       
      
      private var §#6§:Vector.<int>;
      
      public function §'[§(param1:int = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            if(_loc2_ || _loc3_)
            {
               this.§#6§ = new Vector.<int>(32);
               if(!_loc3_)
               {
                  this.assign(param1);
               }
            }
         }
      }
      
      public function assign(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:int = 1;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() >= this.§#6§.length)
               {
                  §§goto(addr151);
               }
               §§push(int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE)));
               if(!(_loc6_ && _loc2_))
               {
                  _loc4_ = §§pop();
                  §§push(param1);
                  if(_loc7_)
                  {
                     if(_loc5_ = §§pop() & _loc2_)
                     {
                        if(_loc7_)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && _loc2_))
                           {
                              _loc4_ = §§pop() | _loc2_;
                              if(_loc6_ && _loc3_)
                              {
                              }
                              §§goto(addr97);
                           }
                           break;
                        }
                        §§goto(addr147);
                     }
                     else
                     {
                        §§push(_loc4_);
                     }
                     §§goto(addr147);
                  }
                  _loc4_ = §§pop() & ~_loc2_;
                  if(_loc7_ || _loc2_)
                  {
                     addr97:
                     this.§#6§[_loc3_] = _loc4_;
                     §§push(_loc2_);
                     if(_loc6_ && _loc2_)
                     {
                        break;
                     }
                     §§push(1);
                     if(_loc6_ && _loc3_)
                     {
                        addr150:
                        if(§§pop() != §§pop())
                        {
                        }
                        addr151:
                        if(_loc7_ || param1)
                        {
                           addr147:
                           §§push(this.getValue());
                           break;
                        }
                     }
                     continue;
                     return;
                  }
               }
               break;
               §§goto(addr147);
            }
            break;
         }
         §§goto(addr150);
         §§push(param1);
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(§§pop() < this.§#6§.length)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(this.§#6§[_loc3_] & _loc2_);
                     if(_loc5_ || _loc1_)
                     {
                        §§push(§§pop() | §§pop());
                        if(_loc5_)
                        {
                           _loc1_ = §§pop();
                           if(_loc5_ || _loc3_)
                           {
                              §§push(_loc2_);
                              if(_loc5_ || _loc3_)
                              {
                              }
                              break;
                           }
                           addr102:
                           §§push(_loc1_);
                           break;
                        }
                        §§push(1);
                     }
                     §§push(§§pop() << §§pop());
                     if(_loc4_)
                     {
                     }
                     break;
                  }
                  _loc2_ = §§pop();
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               §§goto(addr102);
            }
            break;
         }
         return §§pop();
      }
   }
}
