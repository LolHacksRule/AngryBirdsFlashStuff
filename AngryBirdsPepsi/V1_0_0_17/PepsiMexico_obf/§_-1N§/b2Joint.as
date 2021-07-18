package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §_-wc§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §_-bx§:int = 2;
      
      b2internal static const §_-wG§:int = 3;
      
      b2internal static const §_-45§:int = 4;
      
      b2internal static const §_-5H§:int = 5;
      
      b2internal static const §const§:int = 6;
      
      b2internal static const §_-7U§:int = 7;
      
      b2internal static const §_-B0§:int = 8;
      
      b2internal static const §_-oH§:int = 9;
      
      b2internal static const §_-vv§:int = 0;
      
      b2internal static const §_-oP§:int = 1;
      
      b2internal static const §_-Hv§:int = 2;
      
      b2internal static const §_-j9§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2Joint)
         {
            §_-wc§ = 0;
         }
         if(!(_loc1_ && b2Joint))
         {
            §_-bx§ = 2;
            §_-wG§ = 3;
            if(_loc2_)
            {
               §_-45§ = 4;
               §_-5H§ = 5;
               §const§ = 6;
               §_-7U§ = 7;
               §§goto(addr42);
            }
            §§goto(addr94);
         }
         addr42:
         if(_loc2_ || _loc2_)
         {
            §_-B0§ = 8;
            §_-oH§ = 9;
            §_-vv§ = 0;
            §_-oP§ = 1;
            if(_loc2_ || b2Joint)
            {
               addr94:
               §_-Hv§ = 2;
               if(_loc2_)
               {
                  §_-j9§ = 3;
               }
            }
         }
      }
      
      b2internal var §_-Sj§:int;
      
      b2internal var §_-VL§:b2Joint;
      
      b2internal var §_-NA§:b2Joint;
      
      b2internal var §_-jw§:b2JointEdge;
      
      b2internal var §_-7k§:b2JointEdge;
      
      b2internal var §_-93§:b2Body;
      
      b2internal var §_-9K§:b2Body;
      
      b2internal var §_-j§:Boolean;
      
      b2internal var §_-Ef§:Boolean;
      
      private var §_-OB§;
      
      b2internal var §_-Sc§:b2Vec2;
      
      b2internal var §_-jk§:b2Vec2;
      
      b2internal var §_-k9§:Number;
      
      b2internal var §_-s8§:Number;
      
      b2internal var §_-kg§:Number;
      
      b2internal var §_-GH§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-jw§ = new b2JointEdge();
            if(!(_loc3_ && param1))
            {
               this.§_-7k§ = new b2JointEdge();
               this.§_-Sc§ = new b2Vec2();
               if(_loc2_ || _loc3_)
               {
                  addr46:
                  this.§_-jk§ = new b2Vec2();
                  if(_loc2_ || param1)
                  {
                     super();
                     §§push(b2Settings);
                     §§push(param1.§_-dL§ == param1.§_-h1§);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().b2Assert(§§pop());
                     if(_loc2_)
                     {
                        this.§_-Sj§ = param1.type;
                        if(_loc2_)
                        {
                           addr89:
                           this.§_-VL§ = null;
                           if(_loc2_)
                           {
                              this.§_-NA§ = null;
                              addr97:
                              this.§_-93§ = param1.§_-dL§;
                              if(!_loc2_)
                              {
                              }
                              this.§_-Ef§ = param1.collideConnected;
                              this.§_-j§ = false;
                              this.§_-OB§ = param1.§_-Vb§;
                              addr125:
                              return;
                              addr107:
                           }
                           this.§_-9K§ = param1.§_-h1§;
                           §§goto(addr107);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr46);
      }
      
      b2internal static function §_-xO§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc5_ || _loc3_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && b2Joint))
            {
               if(b2internal::_-wG === _loc4_)
               {
                  §§push(!!_loc5_ ? 0 : 7);
               }
               else if(b2internal::_-5H === _loc4_)
               {
                  addr135:
                  §§push(1);
               }
               else
               {
                  §§push(b2internal::_-bx);
                  if(_loc5_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr250);
                        }
                        else
                        {
                           addr156:
                           addr250:
                           addr251:
                           switch(2)
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
                           §§push(3);
                        }
                     }
                     else if(b2internal::e_revoluteJoint === _loc4_)
                     {
                        if(_loc5_ || param2)
                        {
                           §§goto(addr156);
                        }
                        else
                        {
                           addr177:
                           §§push(4);
                           if(_loc6_ && b2Joint)
                           {
                              addr226:
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr230);
                                 }
                                 else
                                 {
                                    §§push(b2internal::_-oH);
                                    if(!_loc6_)
                                    {
                                       addr235:
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr250);
                                 }
                              }
                              if(§§pop() === §§pop())
                              {
                                 addr245:
                                 §§goto(addr250);
                                 §§push(8);
                              }
                              else
                              {
                                 §§goto(addr250);
                                 §§push(9);
                              }
                           }
                           §§goto(addr250);
                        }
                     }
                     else
                     {
                        §§push(b2internal::_-45);
                        if(_loc5_)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && param2))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param2)
                                 {
                                    §§goto(addr177);
                                 }
                                 else
                                 {
                                    addr221:
                                    §§push(6);
                                    if(_loc5_)
                                    {
                                       addr224:
                                    }
                                    §§goto(addr250);
                                 }
                              }
                              else
                              {
                                 §§push(b2internal::const);
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc6_ && b2Joint))
                                    {
                                       addr197:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(5);
                                             if(_loc6_ && _loc3_)
                                             {
                                             }
                                             §§goto(addr250);
                                          }
                                          else
                                          {
                                             §§goto(addr230);
                                          }
                                       }
                                       else
                                       {
                                          §§push(b2internal::_-7U);
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr221);
                                                }
                                                else
                                                {
                                                   §§push(b2internal::_-B0);
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr250);
                                    }
                                    §§goto(addr226);
                                 }
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr197);
                        }
                     }
                     §§goto(addr250);
                  }
                  §§goto(addr245);
               }
               §§goto(addr250);
            }
            §§goto(addr135);
         }
         §§goto(addr251);
      }
      
      b2internal static function §_-2A§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §_-ww§() : int
      {
         return this.§_-Sj§;
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
      
      public function §_-kE§() : b2Body
      {
         return this.§_-93§;
      }
      
      public function §_-Pl§() : b2Body
      {
         return this.§_-9K§;
      }
      
      public function §_-tx§() : b2Joint
      {
         return this.§_-NA§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-OB§;
      }
      
      public function §_-g6§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-OB§ = param1;
         }
      }
      
      public function §_-w4§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§_-93§.§_-w4§());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§pop();
                        addr53:
                        §§push(this.§_-9K§.§_-w4§());
                        if(!_loc1_)
                        {
                           addr58:
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr53);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §_-qd§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
