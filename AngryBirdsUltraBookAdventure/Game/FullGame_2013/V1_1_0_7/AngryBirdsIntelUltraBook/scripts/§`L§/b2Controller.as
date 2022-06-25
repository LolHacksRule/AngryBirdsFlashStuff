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
         if(_loc2_)
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
         if(!(_loc5_ && param1))
         {
            _loc2_.§ Q§ = this;
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.§>!2§ = param1;
               if(!_loc5_)
               {
                  _loc2_.§!1§ = this.§ set§;
                  while(true)
                  {
                     _loc2_.§'>§ = null;
                     loop1:
                     while(!(_loc5_ && _loc3_))
                     {
                        while(true)
                        {
                           this.§ set§ = _loc2_;
                           if(!_loc5_)
                           {
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              §§push(_loc2_.§!1§);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr39);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr39);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc2_.§1p§);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 addr205:
                                 var _loc3_:*;
                                 §§push((_loc3_ = param1).§8H§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                                 if(!_loc5_)
                                 {
                                    _loc3_.§8H§ = _loc4_;
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§pop().§+!o§ = _loc2_;
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(_loc6_)
                                    {
                                       while(false)
                                       {
                                       }
                                       §§goto(addr205);
                                       addr171:
                                    }
                                    else
                                    {
                                       §§goto(addr182);
                                    }
                                    §§goto(addr173);
                                 }
                                 break;
                              }
                              addr160:
                           }
                           addr39:
                           _loc2_.§!1§.§'>§ = _loc2_;
                           if(!(_loc5_ && param1))
                           {
                              if(false)
                              {
                                 continue loop2;
                              }
                              addr95:
                              §§push((_loc3_ = this).§=!t§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc4_ = §§pop();
                              if(_loc6_ || param1)
                              {
                                 _loc3_.§=!t§ = _loc4_;
                              }
                              if(_loc6_ || _loc3_)
                              {
                                 _loc2_.§1p§ = param1.§'z§;
                                 while(true)
                                 {
                                    _loc2_.§+!o§ = null;
                                    addr182:
                                    while(!(_loc5_ && param1))
                                    {
                                       while(true)
                                       {
                                          addr173:
                                          while(true)
                                          {
                                             param1.§'z§ = _loc2_;
                                             break loop2;
                                          }
                                       }
                                    }
                                 }
                                 addr204:
                              }
                              §§goto(addr199);
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr158);
            }
            §§goto(addr171);
         }
         §§goto(addr177);
      }
      
      public function §]>§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§'z§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc2_.§ Q§ == this);
                        if(_loc5_ || _loc3_)
                        {
                           addr190:
                           if(§§pop())
                           {
                              break;
                           }
                           §§push(_loc2_.§1p§);
                           if(!(_loc5_ || _loc3_))
                           {
                              loop1:
                              while(true)
                              {
                                 §§pop().§+!o§ = _loc2_.§+!o§;
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_.§+!o§);
                                    if(_loc5_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             addr134:
                                             _loc2_.§+!o§.§1p§ = _loc2_.§1p§;
                                             loop4:
                                             while(!(_loc6_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   if(this.§ set§ == _loc2_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         this.§ set§ = _loc2_.§!1§;
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               addr55:
                                                               if(param1.§'z§ == _loc2_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        param1.§'z§ = _loc2_.§1p§;
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc6_ && _loc3_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           addr177:
                                                                        }
                                                                        addr249:
                                                                        var _loc3_:*;
                                                                        §§push((_loc3_ = this).§=!t§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        var _loc4_:* = §§pop();
                                                                        if(_loc5_)
                                                                        {
                                                                           _loc3_.§=!t§ = _loc4_;
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§'>§);
                                                                        addr203:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§!1§ = _loc2_.§!1§;
                                                                           break loop4;
                                                                        }
                                                                     }
                                                                     addr201:
                                                                  }
                                                                  break loop1;
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§!1§);
                                                               addr174:
                                                               while(true)
                                                               {
                                                                  §§pop().§'>§ = _loc2_.§'>§;
                                                                  §§goto(addr177);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr55);
                                                }
                                                §§push((_loc3_ = param1).§8H§);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc4_ = §§pop();
                                                if(!(_loc6_ && this))
                                                {
                                                   _loc3_.§8H§ = _loc4_;
                                                }
                                                if(_loc6_ && param1)
                                                {
                                                }
                                                break loop1;
                                             }
                                             while(true)
                                             {
                                                addr161:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§!1§);
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr174);
                                                }
                                             }
                                             addr206:
                                          }
                                          §§goto(addr249);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr134);
                                 }
                              }
                              return;
                           }
                           continue;
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr206);
                  }
               }
            }
            §§goto(addr190);
         }
         while(true)
         {
            §§push(_loc2_.§'>§);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  §§goto(addr201);
               }
               §§goto(addr161);
            }
            §§goto(addr203);
         }
      }
      
      public function §6!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§ set§)
         {
            this.§]>§(this.§ set§.§>!2§);
            if(_loc2_ && _loc2_)
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
