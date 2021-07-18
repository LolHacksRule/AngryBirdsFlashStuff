package §2!+§
{
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2DebugDraw;
   import §`j§.b2TimeStep;
   import §`j§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §#!&§:b2Controller;
      
      b2internal var §8`§:b2Controller;
      
      protected var §<!5§:b2ControllerEdge;
      
      protected var §,z§:int;
      
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
      
      public function §6k§(param1:b2TimeStep) : void
      {
      }
      
      public function §>!5§(param1:b2DebugDraw) : void
      {
      }
      
      public function §>6§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc6_)
         {
            _loc2_.§75§ = this;
            while(true)
            {
               _loc2_.§?V§ = param1;
               addr63:
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               §§push(_loc2_.§2t§);
               if(!(_loc5_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        addr44:
                        _loc2_.§2t§.§!!B§ = _loc2_;
                        if(!(_loc5_ && this))
                        {
                           addr53:
                           if(_loc6_)
                           {
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§<!5§ = _loc2_;
                                 }
                                 addr57:
                              }
                              addr100:
                              var _loc3_:*;
                              §§push((_loc3_ = this).§,z§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_)
                              {
                                 _loc3_.§,z§ = _loc4_;
                              }
                              if(_loc6_ || this)
                              {
                                 _loc2_.§3!5§ = param1.§6V§;
                                 _loc2_.§@!X§ = null;
                                 while(_loc5_)
                                 {
                                    §§goto(addr189);
                                 }
                                 addr189:
                                 addr184:
                                 loop6:
                                 while(true)
                                 {
                                    param1.§6V§ = _loc2_;
                                    addr170:
                                    while(true)
                                    {
                                       if(_loc5_ && this)
                                       {
                                          §§goto(addr182);
                                       }
                                       continue loop6;
                                    }
                                 }
                                 addr182:
                                 addr166:
                              }
                              while(true)
                              {
                                 §§push(_loc2_.§3!5§);
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_ || this)
                                       {
                                          addr153:
                                          _loc2_.§3!5§.§@!X§ = _loc2_;
                                          if(_loc6_)
                                          {
                                             if(_loc5_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(true)
                                             {
                                                addr190:
                                                §§push((_loc3_ = param1).§+!V§);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc4_ = §§pop();
                                                if(!(_loc5_ && this))
                                                {
                                                   _loc3_.§+!V§ = _loc4_;
                                                }
                                                break;
                                             }
                                             §§goto(addr166);
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr153);
                              }
                              return;
                              addr177:
                           }
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 §§goto(addr63);
                              }
                              else
                              {
                                 while(_loc6_ || _loc3_)
                                 {
                                    §§goto(addr57);
                                 }
                                 while(true)
                                 {
                                    _loc2_.§2t§ = this.§<!5§;
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    _loc2_.§!!B§ = null;
                                    §§goto(addr75);
                                 }
                                 addr75:
                                 addr95:
                              }
                              §§goto(addr177);
                           }
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr100);
               }
               §§goto(addr44);
            }
         }
         §§goto(addr95);
      }
      
      public function §>D§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§6V§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  if(_loc5_ || param1)
                  {
                     §§pop();
                     if(!_loc6_)
                     {
                        §§push(_loc2_.§75§ == this);
                        if(!_loc6_)
                        {
                           addr185:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§3!5§);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              loop18:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc2_.§3!5§);
                                       addr149:
                                       loop14:
                                       while(true)
                                       {
                                          §§pop().§@!X§ = _loc2_.§@!X§;
                                          loop15:
                                          while(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr156:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§@!X§);
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(this.§<!5§ == _loc2_)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  this.§<!5§ = _loc2_.§2t§;
                                                                  while(true)
                                                                  {
                                                                     addr57:
                                                                     if(_loc6_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     addr71:
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        param1.§6V§ = _loc2_.§3!5§;
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 var _loc3_:*;
                                                                                 §§push((_loc3_ = param1).§+!V§);
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 var _loc4_:* = §§pop();
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr259:
                                                                                 addr202:
                                                                              }
                                                                              continue loop8;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 _loc3_.§+!V§ = _loc4_;
                                                                              }
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 addr229:
                                                                                 §§push((_loc3_ = this).§,z§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    _loc3_.§,z§ = _loc4_;
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(_loc2_.§@!X§);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§3!5§ = _loc2_.§3!5§;
                                                                                 continue loop5;
                                                                              }
                                                                              addr115:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§!!B§);
                                                                                 addr198:
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§2t§ = _loc2_.§2t§;
                                                                                    addr201:
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       addr157:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§2t§);
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   §§push(_loc2_.§2t§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§!!B§ = _loc2_.§!!B§;
                                                                                                      break loop15;
                                                                                                   }
                                                                                                }
                                                                                                continue loop21;
                                                                                                addr168:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§3!5§);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                             addr136:
                                                                                          }
                                                                                          §§goto(addr174);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr196:
                                                                           }
                                                                           §§goto(addr71);
                                                                        }
                                                                        addr111:
                                                                     }
                                                                  }
                                                               }
                                                               continue loop15;
                                                            }
                                                            while(true)
                                                            {
                                                               if(param1.§6V§ == _loc2_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr57);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop5;
                                                         addr88:
                                                      }
                                                      §§goto(addr111);
                                                   }
                                                   §§goto(addr115);
                                                   §§goto(addr156);
                                                }
                                                addr100:
                                             }
                                             §§goto(addr168);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr136);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr100);
                              }
                           }
                           break;
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr201);
                  }
               }
            }
            §§goto(addr185);
         }
         while(true)
         {
            §§push(_loc2_.§!!B§);
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  §§goto(addr196);
               }
               §§goto(addr157);
            }
            §§goto(addr198);
         }
      }
      
      public function § C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§<!5§)
         {
            this.§>D§(this.§<!5§.§?V§);
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      public function §[;§() : b2Controller
      {
         return this.§#!&§;
      }
      
      public function §`!5§() : b2World
      {
         return this.m_world;
      }
      
      public function §[!Z§() : b2ControllerEdge
      {
         return this.§<!5§;
      }
   }
}
