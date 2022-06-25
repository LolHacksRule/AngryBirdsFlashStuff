package §`L§
{
   import §#I§.b2Body;
   import §#I§.b2DebugDraw;
   import §#I§.b2TimeStep;
   import §#I§.b2World;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §=!8§:b2Controller;
      
      b2internal var §+!3§:b2Controller;
      
      protected var § set§:b2ControllerEdge;
      
      protected var §=!t§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §8!&§(param1:b2TimeStep) : void
      {
      }
      
      public function §3P§(param1:b2DebugDraw) : void
      {
      }
      
      public function §`!n§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!(_loc5_ && _loc2_))
         {
            _loc2_.§ Q§ = this;
            if(!_loc5_)
            {
               _loc2_.§>!2§ = param1;
               if(_loc6_ || this)
               {
                  _loc2_.§!1§ = this.§ set§;
                  loop0:
                  while(true)
                  {
                     _loc2_.§'>§ = null;
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§ set§ = _loc2_;
                           if(!(_loc5_ && this))
                           {
                              §§push(_loc2_.§!1§);
                              if(_loc6_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       addr46:
                                       _loc2_.§!1§.§'>§ = _loc2_;
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                continue loop2;
                                             }
                                             addr158:
                                             addr110:
                                             var _loc3_:*;
                                             §§push((_loc3_ = this).§=!t§);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc4_:* = §§pop();
                                             if(!(_loc5_ && param1))
                                             {
                                                _loc3_.§=!t§ = _loc4_;
                                             }
                                             if(!_loc5_)
                                             {
                                                break loop2;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_.§1p§);
                                                addr160:
                                                while(true)
                                                {
                                                   §§pop().§+!o§ = _loc2_;
                                                   if(_loc5_ && param1)
                                                   {
                                                   }
                                                   §§goto(addr220);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr220);
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       if(false)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             param1.§'z§ = _loc2_;
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc2_.§1p§);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr151:
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§goto(addr158);
                                                         }
                                                         else
                                                         {
                                                            addr199:
                                                            while(true)
                                                            {
                                                               _loc2_.§+!o§ = null;
                                                               break loop5;
                                                               §§goto(addr151);
                                                            }
                                                            addr199:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr200:
                                                         §§push((_loc3_ = param1).§8H§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            _loc3_.§8H§ = _loc4_;
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr160);
                                                }
                                                break;
                                             }
                                             §§goto(addr220);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr171);
                                          }
                                          addr171:
                                       }
                                       §§goto(addr200);
                                    }
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr46);
                           }
                           break;
                        }
                        _loc2_.§1p§ = param1.§'z§;
                        §§goto(addr199);
                     }
                  }
               }
               addr220:
               return;
            }
            §§goto(addr199);
         }
         §§goto(addr57);
      }
      
      public function §]>§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§'z§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr37:
                     §§pop();
                     if(!_loc5_)
                     {
                        §§push(_loc2_.§ Q§ == this);
                        if(!(_loc5_ && this))
                        {
                           addr201:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§1p§);
                              if(_loc6_)
                              {
                                 continue;
                              }
                              loop15:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(_loc2_.§1p§);
                                       loop16:
                                       while(true)
                                       {
                                          §§pop().§+!o§ = _loc2_.§+!o§;
                                          loop10:
                                          while(true)
                                          {
                                             addr105:
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc2_.§+!o§);
                                                if(!(_loc5_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         addr135:
                                                         _loc2_.§+!o§.§1p§ = _loc2_.§1p§;
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(this.§ set§ == _loc2_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr86:
                                                            if(_loc6_ || this)
                                                            {
                                                               this.§ set§ = _loc2_.§!1§;
                                                               addr97:
                                                               loop8:
                                                               while(!(_loc5_ && _loc3_))
                                                               {
                                                                  while(param1.§'z§ == _loc2_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        param1.§'z§ = _loc2_.§1p§;
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr217:
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    addr165:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§!1§);
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             break loop6;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.§1p§);
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop16;
                                                                                             addr188:
                                                                                          }
                                                                                       }
                                                                                       addr178:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§'>§ = _loc2_.§'>§;
                                                                                          break loop8;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break loop8;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                     var _loc3_:*;
                                                                     §§push((_loc3_ = this).§=!t§);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     var _loc4_:* = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        _loc3_.§=!t§ = _loc4_;
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§push((_loc3_ = param1).§8H§);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     _loc3_.§8H§ = _loc4_;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr250);
                                                                  }
                                                                  addr270:
                                                                  return;
                                                               }
                                                               break loop6;
                                                               while(true)
                                                               {
                                                                  if(_loc5_ && _loc3_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               addr97:
                                                               addr181:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§'>§);
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr165);
                                                                  }
                                                                  addr214:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§!1§ = _loc2_.§!1§;
                                                                  }
                                                                  §§goto(addr86);
                                                               }
                                                               addr202:
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr97);
                                                      }
                                                      §§goto(addr41);
                                                   }
                                                   continue loop10;
                                                }
                                                §§goto(addr135);
                                                continue loop10;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr178);
                                                §§goto(addr97);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr201);
                     }
                     break;
                  }
               }
               §§goto(addr201);
            }
            §§goto(addr37);
         }
         while(true)
         {
            §§goto(addr214);
            §§goto(addr181);
         }
      }
      
      public function §6!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§ set§)
         {
            this.§]>§(this.§ set§.§>!2§);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §?!^§() : b2Controller
      {
         return this.§=!8§;
      }
      
      public function §var §() : b2World
      {
         return this.m_world;
      }
      
      public function §2x§() : b2ControllerEdge
      {
         return this.§ set§;
      }
   }
}
