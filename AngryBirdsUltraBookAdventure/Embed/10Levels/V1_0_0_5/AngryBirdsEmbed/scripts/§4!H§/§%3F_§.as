package §4!H§
{
   public class §?_§
   {
       
      
      private var §2N§:Vector.<int>;
      
      public function §?_§(param1:int = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            if(_loc2_ || this)
            {
               addr42:
               this.§2N§ = new Vector.<int>(32);
               if(_loc2_)
               {
                  this.assign(param1);
               }
            }
            return;
         }
         §§goto(addr42);
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
            while(true)
            {
               if(§§pop() >= this.§2N§.length)
               {
                  §§goto(addr173);
               }
               §§push(int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE)));
               if(_loc6_ || _loc2_)
               {
                  _loc4_ = §§pop();
                  §§push(param1);
                  if(!(_loc7_ && this))
                  {
                     §§push(_loc2_);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() & §§pop());
                        if(_loc6_ || this)
                        {
                           addr69:
                           if(_loc5_ = §§pop())
                           {
                              §§push(_loc4_);
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              §§push(§§pop() | _loc2_);
                              if(!(_loc6_ || _loc2_))
                              {
                                 addr111:
                                 §§push(_loc2_);
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr119:
                                    §§push(~§§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          addr130:
                                          _loc4_ = §§pop();
                                          §§goto(addr131);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                                 break;
                              }
                              _loc4_ = §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 this.§2N§[_loc3_] = _loc4_;
                                 addr131:
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§push(_loc2_);
                              if(_loc6_)
                              {
                                 addr151:
                                 §§push(§§pop() << 1);
                              }
                              _loc2_ = §§pop();
                              _loc3_++;
                              if(!_loc7_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr169);
                              §§goto(addr151);
                           }
                           else
                           {
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr69);
               }
               §§goto(addr111);
               §§goto(addr169);
            }
            if(§§pop() != §§pop())
            {
            }
            addr173:
            if(!(_loc7_ && this))
            {
               addr169:
               §§push(this.getValue());
               §§push(param1);
               break loop1;
            }
            return;
         }
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               while(§§pop() < this.§2N§.length)
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(this.§2N§[_loc3_] & _loc2_);
                     if(_loc5_ || _loc1_)
                     {
                        §§push(§§pop() | §§pop());
                        if(!_loc4_)
                        {
                           _loc1_ = §§pop();
                           if(_loc4_)
                           {
                              break;
                           }
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr71:
                              §§push(§§pop() << 1);
                              if(_loc4_ && _loc2_)
                              {
                              }
                              break loop0;
                           }
                           _loc2_ = §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              _loc3_++;
                              if(_loc4_ && _loc3_)
                              {
                                 break;
                              }
                           }
                           continue loop0;
                        }
                        continue;
                     }
                  }
                  §§goto(addr71);
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
