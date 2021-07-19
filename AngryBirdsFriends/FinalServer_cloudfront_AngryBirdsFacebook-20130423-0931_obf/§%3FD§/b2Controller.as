package §?D§
{
   import §,"[§.b2internal;
   import §6"1§.b2Body;
   import §6"1§.b2DebugDraw;
   import §6"1§.b2TimeStep;
   import §6"1§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §?!g§:b2Controller;
      
      b2internal var §;<§:b2Controller;
      
      protected var §6t§:b2ControllerEdge;
      
      protected var §;0§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function §=m§(param1:b2TimeStep) : void
      {
      }
      
      public function §5""§(param1:b2DebugDraw) : void
      {
      }
      
      public function §'!$§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc6_ || _loc3_)
         {
            _loc2_.§5-§ = this;
            if(_loc6_ || _loc3_)
            {
               _loc2_.§&"L§ = param1;
               loop0:
               while(true)
               {
                  _loc2_.§'l§ = this.§6t§;
                  if(!_loc5_)
                  {
                     _loc2_.§`!f§ = null;
                     if(_loc6_)
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        loop1:
                        while(true)
                        {
                           this.§6t§ = _loc2_;
                           if(!_loc5_)
                           {
                              §§push(_loc2_.§'l§);
                              if(_loc6_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr49:
                                       _loc2_.§'l§.§`!f§ = _loc2_;
                                       if(!(_loc5_ && this))
                                       {
                                          if(true)
                                          {
                                             addr110:
                                             var _loc3_:*;
                                             §§push((_loc3_ = this).§;0§);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc4_:* = §§pop();
                                          }
                                          continue;
                                          if(_loc6_)
                                          {
                                             _loc3_.§;0§ = _loc4_;
                                          }
                                          if(!_loc6_)
                                          {
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr220);
                                    }
                                    _loc2_.§@!'§ = param1.§]!5§;
                                    addr199:
                                    loop9:
                                    while(true)
                                    {
                                       _loc2_.§#!B§ = null;
                                       loop7:
                                       while(true)
                                       {
                                          addr175:
                                          while(true)
                                          {
                                             param1.§]!5§ = _loc2_;
                                             while(true)
                                             {
                                                §§push(_loc2_.§@!'§);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            addr153:
                                                            if(_loc6_ || this)
                                                            {
                                                               break loop0;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            break loop1;
                                                         }
                                                         continue loop9;
                                                      }
                                                      addr166:
                                                   }
                                                   addr200:
                                                   §§push((_loc3_ = param1).§>+§);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   _loc4_ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      _loc3_.§>+§ = _loc4_;
                                                   }
                                                   §§goto(addr220);
                                                }
                                                break;
                                             }
                                             addr162:
                                             while(true)
                                             {
                                                §§pop().§#!B§ = _loc2_;
                                                if(_loc6_)
                                                {
                                                   §§goto(addr166);
                                                }
                                                break;
                                             }
                                             addr220:
                                             return;
                                             continue loop7;
                                          }
                                       }
                                    }
                                    addr199:
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr49);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(false)
                           {
                              §§goto(addr175);
                           }
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr199);
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr162);
                  §§goto(addr153);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr199);
      }
      
      public function §!!z§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§]!5§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     addr47:
                     §§pop();
                     if(!_loc5_)
                     {
                        §§push(_loc2_.§5-§ == this);
                        if(_loc6_)
                        {
                           addr192:
                           if(§§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 §§push(_loc2_.§`!f§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.§'l§);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_.§'l§);
                                                addr181:
                                                while(true)
                                                {
                                                   §§pop().§`!f§ = _loc2_.§`!f§;
                                                   addr184:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             addr179:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_.§@!'§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr250:
                                                      var _loc3_:*;
                                                      §§push((_loc3_ = this).§;0§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      var _loc4_:* = §§pop();
                                                   }
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(_loc2_.§@!'§);
                                                      break;
                                                   }
                                                   continue;
                                                   if(_loc6_ || this)
                                                   {
                                                      _loc3_.§;0§ = _loc4_;
                                                   }
                                                   §§goto(addr270);
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§#!B§);
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr131:
                                                            _loc2_.§#!B§.§@!'§ = _loc2_.§@!'§;
                                                            loop9:
                                                            while(true)
                                                            {
                                                               addr94:
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  if(this.§6t§ == _loc2_)
                                                                  {
                                                                     while(!_loc5_)
                                                                     {
                                                                        this.§6t§ = _loc2_.§'l§;
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr179);
                                                                     addr99:
                                                                  }
                                                                  while(param1.§]!5§ == _loc2_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           param1.§]!5§ = _loc2_.§@!'§;
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§goto(addr99);
                                                                              }
                                                                              §§goto(addr105);
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && _loc2_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           addr160:
                                                                        }
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  §§push((_loc3_ = param1).§>+§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     _loc3_.§>+§ = _loc4_;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr94);
                                                   }
                                                   §§goto(addr131);
                                                }
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§pop().§#!B§ = _loc2_.§#!B§;
                                             §§goto(addr160);
                                          }
                                          addr157:
                                       }
                                       §§goto(addr181);
                                    }
                                    addr168:
                                 }
                                 while(true)
                                 {
                                    §§pop().§'l§ = _loc2_.§'l§;
                                    if(!(_loc5_ && param1))
                                    {
                                       while(true)
                                       {
                                          §§goto(addr168);
                                       }
                                       addr222:
                                    }
                                    addr270:
                                    return;
                                 }
                                 addr212:
                              }
                              §§goto(addr222);
                           }
                           else
                           {
                              §§push(_loc2_.§@!'§);
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr192);
                     }
                     break;
                  }
               }
               §§goto(addr192);
            }
            §§goto(addr47);
         }
         while(true)
         {
            §§goto(addr212);
         }
      }
      
      public function §7!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§6t§)
         {
            this.§!!z§(this.§6t§.§&"L§);
            if(!(_loc2_ || _loc1_))
            {
               break;
            }
         }
      }
      
      public function §>!v§() : b2Controller
      {
         return this.§?!g§;
      }
      
      public function §-7§() : b2World
      {
         return this.m_world;
      }
      
      public function §4"-§() : b2ControllerEdge
      {
         return this.§6t§;
      }
   }
}
