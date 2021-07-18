package §_-ly§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2DebugDraw;
   import §_-Iw§.b2TimeStep;
   import §_-Iw§.b2World;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §_-NA§:b2Controller;
      
      b2internal var §_-VL§:b2Controller;
      
      protected var §_-qV§:b2ControllerEdge;
      
      protected var §_-Ww§:int;
      
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
      
      public function §_-bf§(param1:b2TimeStep) : void
      {
      }
      
      public function §_-q0§(param1:b2DebugDraw) : void
      {
      }
      
      public function §_-J2§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!(_loc5_ && this))
         {
            _loc2_.§_-Gk§ = this;
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.§_-zo§ = param1;
               _loc2_.§_-kM§ = this.§_-qV§;
               if(_loc6_)
               {
                  _loc2_.§_-kn§ = null;
                  if(!_loc5_)
                  {
                     this.§_-qV§ = _loc2_;
                     §§push(_loc2_.§_-kM§);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr61);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr65);
                     }
                     addr61:
                     _loc2_.§_-kM§.§_-kn§ = _loc2_;
                     if(_loc6_)
                     {
                        addr65:
                        var _loc3_:*;
                        §§push((_loc3_ = this).§_-Ww§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_ || this)
                        {
                           _loc3_.§_-Ww§ = _loc4_;
                        }
                        if(_loc6_ || param1)
                        {
                           addr99:
                           _loc2_.§_-Ok§ = param1.§_-C2§;
                           _loc2_.§_-NU§ = null;
                        }
                        param1.§_-C2§ = _loc2_;
                        §§goto(addr109);
                     }
                     addr109:
                     §§push(_loc2_.§_-Ok§);
                     if(!(_loc5_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           §§goto(addr121);
                        }
                        §§goto(addr130);
                     }
                     addr121:
                     _loc2_.§_-Ok§.§_-NU§ = _loc2_;
                     §§goto(addr119);
                  }
                  addr119:
                  if(!(_loc5_ && _loc3_))
                  {
                     addr130:
                     §§push((_loc3_ = param1).§_-Tf§);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc4_ = §§pop();
                     if(!_loc5_)
                     {
                        _loc3_.§_-Tf§ = _loc4_;
                     }
                  }
                  return;
               }
               §§goto(addr65);
            }
            §§goto(addr121);
         }
         §§goto(addr65);
      }
      
      public function §_-4E§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§_-C2§;
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc6_ || param1)
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§pop();
                     §§push(_loc2_.§_-Gk§ == this);
                     if(!_loc5_)
                     {
                        addr56:
                        §§push(!§§pop());
                     }
                  }
               }
               if(§§pop())
               {
                  continue;
               }
               §§push(_loc2_.§_-kn§);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr67:
                        _loc2_.§_-kn§.§_-kM§ = _loc2_.§_-kM§;
                        if(!_loc5_)
                        {
                           addr72:
                           §§push(_loc2_.§_-kM§);
                           if(_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    addr86:
                                    _loc2_.§_-kM§.§_-kn§ = _loc2_.§_-kn§;
                                    addr89:
                                    §§push(_loc2_.§_-Ok§);
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr141);
                                       }
                                       §§goto(addr110);
                                    }
                                    break;
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr72);
               }
               §§goto(addr67);
            }
            §§goto(addr56);
         }
         §§pop().§_-NU§ = _loc2_.§_-NU§;
         if(!_loc5_)
         {
            addr110:
            §§push(_loc2_.§_-NU§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_ || param1)
                  {
                     §§goto(addr124);
                  }
                  §§goto(addr152);
               }
               §§goto(addr129);
            }
            §§goto(addr124);
         }
         addr124:
         _loc2_.§_-NU§.§_-Ok§ = _loc2_.§_-Ok§;
         if(_loc6_)
         {
            addr129:
            if(this.§_-qV§ == _loc2_)
            {
               addr133:
               this.§_-qV§ = _loc2_.§_-kM§;
            }
            if(param1.§_-C2§ == _loc2_)
            {
               §§goto(addr141);
            }
            §§goto(addr152);
         }
         addr141:
         if(!_loc5_)
         {
            §§push(_loc2_.§_-Ok§);
            break loop0;
         }
         param1.§_-C2§ = _loc2_.§_-Ok§;
         if(!(_loc5_ && _loc2_))
         {
            addr152:
            var _loc3_:*;
            §§push((_loc3_ = param1).§_-Tf§);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || this)
            {
               _loc3_.§_-Tf§ = _loc4_;
            }
            §§push((_loc3_ = this).§_-Ww§);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() - 1);
            }
            _loc4_ = §§pop();
            if(_loc6_ || _loc3_)
            {
               _loc3_.§_-Ww§ = _loc4_;
            }
         }
      }
      
      public function §_-jU§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§_-qV§)
         {
            this.§_-4E§(this.§_-qV§.§_-zo§);
            if(_loc1_ && this)
            {
               break;
            }
         }
      }
      
      public function §_-tx§() : b2Controller
      {
         return this.§_-NA§;
      }
      
      public function §_-MR§() : b2World
      {
         return this.m_world;
      }
      
      public function §_-kA§() : b2ControllerEdge
      {
         return this.§_-qV§;
      }
   }
}
