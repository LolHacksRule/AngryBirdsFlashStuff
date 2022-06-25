package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const § `§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §1r§:int = 2;
      
      b2internal static const §09§:int = 3;
      
      b2internal static const §+!L§:int = 4;
      
      b2internal static const §#F§:int = 5;
      
      b2internal static const §8!Y§:int = 6;
      
      b2internal static const § each§:int = 7;
      
      b2internal static const §]!n§:int = 8;
      
      b2internal static const §=!d§:int = 9;
      
      b2internal static const §+!t§:int = 0;
      
      b2internal static const §1!i§:int = 1;
      
      b2internal static const §#!F§:int = 2;
      
      b2internal static const §'!E§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § `§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §1r§ = 2;
                  loop2:
                  while(true)
                  {
                     §09§ = 3;
                     loop3:
                     for(; !_loc2_; if(!(_loc1_ || b2Joint))
                     {
                        continue;
                     },§ each§ = 7)
                     {
                        §+!L§ = 4;
                        loop4:
                        while(true)
                        {
                           §#F§ = 5;
                           while(true)
                           {
                              §8!Y§ = 6;
                              while(_loc1_ || _loc2_)
                              {
                                 continue loop3;
                                 loop10:
                                 for(; !(_loc2_ && _loc1_); if(_loc1_ || _loc2_)
                                 {
                                    addr41:
                                    if(_loc2_ && b2Joint)
                                    {
                                       while(true)
                                       {
                                          §]!n§ = 8;
                                          continue loop4;
                                          §§goto(addr41);
                                       }
                                       return;
                                    }
                                    addr132:
                                    addr57:
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop2;
                                 })
                                 {
                                    §1!i§ = 1;
                                    while(!(_loc2_ && b2Joint))
                                    {
                                       §#!F§ = 2;
                                       while(!(_loc2_ && b2Joint))
                                       {
                                          §'!E§ = 3;
                                          if(_loc1_ || _loc2_)
                                          {
                                             continue loop10;
                                          }
                                       }
                                    }
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       §+!t§ = 0;
                                       continue loop10;
                                       §§goto(addr74);
                                    }
                                    addr74:
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr57);
               }
            }
         }
         §§goto(addr132);
      }
      
      b2internal var §+!?§:int;
      
      b2internal var §-!I§:b2Joint;
      
      b2internal var §3=§:b2Joint;
      
      b2internal var §#7§:b2JointEdge;
      
      b2internal var §3G§:b2JointEdge;
      
      b2internal var §6!G§:b2Body;
      
      b2internal var §0!w§:b2Body;
      
      b2internal var §,![§:Boolean;
      
      b2internal var §0e§:Boolean;
      
      private var §?f§;
      
      b2internal var §'!§:b2Vec2;
      
      b2internal var §6!#§:b2Vec2;
      
      b2internal var §9k§:Number;
      
      b2internal var §,!J§:Number;
      
      b2internal var §8-§:Number;
      
      b2internal var §]+§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#7§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§3G§ = new b2JointEdge();
               loop1:
               while(true)
               {
                  this.§'!§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§6!#§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        continue loop0;
                        addr112:
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        this.§6!G§ = param1.§3x§;
                        loop9:
                        while(true)
                        {
                           this.§0!w§ = param1.§8P§;
                           addr77:
                           addr124:
                           loop10:
                           for(; _loc2_ || _loc3_; while(!(_loc3_ && this))
                           {
                              this.§?f§ = param1.§+!+§;
                              if(_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr30);
                           })
                           {
                              this.§0e§ = param1.collideConnected;
                              while(_loc2_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§,![§ = false;
                                       continue loop10;
                                    }
                                    return;
                                    addr44:
                                    addr71:
                                 }
                                 continue loop2;
                                 if(_loc2_ || param1)
                                 {
                                    continue loop9;
                                 }
                              }
                              while(_loc2_ || _loc3_)
                              {
                                 §§goto(addr112);
                                 §§goto(addr62);
                              }
                              addr62:
                              while(true)
                              {
                                 this.§-!I§ = null;
                                 break loop10;
                                 §§goto(addr105);
                              }
                              addr105:
                           }
                           addr153:
                           while(_loc2_ || _loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              this.§3=§ = null;
                              §§goto(addr105);
                              §§goto(addr77);
                           }
                           while(true)
                           {
                              this.§+!?§ = param1.type;
                              §§goto(addr141);
                              §§goto(addr124);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      b2internal static function §`4§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(b2internal::09);
               if(_loc6_ || b2Joint)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param2)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr148:
                              §§push(_loc4_);
                              if(_loc6_ || param2)
                              {
                                 addr156:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(1);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr340:
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
                                          addr339:
                                       }
                                       else
                                       {
                                          addr181:
                                          §§push(_loc4_);
                                          if(_loc6_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§push(2);
                                                   if(_loc5_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr279:
                                                   §§push(6);
                                                   if(_loc5_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr339);
                                             }
                                             else
                                             {
                                                §§push(b2internal::e_revoluteJoint);
                                                if(_loc6_ || b2Joint)
                                                {
                                                   addr204:
                                                   §§push(_loc4_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr215:
                                                            §§push(3);
                                                            if(_loc5_ && param1)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr238:
                                                            §§push(4);
                                                            if(!_loc6_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr339);
                                                         §§goto(addr339);
                                                      }
                                                      else
                                                      {
                                                         §§push(b2internal::+!L);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc5_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc5_ && b2Joint))
                                                                  {
                                                                     §§goto(addr238);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr256:
                                                                     §§push(5);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr339);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr324:
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(b2internal::8!Y);
                                                                  if(_loc6_ || b2Joint)
                                                                  {
                                                                     addr250:
                                                                     §§push(_loc4_);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr253:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr256);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr317:
                                                                              §§push(7);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr320);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(b2internal:: each);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!(_loc5_ && param2))
                                                                              {
                                                                                 addr271:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(b2internal::]!n);
                                                                                    if(_loc5_ && param1)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr339);
                                                                                 }
                                                                                 §§goto(addr339);
                                                                              }
                                                                              addr325:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 addr326:
                                                                                 §§push(8);
                                                                                 if(_loc6_ || b2Joint)
                                                                                 {
                                                                                    addr334:
                                                                                 }
                                                                                 §§goto(addr339);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr339);
                                                                                 §§push(9);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           addr282:
                                                                           §§goto(addr339);
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(_loc6_ || b2Joint)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           §§goto(addr317);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(b2internal::=!d);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr325);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                   }
                                                   §§goto(addr253);
                                                }
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr215);
                                 }
                                 else
                                 {
                                    §§push(b2internal::1r);
                                    if(_loc6_)
                                    {
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr334);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr339);
                        }
                        §§goto(addr317);
                     }
                     else
                     {
                        §§push(b2internal::#F);
                        if(_loc6_ || param1)
                        {
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr156);
               }
               §§goto(addr148);
            }
            §§goto(addr326);
         }
         §§goto(addr340);
      }
      
      b2internal static function §[M§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §2!r§() : int
      {
         return this.§+!?§;
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
      
      public function §@!F§() : b2Body
      {
         return this.§6!G§;
      }
      
      public function §<!J§() : b2Body
      {
         return this.§0!w§;
      }
      
      public function §+!N§() : b2Joint
      {
         return this.§3=§;
      }
      
      public function GetUserData() : *
      {
         return this.§?f§;
      }
      
      public function §`!N§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§?f§ = param1;
         }
      }
      
      public function §8!f§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§6!G§.§8!f§());
            if(!(_loc2_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  addr61:
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§pop();
                        addr71:
                        §§push(this.§0!w§.§8!f§());
                        if(_loc2_ && this)
                        {
                        }
                        §§goto(addr82);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr82:
               return §§pop();
            }
            §§goto(addr61);
         }
         §§goto(addr71);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §^y§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
