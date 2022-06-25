package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-fY§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-CL§:int = 2;
      
      b2internal static const §_-Mk§:int = 3;
      
      b2internal static const §_-kH§:int = 4;
      
      b2internal static const §_-w§:int = 5;
      
      b2internal static const §_-eV§:int = 6;
      
      b2internal static const §_-z6§:int = 7;
      
      b2internal static const §_-0A2§:int = 8;
      
      b2internal static const §_-o4§:int = 9;
      
      b2internal static const §_-019§:int = 0;
      
      b2internal static const §_-D3§:int = 1;
      
      b2internal static const §_-Z5§:int = 2;
      
      b2internal static const §_-z3§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-fY§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               while(true)
               {
                  §_-CL§ = 2;
                  loop2:
                  while(true)
                  {
                     §_-Mk§ = 3;
                     loop3:
                     while(true)
                     {
                        §_-kH§ = 4;
                        loop4:
                        while(true)
                        {
                           §_-w§ = 5;
                           while(true)
                           {
                              §_-eV§ = 6;
                              addr144:
                              addr62:
                              while(true)
                              {
                                 §_-z6§ = 7;
                                 continue loop2;
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 §_-Z5§ = 2;
                                 loop12:
                                 for(; _loc2_; while(true)
                                 {
                                    §_-z3§ = 3;
                                    if(!_loc2_)
                                    {
                                       continue loop12;
                                    }
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop2;
                                    }
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr144);
                                 },return)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    addr84:
                                    while(true)
                                    {
                                       §_-D3§ = 1;
                                       break loop12;
                                    }
                                 }
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    §§goto(addr62);
                                 }
                                 while(_loc2_ || b2Joint)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §_-019§ = 0;
                                    §§goto(addr84);
                                    §§goto(addr55);
                                 }
                                 addr55:
                                 continue loop3;
                                 addr89:
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §_-0A2§ = 8;
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr50);
      }
      
      b2internal var §_-1c§:int;
      
      b2internal var §_-021§:b2Joint;
      
      b2internal var §_-oz§:b2Joint;
      
      b2internal var §_-b3§:b2JointEdge;
      
      b2internal var §_-0DP§:b2JointEdge;
      
      b2internal var §_-0FB§:b2Body;
      
      b2internal var §_-c9§:b2Body;
      
      b2internal var §_-GX§:Boolean;
      
      b2internal var §_-vY§:Boolean;
      
      private var §_-oP§;
      
      b2internal var §_-2i§:b2Vec2;
      
      b2internal var §_-iQ§:b2Vec2;
      
      b2internal var §_-04l§:Number;
      
      b2internal var §_-cW§:Number;
      
      b2internal var §_-gk§:Number;
      
      b2internal var §_-at§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-b3§ = new b2JointEdge();
            while(true)
            {
               this.§_-0DP§ = new b2JointEdge();
               while(true)
               {
                  this.§_-2i§ = new b2Vec2();
                  loop2:
                  for(; _loc2_ || param1; if(_loc2_ || _loc2_)
                  {
                     return;
                  })
                  {
                     while(true)
                     {
                        this.§_-iQ§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           super();
                           addr177:
                           while(true)
                           {
                              §§push(b2Settings);
                              §§push(param1.§_-ZR§ == param1.§_-7b§);
                              if(_loc2_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().b2Assert(§§pop());
                              while(true)
                              {
                                 this.§_-1c§ = param1.type;
                                 continue loop4;
                                 addr51:
                                 if(_loc2_ || param1)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               this.§_-vY§ = param1.collideConnected;
               §§goto(addr76);
            }
         }
         §§goto(addr196);
      }
      
      b2internal static function §_-xb§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc6_ || b2Joint)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(b2internal::_-Mk);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(_loc5_ && param2)
                           {
                              addr309:
                              if(§§pop() === _loc4_)
                              {
                                 addr311:
                                 §§push(8);
                                 if(!_loc5_)
                                 {
                                    addr314:
                                 }
                              }
                              else
                              {
                                 §§push(9);
                              }
                           }
                           addr320:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
                                 break;
                              case 1:
                                 _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
                                 break;
                              case 2:
                                 _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
                                 break;
                              case 3:
                                 _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
                                 break;
                              case 4:
                                 _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
                                 break;
                              case 5:
                                 _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
                                 break;
                              case 6:
                                 _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
                                 break;
                              case 7:
                                 _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
                                 break;
                              case 8:
                                 _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
                           }
                           return _loc3_;
                           addr319:
                        }
                        else
                        {
                           addr297:
                           §§push(7);
                           if(_loc5_ && b2Joint)
                           {
                              §§goto(addr314);
                           }
                           else
                           {
                              addr305:
                           }
                           §§goto(addr319);
                        }
                        §§goto(addr314);
                     }
                     else
                     {
                        §§push(b2internal::_-w);
                        if(_loc6_)
                        {
                           addr143:
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || b2Joint)
                                 {
                                    §§push(1);
                                    if(_loc5_ && param2)
                                    {
                                       addr236:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr311);
                                 }
                                 §§goto(addr319);
                              }
                              else
                              {
                                 §§push(b2internal::_-CL);
                                 if(_loc6_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                                §§goto(addr314);
                                             }
                                          }
                                          else
                                          {
                                             addr205:
                                             §§push(3);
                                             if(_loc6_ || _loc3_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(!(_loc5_ && b2Joint))
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§goto(addr205);
                                                   }
                                                   else
                                                   {
                                                      addr233:
                                                      §§push(4);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr236);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr305);
                                                      }
                                                   }
                                                   §§goto(addr319);
                                                }
                                                else
                                                {
                                                   §§push(b2internal::_-kH);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      addr222:
                                                      §§push(_loc4_);
                                                      if(_loc6_ || b2Joint)
                                                      {
                                                         addr230:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr233);
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::_-eV);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  addr248:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(5);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr319);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr309);
                                                                        }
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(b2internal::_-z6);
                                                                     if(!_loc6_)
                                                                     {
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            §§push(_loc4_);
                                                            if(!_loc5_)
                                                            {
                                                               addr261:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr269:
                                                                     §§push(6);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr319);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr305);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr297);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(b2internal::_-0A2);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc6_ || b2Joint)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr297);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(b2internal::_-o4);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr309);
                                                                           }
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr236);
                                                }
                                             }
                                             §§goto(addr309);
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr230);
                                 }
                              }
                              §§goto(addr314);
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr222);
                     }
                  }
                  §§goto(addr261);
               }
               §§goto(addr143);
            }
            §§goto(addr269);
         }
         §§goto(addr320);
      }
      
      b2internal static function §_-01§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-oF§() : int
      {
         return this.§_-1c§;
      }
      
      public function GetAnchorA() : b2Vec2
      {
         return null;
      }
      
      public function GetAnchorB() : b2Vec2
      {
         return null;
      }
      
      public function GetReactionForce(param1:Number) : b2Vec2
      {
         return null;
      }
      
      public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-00L§() : b2Body
      {
         return this.§_-0FB§;
      }
      
      public function §_-03D§() : b2Body
      {
         return this.§_-c9§;
      }
      
      public function §_-02g§() : b2Joint
      {
         return this.§_-oz§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-oP§;
      }
      
      public function §_-zJ§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-oP§ = param1;
         }
      }
      
      public function §_-04Z§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-0FB§.§_-04Z§());
            if(!(_loc2_ && this))
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        addr46:
                        §§push(this.§_-c9§.§_-04Z§());
                        if(_loc1_)
                        {
                           addr51:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr46);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-dm§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
