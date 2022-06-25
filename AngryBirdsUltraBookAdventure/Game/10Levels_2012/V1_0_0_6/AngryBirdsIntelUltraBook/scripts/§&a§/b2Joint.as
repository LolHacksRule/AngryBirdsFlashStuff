package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §9!j§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §>!V§:int = 2;
      
      b2internal static const §&!D§:int = 3;
      
      b2internal static const §-L§:int = 4;
      
      b2internal static const §5!?§:int = 5;
      
      b2internal static const §+!W§:int = 6;
      
      b2internal static const §&M§:int = 7;
      
      b2internal static const §@!>§:int = 8;
      
      b2internal static const §0!!§:int = 9;
      
      b2internal static const §#!?§:int = 0;
      
      b2internal static const §'`§:int = 1;
      
      b2internal static const §>6§:int = 2;
      
      b2internal static const §`C§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!j§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §>!V§ = 2;
                  while(true)
                  {
                     §&!D§ = 3;
                     while(_loc2_)
                     {
                        §-L§ = 4;
                        while(true)
                        {
                           §5!?§ = 5;
                           loop5:
                           for(; _loc2_ || _loc1_; while(_loc2_ || _loc2_)
                           {
                              §#!?§ = 0;
                              loop10:
                              while(true)
                              {
                                 §'`§ = 1;
                                 addr80:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop10;
                                 }
                                 §§goto(addr125);
                              }
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr113);
                           })
                           {
                              §+!W§ = 6;
                              while(true)
                              {
                                 §&M§ = 7;
                                 addr120:
                                 loop7:
                                 while(true)
                                 {
                                    §@!>§ = 8;
                                    addr113:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          §0!!§ = 9;
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                        while(_loc2_ || _loc2_)
                        {
                           §`C§ = 3;
                           if(!(_loc2_ || b2Joint))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              §§goto(addr37);
                           }
                           §§goto(addr80);
                        }
                     }
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §>6§ = 2;
                  §§goto(addr58);
               }
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
         §§goto(addr120);
      }
      
      b2internal var §"_§:int;
      
      b2internal var §[2§:b2Joint;
      
      b2internal var §@o§:b2Joint;
      
      b2internal var §>v§:b2JointEdge;
      
      b2internal var §?!>§:b2JointEdge;
      
      b2internal var §>0§:b2Body;
      
      b2internal var §[=§:b2Body;
      
      b2internal var §%!'§:Boolean;
      
      b2internal var § "§:Boolean;
      
      private var §,h§;
      
      b2internal var §#A§:b2Vec2;
      
      b2internal var §9!@§:b2Vec2;
      
      b2internal var §,'§:Number;
      
      b2internal var §[!2§:Number;
      
      b2internal var §=!Z§:Number;
      
      b2internal var §^!?§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>v§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§?!>§ = new b2JointEdge();
               loop1:
               while(true)
               {
                  this.§#A§ = new b2Vec2();
                  while(true)
                  {
                     this.§9!@§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings);
                           §§push(param1.§0w§ == param1.§^2§);
                           if(_loc2_ || this)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           while(true)
                           {
                              this.§"_§ = param1.type;
                              continue loop3;
                              addr55:
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue;
                              }
                              this.§,h§ = param1.§#+§;
                              addr62:
                              if(!_loc2_)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          addr76:
                                          while(_loc2_)
                                          {
                                             this.§ "§ = param1.collideConnected;
                                             break loop13;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                continue loop4;
                                             }
                                             addr120:
                                             while(true)
                                             {
                                                this.§@o§ = null;
                                                addr115:
                                                while(true)
                                                {
                                                   this.§>0§ = param1.§0w§;
                                                   continue loop9;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          addr76:
                                          continue loop4;
                                       }
                                       §§goto(addr55);
                                    }
                                    break;
                                    §§goto(addr62);
                                 }
                                 loop11:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§%!'§ = false;
                                       §§goto(addr46);
                                       continue loop11;
                                    }
                                    return;
                                 }
                                 addr46:
                                 continue loop1;
                              }
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr115);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      b2internal static function §1#§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc5_ || _loc3_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               §§push(b2internal::&!D);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc5_ || _loc3_)
                           {
                              addr354:
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
                              addr353:
                           }
                        }
                        else
                        {
                           addr204:
                           §§push(3);
                           if(_loc6_)
                           {
                              addr343:
                              if(§§pop() === _loc4_)
                              {
                                 addr345:
                                 §§push(8);
                                 if(!_loc6_)
                                 {
                                    addr348:
                                 }
                                 §§goto(addr353);
                              }
                              else
                              {
                                 §§goto(addr353);
                                 §§push(9);
                              }
                           }
                        }
                        §§goto(addr353);
                     }
                     else
                     {
                        §§push(b2internal::5!?);
                        if(_loc5_)
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       §§goto(addr353);
                                    }
                                    else
                                    {
                                       addr160:
                                       §§push(_loc4_);
                                       if(_loc5_ || b2Joint)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr181:
                                                §§push(2);
                                                if(_loc5_ || b2Joint)
                                                {
                                                   addr189:
                                                }
                                             }
                                             else
                                             {
                                                addr227:
                                                §§push(4);
                                                if(_loc6_)
                                                {
                                                   addr267:
                                                   §§push(_loc4_);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      addr275:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_ || b2Joint)
                                                         {
                                                            §§push(6);
                                                            if(_loc5_ || param2)
                                                            {
                                                               addr291:
                                                               §§goto(addr353);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr343);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr316:
                                                            §§push(7);
                                                            if(!(_loc6_ && b2Joint))
                                                            {
                                                               addr334:
                                                            }
                                                            §§goto(addr353);
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      else
                                                      {
                                                         §§push(b2internal::@!>);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               addr308:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§goto(addr316);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr345);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(b2internal::0!!);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§goto(addr343);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            §§goto(addr343);
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                   }
                                                   §§goto(addr343);
                                                }
                                             }
                                             §§goto(addr353);
                                          }
                                          else
                                          {
                                             §§push(b2internal::e_revoluteJoint);
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr201:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::-L);
                                                      if(!(_loc6_ && b2Joint))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_ || param2)
                                                               {
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr345);
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::+!W);
                                                               if(_loc5_ || param2)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr242:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc6_ && b2Joint))
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              addr258:
                                                                              §§goto(addr353);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr291);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr316);
                                                                        }
                                                                        §§goto(addr353);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(b2internal::&M);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§goto(addr267);
                                                                        }
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                                  §§goto(addr275);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                }
                                                §§goto(addr242);
                                             }
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr343);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              else
                              {
                                 §§push(b2internal::>!V);
                                 if(_loc5_)
                                 {
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr343);
                           }
                           §§goto(addr308);
                        }
                        §§goto(addr258);
                     }
                  }
                  §§goto(addr201);
               }
               §§goto(addr189);
            }
            §§goto(addr204);
         }
         §§goto(addr354);
      }
      
      b2internal static function §,!W§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §'!_§() : int
      {
         return this.§"_§;
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
      
      public function §>!0§() : b2Body
      {
         return this.§>0§;
      }
      
      public function §&@§() : b2Body
      {
         return this.§[=§;
      }
      
      public function §>H§() : b2Joint
      {
         return this.§@o§;
      }
      
      public function GetUserData() : *
      {
         return this.§,h§;
      }
      
      public function §2[§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,h§ = param1;
         }
      }
      
      public function §89§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§>0§.§89§());
            if(!(_loc1_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr67:
                        §§push(this.§[=§.§89§());
                        if(!_loc1_)
                        {
                           addr72:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr72);
                  }
               }
               return §§pop();
            }
            §§goto(addr72);
         }
         §§goto(addr67);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §32§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
