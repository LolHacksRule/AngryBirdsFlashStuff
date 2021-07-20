package §_-a5§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2ContactListener;
   import §_-Iw§.b2Fixture;
   import §_-Ja§.b2Sweep;
   import §_-Ja§.b2Transform;
   import §_-Kt§.b2Shape;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-qg§.b2ContactID;
   import §_-qg§.b2Manifold;
   import §_-qg§.b2ManifoldPoint;
   import §_-qg§.b2TOIInput;
   import §_-qg§.b2TimeOfImpact;
   import §_-qg§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-4c§:uint = 1;
      
      b2internal static var §_-QI§:uint = 2;
      
      b2internal static var §_-rW§:uint = 4;
      
      b2internal static var §_-Sn§:uint = 8;
      
      b2internal static var §_-u§:uint = 16;
      
      b2internal static var §_-tD§:uint = 32;
      
      b2internal static var §_-cT§:uint = 64;
      
      private static var §_-4L§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2Contact))
         {
            §_-Sn§ = 8;
            §_-u§ = 16;
            if(_loc2_ || _loc2_)
            {
               addr50:
               §_-tD§ = 32;
               if(!(_loc1_ && _loc1_))
               {
                  §_-cT§ = 64;
                  if(!_loc1_)
                  {
                     addr72:
                     §_-4L§ = new b2TOIInput();
                  }
                  return;
               }
            }
            §§goto(addr72);
         }
         §§goto(addr50);
      }
      
      b2internal var §_-Il§:uint;
      
      b2internal var §_-VL§:b2Contact;
      
      b2internal var §_-NA§:b2Contact;
      
      b2internal var §_-UU§:b2ContactEdge;
      
      b2internal var §_-f-§:b2ContactEdge;
      
      b2internal var §_-NZ§:b2Fixture;
      
      b2internal var §_-xL§:b2Fixture;
      
      b2internal var §_-Xg§:b2Manifold;
      
      b2internal var §false§:b2Manifold;
      
      b2internal var §_-fE§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§_-UU§ = new b2ContactEdge();
            if(!(_loc1_ && _loc2_))
            {
               this.§_-f-§ = new b2ContactEdge();
               if(!(_loc1_ && _loc2_))
               {
                  addr50:
                  this.§_-Xg§ = new b2Manifold();
                  if(!(_loc1_ && _loc1_))
                  {
                     addr68:
                     this.§false§ = new b2Manifold();
                     if(_loc1_)
                     {
                     }
                     §§goto(addr76);
                  }
                  super();
               }
               addr76:
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr50);
      }
      
      public function §_-jt§() : b2Manifold
      {
         return this.§_-Xg§;
      }
      
      public function §_-u1§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§_-NZ§.GetBody();
         var _loc3_:b2Body = this.§_-xL§.GetBody();
         var _loc4_:b2Shape = this.§_-NZ§.GetShape();
         var _loc5_:b2Shape = this.§_-xL§.GetShape();
         if(_loc6_)
         {
            param1.§_-lc§(this.§_-Xg§,_loc2_.§_-ZO§(),_loc4_.§_-Q2§,_loc3_.§_-ZO§(),_loc5_.§_-Q2§);
         }
      }
      
      public function §_-ps§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-u) == b2internal::_-u;
      }
      
      public function §_-UV§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-QI) == b2internal::_-QI;
      }
      
      public function §_-uP§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1)
            {
               if(_loc3_ || this)
               {
                  this.§_-Il§ |= b2internal::_-4c;
                  if(_loc3_)
                  {
                     addr52:
                  }
               }
               §§goto(addr52);
            }
            else
            {
               this.§_-Il§ &= ~b2internal::_-4c;
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §_-YU§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-4c) == b2internal::_-4c;
      }
      
      public function §_-pv§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  this.§_-Il§ |= b2internal::_-tD;
                  if(_loc3_ && _loc2_)
                  {
                  }
               }
            }
            else
            {
               this.§_-Il§ &= ~b2internal::_-tD;
            }
         }
      }
      
      public function §_-v7§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-tD) == b2internal::_-tD;
      }
      
      public function §_-tx§() : b2Contact
      {
         return this.§_-NA§;
      }
      
      public function §_-8S§() : b2Fixture
      {
         return this.§_-NZ§;
      }
      
      public function §_-16§() : b2Fixture
      {
         return this.§_-xL§;
      }
      
      public function §_-om§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-Il§ |= b2internal::_-cT;
         }
      }
      
      b2internal function §_-i0§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§_-Il§ = b2internal::_-tD;
         §§push(!param1);
         if(_loc5_)
         {
            §§push(§§pop());
            if(_loc5_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        addr36:
                        if(param2)
                        {
                           §§push(Boolean(param1.§_-YU§()));
                           if(_loc5_ || this)
                           {
                              addr61:
                              if(!§§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    addr70:
                                    §§pop();
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(param2.§_-YU§());
                                       if(!_loc6_)
                                       {
                                          addr83:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                this.§_-Il§ |= b2internal::_-4c;
                                             }
                                          }
                                       }
                                       §§goto(addr83);
                                    }
                                    var _loc3_:b2Body = param1.GetBody();
                                    var _loc4_:b2Body = param2.GetBody();
                                    §§push(_loc3_.§_-ww§());
                                    if(_loc5_)
                                    {
                                       §§push(b2Body.b2_dynamicBody);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() != §§pop());
                                          §§push(§§pop() != §§pop());
                                          if(_loc5_ || param1)
                                          {
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                §§push(_loc3_.§_-60§());
                                                if(_loc5_ || param2)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      addr142:
                                                      §§push(§§pop());
                                                      if(_loc5_ || param1)
                                                      {
                                                         addr150:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr165:
                                                               §§pop();
                                                               §§push(_loc4_.§_-ww§() != b2Body.b2_dynamicBody);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr179:
                                                                  if(§§pop() || _loc4_.§_-60§())
                                                                  {
                                                                     this.§_-Il§ |= b2internal::_-QI;
                                                                     if(_loc5_)
                                                                     {
                                                                        addr194:
                                                                        this.§_-NZ§ = param1;
                                                                        this.§_-xL§ = param2;
                                                                        this.§_-Xg§.§_-Tu§ = 0;
                                                                        this.§_-VL§ = null;
                                                                        this.§_-NA§ = null;
                                                                     }
                                                                     §§push(this.§_-UU§);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(null);
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           §§pop().§_-bX§ = §§pop();
                                                                           §§push(this.§_-UU§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr232:
                                                                              §§push(null);
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 addr240:
                                                                                 §§pop().§_-M0§ = §§pop();
                                                                                 §§push(this.§_-UU§);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    addr250:
                                                                                    §§push(null);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr253:
                                                                                       §§pop().§_-Jr§ = §§pop();
                                                                                       addr256:
                                                                                       §§push(this.§_-UU§);
                                                                                       §§push(null);
                                                                                    }
                                                                                    §§pop().§_-dr§ = §§pop();
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§push(this.§_-f-§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§pop().§_-bX§ = §§pop();
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§_-f-§);
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   addr289:
                                                                                                   §§push(null);
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr297);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr324);
                                                                                             }
                                                                                             §§goto(addr300);
                                                                                          }
                                                                                          addr297:
                                                                                          §§pop().§_-M0§ = §§pop();
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr300:
                                                                                             §§push(this.§_-f-§);
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                §§push(null);
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   addr324:
                                                                                                   §§pop().§_-Jr§ = §§pop();
                                                                                                   addr327:
                                                                                                   §§push(this.§_-f-§);
                                                                                                   §§push(null);
                                                                                                }
                                                                                                §§pop().§_-dr§ = §§pop();
                                                                                             }
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    §§goto(addr300);
                                                                                 }
                                                                                 §§goto(addr256);
                                                                              }
                                                                              §§goto(addr253);
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  §§goto(addr194);
                                                               }
                                                            }
                                                            §§goto(addr184);
                                                         }
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr70);
                        }
                     }
                     this.§_-NZ§ = null;
                     if(!(_loc6_ && param2))
                     {
                        this.§_-xL§ = null;
                     }
                     return;
                  }
                  §§goto(addr61);
               }
               §§goto(addr36);
            }
            §§goto(addr61);
         }
         §§goto(addr83);
      }
      
      b2internal function §_-r-§(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:* = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§false§;
         if(!(_loc18_ && this))
         {
            this.§false§ = this.§_-Xg§;
            if(!_loc18_)
            {
               this.§_-Xg§ = _loc2_;
               if(_loc17_ || param1)
               {
                  addr65:
                  this.§_-Il§ |= b2internal::_-tD;
               }
               var _loc3_:* = false;
               var _loc4_:* = (this.§_-Il§ & b2internal::_-u) == b2internal::_-u;
               var _loc5_:b2Body = this.§_-NZ§.m_body;
               var _loc6_:b2Body = this.§_-xL§.m_body;
               §§push(this.§_-NZ§.§_-xI§.§_-pb§(this.§_-xL§.§_-xI§));
               if(_loc17_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc17_ || param1)
               {
                  §§push(this.§_-Il§);
                  if(!_loc18_)
                  {
                     §§push(b2internal::_-4c);
                     if(_loc17_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!_loc18_)
                        {
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 _loc8_ = this.§_-NZ§.GetShape();
                                 _loc9_ = this.§_-xL§.GetShape();
                                 _loc10_ = _loc5_.§_-ZO§();
                                 _loc11_ = _loc6_.§_-ZO§();
                                 if(!(_loc18_ && _loc2_))
                                 {
                                    §§push(b2Shape.§_-pb§(_loc8_,_loc10_,_loc9_,_loc11_));
                                    if(_loc17_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    _loc3_ = §§pop();
                                 }
                              }
                              §§push(this.§_-Xg§);
                              if(!_loc18_)
                              {
                                 §§pop().§_-Tu§ = 0;
                                 if(!_loc18_)
                                 {
                                    addr431:
                                    §§push(_loc3_);
                                    if(_loc17_ || _loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc17_ || param1)
                                          {
                                             this.§_-Il§ |= b2internal::_-u;
                                             if(_loc17_)
                                             {
                                                addr463:
                                                §§push(_loc4_ == false);
                                                if(_loc17_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc17_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         addr479:
                                                         §§push(_loc3_);
                                                         §§push(true);
                                                         if(!_loc18_)
                                                         {
                                                            addr483:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               param1.BeginContact(this);
                                                            }
                                                            §§push(_loc4_);
                                                            if(!_loc18_)
                                                            {
                                                               addr491:
                                                               §§push(§§pop() == true);
                                                               if(§§pop() == true)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc17_ || _loc3_)
                                                                     {
                                                                        addr504:
                                                                        §§push(_loc3_);
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           addr514:
                                                                           if(§§pop() == false)
                                                                           {
                                                                              if(_loc17_ || _loc3_)
                                                                              {
                                                                                 param1.EndContact(this);
                                                                                 addr525:
                                                                                 if((this.§_-Il§ & b2internal::_-4c) == 0)
                                                                                 {
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       param1.PreSolve(this,this.§false§);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                        }
                                                                        §§goto(addr514);
                                                                     }
                                                                     §§goto(addr525);
                                                                  }
                                                                  §§goto(addr514);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr514);
                                                      }
                                                      §§goto(addr483);
                                                   }
                                                   §§goto(addr491);
                                                }
                                                §§goto(addr479);
                                             }
                                             §§goto(addr504);
                                          }
                                       }
                                       else
                                       {
                                          this.§_-Il§ &= ~b2internal::_-u;
                                       }
                                       §§goto(addr463);
                                    }
                                    §§goto(addr491);
                                 }
                                 else
                                 {
                                    addr295:
                                    _loc12_ = 0;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc12_);
                                       if(!_loc18_)
                                       {
                                          §§push(this.§_-Xg§.§_-Tu§);
                                          if(!(_loc18_ && this))
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§push(this.§_-Xg§);
                                                if(_loc17_)
                                                {
                                                   (_loc13_ = §§pop().§_-hn§[_loc12_]).§_-JQ§ = 0;
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      _loc13_.§_-RC§ = 0;
                                                   }
                                                   _loc14_ = _loc13_.m_id;
                                                   if(_loc17_ || param1)
                                                   {
                                                      §§push(0);
                                                      if(_loc17_ || _loc2_)
                                                      {
                                                         _loc15_ = §§pop();
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            addr347:
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(_loc15_);
                                                               addr396:
                                                               while(§§pop() < this.§false§.§_-Tu§)
                                                               {
                                                                  if((_loc16_ = this.§false§.§_-hn§[_loc15_]).m_id.key != _loc14_.key)
                                                                  {
                                                                     _loc15_++;
                                                                     if(!(_loc18_ && _loc3_))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     _loc13_.§_-JQ§ = _loc16_.§_-JQ§;
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        addr380:
                                                                        _loc13_.§_-RC§ = _loc16_.§_-RC§;
                                                                        if(_loc18_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr380);
                                                               }
                                                            }
                                                         }
                                                         _loc12_++;
                                                         continue;
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr347);
                                                }
                                                else
                                                {
                                                   addr418:
                                                   §§pop().§_-Tu§ = 0;
                                                }
                                             }
                                             §§push(_loc3_);
                                             §§push(_loc4_);
                                             if(_loc17_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   _loc5_.SetAwake(true);
                                                   _loc6_.SetAwake(true);
                                                }
                                                §§goto(addr431);
                                             }
                                             §§goto(addr491);
                                          }
                                          §§goto(addr525);
                                       }
                                       break;
                                    }
                                    §§goto(addr525);
                                    addr294:
                                 }
                                 §§goto(addr525);
                              }
                              else
                              {
                                 addr283:
                                 §§push(§§pop().§_-Tu§);
                                 if(!(_loc18_ && _loc3_))
                                 {
                                    addr293:
                                    _loc3_ = §§pop() > 0;
                                    §§goto(addr294);
                                 }
                              }
                              §§goto(addr295);
                           }
                           else
                           {
                              §§push(_loc5_.§_-ww§());
                              if(!(_loc18_ && _loc3_))
                              {
                                 addr174:
                                 §§push(b2Body.b2_dynamicBody);
                                 if(!(_loc18_ && param1))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc18_)
                                    {
                                       §§push(!§§pop());
                                       §§push(!§§pop());
                                       if(_loc17_ || param1)
                                       {
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             if(_loc17_ || this)
                                             {
                                                §§push(Boolean(_loc5_.§_-60§()));
                                                if(!_loc18_)
                                                {
                                                   addr209:
                                                   §§push(§§pop());
                                                   if(!_loc18_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                         if(_loc17_)
                                                         {
                                                            addr222:
                                                            §§push(_loc6_.§_-ww§() != b2Body.b2_dynamicBody);
                                                            if(!(_loc6_.§_-ww§() != b2Body.b2_dynamicBody))
                                                            {
                                                               addr224:
                                                               §§pop();
                                                               if(_loc17_)
                                                               {
                                                                  addr230:
                                                                  if(_loc6_.§_-60§())
                                                                  {
                                                                     if(!(_loc18_ && _loc3_))
                                                                     {
                                                                        this.§_-Il§ |= b2internal::_-QI;
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           addr259:
                                                                           §§push(_loc7_);
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr277:
                                                                                    this.Evaluate();
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§goto(addr283);
                                                                                       §§push(this.§_-Xg§);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§_-Xg§);
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr293);
                                                                           addr251:
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§_-Il§ &= ~b2internal::_-QI;
                                                                     §§goto(addr259);
                                                                  }
                                                               }
                                                               §§goto(addr251);
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr295);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr224);
                                 }
                              }
                              §§goto(addr222);
                           }
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr174);
               }
               §§goto(addr259);
            }
         }
         §§goto(addr65);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-cy§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§_-4L§);
            if(!(_loc4_ && this))
            {
               §§pop().§ do§.Set(this.§_-NZ§.GetShape());
               if(_loc3_)
               {
                  §§goto(addr30);
               }
               §§goto(addr69);
            }
            §§goto(addr77);
         }
         addr30:
         §§push(§_-4L§);
         if(_loc3_)
         {
            §§pop().§_-q9§.Set(this.§_-xL§.GetShape());
            if(_loc3_ || _loc3_)
            {
               §§push(§_-4L§);
               if(_loc3_ || param1)
               {
                  §§goto(addr60);
               }
            }
            §§goto(addr94);
         }
         addr60:
         §§pop().§_-nQ§ = param1;
         if(_loc3_ || this)
         {
            addr69:
            §§push(§_-4L§);
            if(_loc3_ || param2)
            {
               addr77:
               §§pop().§_-OY§ = param2;
               if(_loc3_ || _loc3_)
               {
                  addr94:
                  §_-4L§.§_-hR§ = b2Settings.b2_linearSlop;
               }
            }
            §§goto(addr94);
         }
         return b2TimeOfImpact.§_-d1§(§_-4L§);
      }
   }
}
