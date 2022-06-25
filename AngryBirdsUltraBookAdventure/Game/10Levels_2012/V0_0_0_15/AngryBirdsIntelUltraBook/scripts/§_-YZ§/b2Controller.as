package §_-YZ§
{
   import §_-5§.b2internal;
   import §_-aU§.b2Body;
   import §_-aU§.b2DebugDraw;
   import §_-aU§.b2TimeStep;
   import §_-aU§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-oz§:b2Controller;
      
      b2internal var §_-021§:b2Controller;
      
      protected var §_-WS§:b2ControllerEdge;
      
      protected var §_-F9§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function §_-wu§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-xw§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-gW§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!(_loc6_ && _loc2_))
         {
            _loc2_.§_-03s§ = this;
            if(_loc5_ || this)
            {
               _loc2_.§_-mV§ = param1;
               loop0:
               while(true)
               {
                  _loc2_.§_-Vq§ = this.§_-WS§;
                  if(!_loc6_)
                  {
                     _loc2_.§_-qA§ = null;
                     if(_loc5_ || this)
                     {
                        while(true)
                        {
                           this.§_-WS§ = _loc2_;
                           continue loop0;
                        }
                        addr56:
                     }
                     else
                     {
                        _loc2_.§_-0AE§ = param1.§_-DZ§;
                        addr136:
                     }
                     while(true)
                     {
                        _loc2_.§_-SP§ = null;
                        addr193:
                        while(true)
                        {
                           addr170:
                           §§goto(addr219);
                        }
                     }
                     addr198:
                  }
                  break;
               }
               while(true)
               {
                  §§push(_loc2_.§_-0AE§);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           if(_loc5_)
                           {
                              §§goto(addr157);
                           }
                           §§goto(addr193);
                        }
                        addr219:
                        while(true)
                        {
                           param1.§_-DZ§ = _loc2_;
                           if(_loc6_)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              break loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr159);
               }
            }
         }
         §§goto(addr193);
      }
      
      public function §_-kG§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§_-DZ§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        §§push(_loc2_.§_-03s§ == this);
                        if(!(_loc5_ && param1))
                        {
                           addr194:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc6_ || this)
                           {
                              §§push(_loc2_.§_-qA§);
                              if(_loc6_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_.§_-qA§);
                                       addr214:
                                       while(true)
                                       {
                                          §§pop().§_-Vq§ = _loc2_.§_-Vq§;
                                          addr217:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr212:
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_.§_-Vq§);
                                    if(_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_.§_-Vq§);
                                             addr178:
                                             while(true)
                                             {
                                                §§pop().§_-qA§ = _loc2_.§_-qA§;
                                                addr181:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr176:
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc2_.§_-0AE§);
                                          if(!_loc5_)
                                          {
                                             break loop0;
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §§pop().§_-SP§ = _loc2_.§_-SP§;
                                             loop14:
                                             while(true)
                                             {
                                                addr121:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§_-SP§);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(_loc2_.§_-0AE§);
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                               continue loop4;
                                                               addr162:
                                                            }
                                                            §§push(_loc2_.§_-SP§);
                                                            while(true)
                                                            {
                                                               §§pop().§_-0AE§ = _loc2_.§_-0AE§;
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     addr104:
                                                                     while(true)
                                                                     {
                                                                        if(this.§_-WS§ == _loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && _loc2_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              this.§_-WS§ = _loc2_.§_-Vq§;
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           continue loop14;
                                                                           addr109:
                                                                        }
                                                                        while(param1.§_-DZ§ == _loc2_)
                                                                        {
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           addr255:
                                                                           var _loc3_:*;
                                                                           §§push((_loc3_ = this).§_-F9§);
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           var _loc4_:* = §§pop();
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              _loc3_.§_-F9§ = _loc4_;
                                                                           }
                                                                        }
                                                                        addr218:
                                                                        §§push((_loc3_ = param1).§_-04s§);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           _loc3_.§_-04s§ = _loc4_;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr255);
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     addr104:
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               addr280:
                                                               return;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                   §§goto(addr146);
                                                   continue loop14;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr181);
                  }
               }
            }
            §§goto(addr194);
         }
         while(true)
         {
            if(§§pop())
            {
               §§goto(addr162);
            }
            §§goto(addr121);
         }
      }
      
      public function §_-p7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§_-WS§)
         {
            this.§_-kG§(this.§_-WS§.§_-mV§);
            if(_loc2_ && this)
            {
               break;
            }
         }
      }
      
      public function §_-02g§() : b2Controller
      {
         return this.§_-oz§;
      }
      
      public function §_-ZS§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-JW§() : b2ControllerEdge
      {
         return this.§_-WS§;
      }
   }
}
