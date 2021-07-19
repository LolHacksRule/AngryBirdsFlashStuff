package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §?!j§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §8x§:int = 2;
      
      b2internal static const §'G§:int = 3;
      
      b2internal static const §[!0§:int = 4;
      
      b2internal static const §6!+§:int = 5;
      
      b2internal static const §4<§:int = 6;
      
      b2internal static const §8f§:int = 7;
      
      b2internal static const §]5§:int = 8;
      
      b2internal static const §]1§:int = 9;
      
      b2internal static const §-!Z§:int = 0;
      
      b2internal static const §@<§:int = 1;
      
      b2internal static const §%S§:int = 2;
      
      b2internal static const §8!E§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!j§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               while(true)
               {
                  §8x§ = 2;
                  addr164:
                  loop11:
                  for(; !(_loc1_ && _loc1_); if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  },addr37:,if(_loc2_ || b2Joint)
                  {
                     if(!_loc1_)
                     {
                        §§goto(addr46);
                     }
                     else
                     {
                        loop5:
                        while(true)
                        {
                           §4<§ = 6;
                           while(true)
                           {
                              §8f§ = 7;
                              loop7:
                              while(!_loc1_)
                              {
                                 §]5§ = 8;
                                 while(true)
                                 {
                                    if(_loc1_ && _loc1_)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc1_ && _loc2_)
                                    {
                                       break;
                                    }
                                    §]1§ = 9;
                                    §§goto(addr94);
                                    §§goto(addr37);
                                 }
                                 while(_loc2_)
                                 {
                                    §6!+§ = 5;
                                    continue loop5;
                                    §§goto(addr106);
                                 }
                                 §§goto(addr164);
                              }
                           }
                        }
                     }
                  },§§goto(addr99))
                  {
                     while(true)
                     {
                        §%S§ = 2;
                        while(!_loc1_)
                        {
                           §8!E§ = 3;
                           if(!_loc1_)
                           {
                              continue loop11;
                           }
                        }
                        addr70:
                        addr94:
                        while(!_loc1_)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §@<§ = 1;
                              continue loop11;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §-!Z§ = 0;
                           §§goto(addr70);
                        }
                     }
                     return;
                  }
                  while(true)
                  {
                     §'G§ = 3;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      b2internal var §6m§:int;
      
      b2internal var §0!^§:b2Joint;
      
      b2internal var §0!>§:b2Joint;
      
      b2internal var §]!%§:b2JointEdge;
      
      b2internal var §@!d§:b2JointEdge;
      
      b2internal var §[Z§:b2Body;
      
      b2internal var §8!F§:b2Body;
      
      b2internal var §><§:Boolean;
      
      b2internal var §>!!§:Boolean;
      
      private var § D§;
      
      b2internal var §[y§:b2Vec2;
      
      b2internal var §]i§:b2Vec2;
      
      b2internal var §>+§:Number;
      
      b2internal var §5""§:Number;
      
      b2internal var §`2§:Number;
      
      b2internal var §,T§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]!%§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§@!d§ = new b2JointEdge();
               addr188:
               while(true)
               {
                  this.§[y§ = new b2Vec2();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§6m§ = param1.type;
            §§goto(addr133);
         }
      }
      
      b2internal static function §2#§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc6_ || b2Joint)
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || param2)
            {
               §§push(b2internal::'G);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(0);
                           if(!(_loc6_ || b2Joint))
                           {
                              addr264:
                           }
                        }
                        else
                        {
                           addr233:
                           §§push(4);
                           if(!(_loc6_ || param2))
                           {
                              addr268:
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                                 addr271:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_ || b2Joint)
                                    {
                                       addr279:
                                       §§push(6);
                                       if(_loc6_ || param2)
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
                                          addr287:
                                       }
                                       else
                                       {
                                          addr319:
                                          if(§§pop() !== _loc4_)
                                          {
                                             §§goto(addr339);
                                             §§push(9);
                                          }
                                          §§goto(addr339);
                                       }
                                       §§goto(addr339);
                                    }
                                    addr321:
                                    §§push(8);
                                    if(!_loc6_)
                                    {
                                    }
                                    §§goto(addr339);
                                 }
                                 else
                                 {
                                    §§push(b2internal::]5);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_ || param1)
                                       {
                                          addr299:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr302:
                                                §§push(7);
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§goto(addr339);
                                                }
                                                else
                                                {
                                                   §§goto(addr319);
                                                }
                                             }
                                             §§goto(addr321);
                                          }
                                          else
                                          {
                                             §§push(b2internal::]1);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§goto(addr319);
                                             }
                                          }
                                       }
                                       §§goto(addr319);
                                    }
                                 }
                                 §§goto(addr339);
                              }
                              §§goto(addr319);
                           }
                           else
                           {
                              addr241:
                           }
                        }
                        §§goto(addr339);
                     }
                     else
                     {
                        §§push(b2internal::6!+);
                        if(!_loc5_)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr319);
                                    }
                                    §§goto(addr339);
                                 }
                                 else
                                 {
                                    §§goto(addr279);
                                 }
                              }
                              else
                              {
                                 §§push(b2internal::8x);
                                 if(!(_loc5_ && b2Joint))
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(2);
                                             if(_loc5_ && param1)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr261:
                                             §§push(5);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr264);
                                             }
                                             else
                                             {
                                                §§goto(addr287);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr279);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(b2internal::[!0);
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§goto(addr233);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr261);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::4<);
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc5_ && b2Joint))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr261);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr321);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(b2internal::8f);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr339);
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                   }
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr299);
                                          }
                                          §§goto(addr319);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr271);
                                 }
                              }
                           }
                           §§goto(addr271);
                        }
                     }
                     §§goto(addr268);
                  }
                  §§goto(addr299);
               }
               §§goto(addr241);
            }
            §§goto(addr302);
         }
         §§goto(addr340);
      }
      
      b2internal static function §5f§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §<!A§() : int
      {
         return this.§6m§;
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
      
      public function §[d§() : b2Body
      {
         return this.§[Z§;
      }
      
      public function §#E§() : b2Body
      {
         return this.§8!F§;
      }
      
      public function §>X§() : b2Joint
      {
         return this.§0!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§ D§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ D§ = param1;
         }
      }
      
      public function §3!z§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§[Z§.§3!z§());
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        addr45:
                        §§pop();
                        §§push(this.§8!F§.§3!z§());
                        if(_loc1_ || this)
                        {
                           addr66:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr45);
            }
            §§goto(addr66);
         }
         §§goto(addr45);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §2"%§() : void
      {
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return false;
      }
      
      public function EnableMotor(param1:Boolean) : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
