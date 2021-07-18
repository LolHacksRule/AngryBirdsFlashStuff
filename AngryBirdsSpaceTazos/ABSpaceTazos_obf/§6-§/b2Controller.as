package §6-§
{
   import §'!&§.b2Body;
   import §'!&§.b2DebugDraw;
   import §'!&§.b2TimeStep;
   import §'!&§.b2World;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §+!o§:b2Controller;
      
      b2internal var §20§:b2Controller;
      
      protected var §&E§:b2ControllerEdge;
      
      protected var §"s§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §-!8§(param1:b2DebugDraw) : void
      {
      }
      
      public function §!"C§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc6_ || param1)
         {
            _loc2_.§&!$§ = this;
            loop0:
            while(true)
            {
               _loc2_.§["D§ = param1;
               loop1:
               while(true)
               {
                  _loc2_.§<!2§ = this.§&E§;
                  if(!_loc5_)
                  {
                     _loc2_.§>"§ = null;
                     if(_loc6_ || _loc3_)
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        loop2:
                        while(true)
                        {
                           this.§&E§ = _loc2_;
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(_loc2_.§<!2§);
                              if(!(_loc5_ && this))
                              {
                                 if(!§§pop())
                                 {
                                    addr120:
                                    var _loc3_:*;
                                    §§push((_loc3_ = this).§"s§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc4_:* = §§pop();
                                    if(_loc6_)
                                    {
                                       _loc3_.§"s§ = _loc4_;
                                    }
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       break loop1;
                                    }
                                    break;
                                 }
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 addr156:
                                 while(true)
                                 {
                                    §§push(_loc2_.§,f§);
                                    addr158:
                                    while(true)
                                    {
                                       §§pop().§&o§ = _loc2_;
                                       if(!(_loc5_ && this))
                                       {
                                          while(false)
                                          {
                                             while(true)
                                             {
                                                param1.§ <§ = _loc2_;
                                                if(!_loc5_)
                                                {
                                                   break loop2;
                                                }
                                                §§goto(addr220);
                                             }
                                          }
                                          addr190:
                                          §§push((_loc3_ = param1).§@!R§);
                                          if(_loc6_ || this)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc4_ = §§pop();
                                          if(!_loc5_)
                                          {
                                             _loc3_.§@!R§ = _loc4_;
                                          }
                                          addr167:
                                       }
                                       §§goto(addr220);
                                    }
                                 }
                              }
                              else
                              {
                                 addr56:
                                 §§pop().§>"§ = _loc2_;
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    §§goto(addr120);
                                 }
                              }
                              §§goto(addr167);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc2_.§,f§);
                           if(_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr156);
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr158);
                        }
                     }
                     while(true)
                     {
                        _loc2_.§&o§ = null;
                        if(!_loc5_)
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           §§goto(addr169);
                        }
                        break;
                     }
                     addr220:
                     return;
                     addr189:
                  }
                  break;
               }
               _loc2_.§,f§ = param1.§ <§;
               §§goto(addr189);
            }
         }
         §§goto(addr175);
      }
      
      public function §6"1§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§ <§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc6_ || param1)
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        §§push(_loc2_.§&!$§ == this);
                        if(_loc6_)
                        {
                           addr206:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§,f§);
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              loop1:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || this)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_.§,f§);
                                          addr167:
                                          while(true)
                                          {
                                             §§pop().§&o§ = _loc2_.§&o§;
                                             continue loop1;
                                          }
                                       }
                                       addr165:
                                    }
                                    while(true)
                                    {
                                    }
                                    addr170:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_.§&o§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(§§pop())
                                       {
                                          loop5:
                                          while(!(_loc5_ && param1))
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                §§push(_loc2_.§&o§);
                                                while(true)
                                                {
                                                   §§pop().§,f§ = _loc2_.§,f§;
                                                   if(_loc6_ || param1)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(this.§&E§ == _loc2_)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               this.§&E§ = _loc2_.§<!2§;
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  addr182:
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc6_ || param1))
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§>"§);
                                                                        addr214:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§<!2§ = _loc2_.§<!2§;
                                                                        }
                                                                     }
                                                                     addr212:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr171:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§<!2§);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr176:
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§<!2§);
                                                                                 §§goto(addr176);
                                                                              }
                                                                              addr177:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().§>"§ = _loc2_.§>"§;
                                                                           §§goto(addr182);
                                                                        }
                                                                        §§goto(addr176);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr89:
                                                         }
                                                         while(param1.§ <§ == _loc2_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               param1.§ <§ = _loc2_.§,f§;
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr89);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            var _loc3_:*;
                                                            §§push((_loc3_ = this).§"s§);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            var _loc4_:* = §§pop();
                                                            if(_loc6_ || this)
                                                            {
                                                               _loc3_.§"s§ = _loc4_;
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         §§push((_loc3_ = param1).§@!R§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            _loc3_.§@!R§ = _loc4_;
                                                         }
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                      addr73:
                                                   }
                                                   addr275:
                                                   return;
                                                }
                                                addr126:
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr73);
                                    }
                                    §§goto(addr126);
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr165);
                  }
               }
            }
            §§goto(addr206);
         }
         while(true)
         {
            §§push(_loc2_.§>"§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  §§goto(addr212);
               }
               §§goto(addr171);
            }
            §§goto(addr214);
         }
      }
      
      public function §["5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§&E§)
         {
            this.§6"1§(this.§&E§.§["D§);
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      public function §`!y§() : b2Controller
      {
         return this.§+!o§;
      }
      
      public function §3"+§() : b2World
      {
         return this.m_world;
      }
      
      public function §;N§() : b2ControllerEdge
      {
         return this.§&E§;
      }
   }
}
