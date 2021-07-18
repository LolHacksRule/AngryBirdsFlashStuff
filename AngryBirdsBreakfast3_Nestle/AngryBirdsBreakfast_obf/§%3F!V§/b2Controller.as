package §?!V§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2DebugDraw;
   import §0"!§.b2TimeStep;
   import §0"!§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §6!c§:b2Controller;
      
      b2internal var §,!>§:b2Controller;
      
      protected var §4m§:b2ControllerEdge;
      
      protected var §1a§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function §5!I§(param1:b2TimeStep) : void
      {
      }
      
      public function §&!I§(param1:b2DebugDraw) : void
      {
      }
      
      public function §#!K§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!_loc6_)
         {
            _loc2_.controller = this;
            if(_loc5_)
            {
               _loc2_.body = param1;
               loop0:
               while(true)
               {
                  _loc2_.§%!>§ = this.§4m§;
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        _loc2_.§<!z§ = null;
                        if(_loc5_ || _loc2_)
                        {
                           loop5:
                           while(true)
                           {
                              this.§4m§ = _loc2_;
                              if(_loc5_)
                              {
                                 §§push(_loc2_.§%!>§);
                                 if(_loc5_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          addr38:
                                          _loc2_.§%!>§.§<!z§ = _loc2_;
                                          if(_loc5_ || this)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(true)
                                                {
                                                   addr89:
                                                   var _loc3_:*;
                                                   §§push((_loc3_ = this).§1a§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc4_:* = §§pop();
                                                }
                                                continue;
                                                if(_loc5_ || _loc3_)
                                                {
                                                   _loc3_.§1a§ = _loc4_;
                                                }
                                                if(_loc5_)
                                                {
                                                   _loc2_.§"!f§ = param1.§8!@§;
                                                   addr173:
                                                   while(true)
                                                   {
                                                      _loc2_.§;!@§ = null;
                                                      if(_loc5_)
                                                      {
                                                         break loop0;
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   addr173:
                                                   addr121:
                                                }
                                                break loop0;
                                             }
                                             continue loop0;
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc2_.§"!f§);
                                             if(!(_loc6_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr142:
                                                      _loc2_.§"!f§.§;!@§ = _loc2_;
                                                      if(_loc5_ || this)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break loop5;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                         addr199:
                                                         return;
                                                         addr159:
                                                      }
                                                   }
                                                   §§goto(addr199);
                                                }
                                                addr174:
                                                §§push((_loc3_ = param1).§#k§);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc4_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   _loc3_.§#k§ = _loc4_;
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr38);
                              }
                              break;
                           }
                        }
                        while(true)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 param1.§8!@§ = _loc2_;
                                 §§goto(addr159);
                              }
                              addr155:
                           }
                           §§goto(addr174);
                        }
                     }
                     addr77:
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr155);
                  §§goto(addr173);
               }
            }
            §§goto(addr199);
         }
         §§goto(addr77);
      }
      
      public function §2!R§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§8!@§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     if(_loc6_)
                     {
                        §§push(_loc2_.controller == this);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr176:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§"!f§);
                              if(_loc6_)
                              {
                                 continue;
                              }
                              loop2:
                              while(true)
                              {
                                 §§pop().§;!@§ = _loc2_.§;!@§;
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       loop4:
                                       do
                                       {
                                          §§push(_loc2_.§;!@§);
                                          if(_loc6_ || param1)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   _loc2_.§;!@§.§"!f§ = _loc2_.§"!f§;
                                                   addr113:
                                                   if(!_loc5_)
                                                   {
                                                      addr128:
                                                      if(!_loc5_)
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(this.§4m§ == _loc2_)
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  this.§4m§ = _loc2_.§%!>§;
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc5_ && _loc2_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     while(param1.§8!@§ == _loc2_)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              param1.§8!@§ = _loc2_.§"!f§;
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ || _loc3_))
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 addr161:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr131:
                                                                                       §§push(_loc2_.§"!f§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop2;
                                                                                       addr163:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr182:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§<!z§);
                                                                                       break loop7;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        var _loc3_:*;
                                                                        §§push((_loc3_ = this).§1a§);
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        var _loc4_:* = §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           _loc3_.§1a§ = _loc4_;
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§push((_loc3_ = param1).§#k§);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        _loc3_.§#k§ = _loc4_;
                                                                     }
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§goto(addr215);
                                                                     }
                                                                  }
                                                                  addr245:
                                                                  return;
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§pop().§%!>§ = _loc2_.§%!>§;
                                                                  addr187:
                                                                  while(true)
                                                                  {
                                                                     addr145:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§%!>§);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§%!>§);
                                                                                 addr158:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§<!z§ = _loc2_.§<!z§;
                                                                                    §§goto(addr161);
                                                                                 }
                                                                              }
                                                                              addr156:
                                                                           }
                                                                           §§goto(addr131);
                                                                        }
                                                                        §§goto(addr158);
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               addr184:
                                                            }
                                                            §§goto(addr41);
                                                         }
                                                         continue loop3;
                                                         addr72:
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr128);
                                             }
                                             §§goto(addr72);
                                          }
                                          §§goto(addr113);
                                       }
                                       while(!§§pop());
                                       
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                       addr137:
                                    }
                                    §§goto(addr156);
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr137);
                  }
               }
            }
            §§goto(addr176);
         }
         while(true)
         {
            §§push(_loc2_.§<!z§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  §§goto(addr182);
               }
               §§goto(addr145);
            }
            §§goto(addr184);
         }
      }
      
      public function §7Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§4m§)
         {
            this.§2!R§(this.§4m§.body);
            if(_loc1_)
            {
               break;
            }
         }
      }
      
      public function §2!9§() : b2Controller
      {
         return this.§6!c§;
      }
      
      public function §#G§() : b2World
      {
         return this.m_world;
      }
      
      public function §#"1§() : b2ControllerEdge
      {
         return this.§4m§;
      }
   }
}
