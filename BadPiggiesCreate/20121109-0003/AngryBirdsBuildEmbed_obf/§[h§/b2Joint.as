package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §'y§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const § use§:int = 2;
      
      b2internal static const §-r§:int = 3;
      
      b2internal static const §?l§:int = 4;
      
      b2internal static const § !D§:int = 5;
      
      b2internal static const §=!"§:int = 6;
      
      b2internal static const §?k§:int = 7;
      
      b2internal static const §[=§:int = 8;
      
      b2internal static const §3L§:int = 9;
      
      b2internal static const §2!v§:int = 0;
      
      b2internal static const §,!'§:int = 1;
      
      b2internal static const §86§:int = 2;
      
      b2internal static const §+!5§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §'y§ = 0;
            if(_loc1_ || b2Joint)
            {
               e_revoluteJoint = 1;
               if(!_loc2_)
               {
                  § use§ = 2;
                  if(_loc1_ || b2Joint)
                  {
                     §-r§ = 3;
                     §?l§ = 4;
                     if(_loc1_ || _loc1_)
                     {
                        § !D§ = 5;
                        addr84:
                        §=!"§ = 6;
                        if(!_loc2_)
                        {
                           §?k§ = 7;
                           if(_loc1_)
                           {
                              §[=§ = 8;
                              §3L§ = 9;
                              addr100:
                              §2!v§ = 0;
                              §,!'§ = 1;
                              addr106:
                              §86§ = 2;
                              §+!5§ = 3;
                           }
                        }
                        return;
                        addr71:
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr71);
               }
               §§goto(addr106);
            }
            §§goto(addr100);
         }
         §§goto(addr84);
      }
      
      b2internal var §5!Z§:int;
      
      b2internal var §?!D§:b2Joint;
      
      b2internal var § <§:b2Joint;
      
      b2internal var §<!F§:b2JointEdge;
      
      b2internal var §@#§:b2JointEdge;
      
      b2internal var §2+§:b2Body;
      
      b2internal var §4P§:b2Body;
      
      b2internal var §=T§:Boolean;
      
      b2internal var §4!2§:Boolean;
      
      private var §>!2§;
      
      b2internal var §^!Y§:b2Vec2;
      
      b2internal var §6!k§:b2Vec2;
      
      b2internal var §3T§:Number;
      
      b2internal var §`y§:Number;
      
      b2internal var §@!=§:Number;
      
      b2internal var §'o§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§<!F§ = new b2JointEdge();
            if(_loc3_ || param1)
            {
               this.§@#§ = new b2JointEdge();
               this.§^!Y§ = new b2Vec2();
            }
            this.§6!k§ = new b2Vec2();
            super();
            §§push(b2Settings);
            §§push(param1.§[!i§ == param1.§;!K§);
            if(!(_loc2_ && param1))
            {
               §§push(!§§pop());
            }
            §§pop().b2Assert(§§pop());
            if(!(_loc2_ && _loc2_))
            {
               this.§5!Z§ = param1.type;
               if(_loc3_)
               {
                  this.§?!D§ = null;
                  if(_loc3_ || param1)
                  {
                     addr97:
                     this.§ <§ = null;
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§2+§ = param1.§[!i§;
                        if(!_loc2_)
                        {
                           this.§4P§ = param1.§;!K§;
                           addr113:
                           if(_loc3_ || this)
                           {
                              addr134:
                              this.§4!2§ = param1.collideConnected;
                              if(_loc3_)
                              {
                                 §§goto(addr140);
                              }
                           }
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr134);
               }
               §§goto(addr113);
            }
            §§goto(addr97);
         }
         addr140:
         this.§=T§ = false;
         if(_loc3_ || this)
         {
            addr150:
            this.§>!2§ = param1.§!L§;
         }
      }
      
      b2internal static function §?J§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(!(_loc5_ && b2Joint))
         {
            var _loc4_:* = §§pop();
            if(b2internal::-r === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(0);
                  if(_loc6_ || param1)
                  {
                     addr273:
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
                     addr272:
                  }
                  §§goto(addr272);
               }
               else
               {
                  addr198:
                  §§push(4);
               }
               addr199:
            }
            else
            {
               §§push(b2internal:: !D);
               if(_loc6_ || b2Joint)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && b2Joint))
                  {
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr272);
                        §§push(1);
                     }
                     else
                     {
                        §§push(b2internal:: use);
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && b2Joint))
                              {
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr272);
                                 }
                                 else
                                 {
                                    §§goto(addr199);
                                 }
                              }
                              else
                              {
                                 addr257:
                                 §§push(7);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr272);
                              }
                              §§goto(addr272);
                           }
                           else
                           {
                              §§push(b2internal::e_revoluteJoint);
                              if(!_loc5_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr185:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr272);
                                       §§push(3);
                                    }
                                    else
                                    {
                                       §§push(b2internal::?l);
                                       if(_loc6_ || b2Joint)
                                       {
                                          if(§§pop() === _loc4_)
                                          {
                                             §§goto(addr198);
                                          }
                                          else
                                          {
                                             §§push(b2internal::=!");
                                             if(_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc5_ && param2))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(5);
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr272);
                                                         }
                                                         else
                                                         {
                                                            addr248:
                                                            §§push(_loc4_);
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§goto(addr257);
                                                               }
                                                               else
                                                               {
                                                                  §§push(b2internal::3L);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr264:
                                                                     §§push(_loc4_);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      else
                                                      {
                                                         addr233:
                                                         §§push(6);
                                                         if(_loc6_)
                                                         {
                                                            addr246:
                                                            §§goto(addr272);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr264);
                                                         }
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::?k);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr231:
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            §§goto(addr233);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr248);
                                                            §§push(b2internal::[=);
                                                         }
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr272);
                                                   §§push(8);
                                                }
                                                else
                                                {
                                                   §§goto(addr272);
                                                   §§push(9);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr246);
                                          }
                                       }
                                       §§goto(addr231);
                                    }
                                    §§goto(addr272);
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr264);
                           }
                        }
                        §§goto(addr231);
                     }
                     §§goto(addr272);
                  }
                  §§goto(addr185);
               }
               §§goto(addr248);
            }
            §§goto(addr272);
         }
         §§goto(addr273);
      }
      
      b2internal static function §;!#§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §"!j§() : int
      {
         return this.§5!Z§;
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
      
      public function §<!W§() : b2Body
      {
         return this.§2+§;
      }
      
      public function §?!=§() : b2Body
      {
         return this.§4P§;
      }
      
      public function §4!j§() : b2Joint
      {
         return this.§ <§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!2§;
      }
      
      public function §[!X§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>!2§ = param1;
         }
      }
      
      public function §,!t§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§2+§.§,!t§());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr46:
                        §§pop();
                        §§push(this.§4P§.§,!t§());
                        if(_loc2_ || _loc2_)
                        {
                           addr57:
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr57);
            }
         }
         §§goto(addr46);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §7!2§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
