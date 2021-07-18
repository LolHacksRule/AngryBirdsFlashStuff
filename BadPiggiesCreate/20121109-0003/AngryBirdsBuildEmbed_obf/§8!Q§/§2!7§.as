package §8!Q§
{
   public class §2!7§
   {
       
      
      private var §?!%§:Vector.<int>;
      
      public function §2!7§(param1:int = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_ || param1)
            {
               this.§?!%§ = new Vector.<int>(32);
               if(!_loc2_)
               {
                  addr47:
                  this.assign(param1);
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function assign(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < this.§?!%§.length)
            {
               _loc4_ = int(Math.round(Math.random() * 2 - 1 * int.MAX_VALUE));
               §§push(param1);
               if(!(_loc7_ && param1))
               {
                  §§push(_loc2_);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(§§pop() & §§pop());
                     §§push(§§pop() & §§pop());
                     if(!_loc7_)
                     {
                        addr59:
                        _loc5_ = §§pop();
                        if(!(_loc7_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 addr81:
                                 §§push(param1);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§§pop() | §§pop());
                                    if(!_loc7_)
                                    {
                                       addr92:
                                       _loc4_ = §§pop();
                                    }
                                    else
                                    {
                                       addr119:
                                       _loc4_ = §§pop();
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    this.§?!%§[_loc3_] = _loc4_;
                                    §§push(_loc2_);
                                    if(_loc6_)
                                    {
                                       addr141:
                                       §§push(§§pop() << 1);
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue;
                                       }
                                    }
                                    addr149:
                                    _loc2_ = §§pop();
                                    _loc3_++;
                                    if(!(_loc6_ || this))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr92);
                           }
                           else
                           {
                              addr95:
                              §§push(_loc5_);
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 §§push(§§pop() ^ §§pop());
                                 if(_loc6_)
                                 {
                                    addr102:
                                    §§push(_loc5_ = §§pop());
                                    if(_loc6_ || _loc2_)
                                    {
                                    }
                                    §§goto(addr119);
                                 }
                                 §§push(§§pop() & param1);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§goto(addr119);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr102);
                           }
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr59);
               }
               §§goto(addr95);
            }
            return;
         }
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               while(§§pop() < this.§?!%§.length)
               {
                  §§push(_loc1_);
                  if(!_loc5_)
                  {
                     §§push(this.§?!%§[_loc3_] & _loc2_);
                     if(_loc4_ || _loc1_)
                     {
                        §§push(§§pop() | §§pop());
                        if(!_loc4_)
                        {
                           continue;
                        }
                        _loc1_ = §§pop();
                        if(_loc5_ && this)
                        {
                           continue loop0;
                        }
                        §§push(_loc2_);
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(1);
                     }
                     §§push(§§pop() << §§pop());
                     if(!_loc4_)
                     {
                     }
                     break loop0;
                  }
                  _loc2_ = §§pop();
                  if(!(_loc4_ || _loc2_))
                  {
                     break;
                  }
                  _loc3_++;
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               §§push(_loc1_);
               break;
            }
            break;
         }
         return §§pop();
      }
   }
}
