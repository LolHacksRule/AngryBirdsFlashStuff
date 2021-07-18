package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §7&§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §#!e§:int = 2;
      
      b2internal static const §4!-§:int = 3;
      
      b2internal static const §1!P§:int = 4;
      
      b2internal static const §@!Q§:int = 5;
      
      b2internal static const §3p§:int = 6;
      
      b2internal static const §"!A§:int = 7;
      
      b2internal static const §?!m§:int = 8;
      
      b2internal static const §-!N§:int = 9;
      
      b2internal static const §-G§:int = 0;
      
      b2internal static const §-!V§:int = 1;
      
      b2internal static const §8!p§:int = 2;
      
      b2internal static const §!!?§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7&§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §#!e§ = 2;
                  loop2:
                  while(true)
                  {
                     §4!-§ = 3;
                     while(true)
                     {
                        §1!P§ = 4;
                        loop4:
                        while(true)
                        {
                           §@!Q§ = 5;
                           while(true)
                           {
                              §3p§ = 6;
                              addr139:
                              addr101:
                              while(true)
                              {
                                 §"!A§ = 7;
                                 continue loop4;
                              }
                              loop8:
                              for(; _loc2_ || _loc2_; loop11:
                              while(true)
                              {
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop8;
                                 }
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §8!p§ = 2;
                                 while(!_loc1_)
                                 {
                                    §!!?§ = 3;
                                    if(_loc2_)
                                    {
                                       continue loop11;
                                    }
                                 }
                                 §§goto(addr96);
                              },continue loop0)
                              {
                                 §-!N§ = 9;
                                 while(true)
                                 {
                                    §-G§ = 0;
                                    addr72:
                                    while(!(_loc1_ && b2Joint))
                                    {
                                       if(_loc2_)
                                       {
                                          §-!V§ = 1;
                                          continue loop8;
                                       }
                                       §§goto(addr139);
                                       if(!(_loc1_ && b2Joint))
                                       {
                                          if(_loc2_)
                                          {
                                             return;
                                             addr46:
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      b2internal var §5Q§:int;
      
      b2internal var §,!>§:b2Joint;
      
      b2internal var §6!c§:b2Joint;
      
      b2internal var §,!s§:b2JointEdge;
      
      b2internal var §9U§:b2JointEdge;
      
      b2internal var §9!F§:b2Body;
      
      b2internal var §[!n§:b2Body;
      
      b2internal var §2?§:Boolean;
      
      b2internal var § !,§:Boolean;
      
      private var §finally§;
      
      b2internal var §9T§:b2Vec2;
      
      b2internal var §6!8§:b2Vec2;
      
      b2internal var §^i§:Number;
      
      b2internal var §5b§:Number;
      
      b2internal var §;N§:Number;
      
      b2internal var §'Q§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§,!s§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§9U§ = new b2JointEdge();
               addr208:
               loop1:
               while(true)
               {
                  this.§9T§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§6!8§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings);
                           §§push(param1.§9!w§ == param1.§>!W§);
                           if(!(_loc2_ && this))
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           addr89:
                           if(_loc3_ || _loc2_)
                           {
                              this.§2?§ = false;
                              loop12:
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr67:
                                    if(!(_loc2_ && param1))
                                    {
                                       addr74:
                                       if(_loc3_ || _loc3_)
                                       {
                                          continue;
                                       }
                                       addr146:
                                       while(true)
                                       {
                                          this.§6!c§ = null;
                                          break loop12;
                                          §§goto(addr74);
                                       }
                                    }
                                    break;
                                 }
                                 addr87:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr89);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§[!n§ = param1.§>!W§;
                                          addr112:
                                          while(true)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop0;
                                             addr41:
                                             if(_loc3_ || this)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       addr132:
                                    }
                                    continue loop12;
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    this.§9!F§ = param1.§9!w§;
                                    §§goto(addr132);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§5Q§ = param1.type;
                                       continue loop0;
                                    }
                                    addr176:
                                 }
                                 §§goto(addr67);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      b2internal static function §'!D§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(!(_loc5_ && param2))
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(b2internal::4!-);
               if(!(_loc5_ && param2))
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr221:
                           }
                        }
                        else
                        {
                           addr236:
                           §§push(5);
                           if(!(_loc6_ || b2Joint))
                           {
                              addr276:
                              §§push(_loc4_);
                              if(!(_loc5_ && param1))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       addr287:
                                       §§push(7);
                                       if(!(_loc5_ && b2Joint))
                                       {
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
                                          addr295:
                                       }
                                       else
                                       {
                                          addr299:
                                          if(§§pop() !== _loc4_)
                                          {
                                             §§goto(addr319);
                                             §§push(9);
                                          }
                                          §§goto(addr319);
                                       }
                                       §§goto(addr319);
                                    }
                                    addr301:
                                    §§push(8);
                                    if(_loc6_)
                                    {
                                       addr314:
                                    }
                                    §§goto(addr319);
                                 }
                                 else
                                 {
                                    §§push(b2internal::-!N);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr299);
                                    }
                                    §§goto(addr314);
                                 }
                              }
                              §§goto(addr299);
                           }
                        }
                        §§goto(addr319);
                     }
                     else
                     {
                        §§push(b2internal::@!Q);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(_loc4_);
                           if(!_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       addr176:
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
                                                }
                                             }
                                             else
                                             {
                                                addr218:
                                                §§push(4);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr221);
                                                }
                                                else
                                                {
                                                   §§goto(addr276);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(b2internal::e_revoluteJoint);
                                             if(_loc6_)
                                             {
                                                addr189:
                                                §§push(_loc4_);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr195:
                                                         §§push(3);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr319);
                                                         }
                                                         else
                                                         {
                                                            addr225:
                                                            §§push(_loc4_);
                                                            if(!_loc5_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§goto(addr236);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr264:
                                                                     §§push(6);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§goto(addr319);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr295);
                                                                     }
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               else
                                                               {
                                                                  §§push(b2internal::"!A);
                                                                  if(!(_loc5_ && b2Joint))
                                                                  {
                                                                     addr253:
                                                                     §§push(_loc4_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr256:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              §§goto(addr264);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr301);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(b2internal::?!m);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr299);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr299);
                                                         }
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::1!P);
                                                      if(!(_loc5_ && b2Joint))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc5_)
                                                         {
                                                            addr210:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§goto(addr218);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr264);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::3p);
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr225);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                   }
                                                   §§goto(addr319);
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr314);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr319);
                                 }
                                 §§goto(addr195);
                              }
                              else
                              {
                                 §§push(b2internal::#!e);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr210);
                        }
                     }
                     §§goto(addr314);
                  }
                  §§goto(addr256);
               }
               §§goto(addr189);
            }
            §§goto(addr287);
         }
         §§goto(addr320);
      }
      
      b2internal static function §7!d§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §4!v§() : int
      {
         return this.§5Q§;
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
      
      public function §>!y§() : b2Body
      {
         return this.§9!F§;
      }
      
      public function §5!0§() : b2Body
      {
         return this.§[!n§;
      }
      
      public function §2!9§() : b2Joint
      {
         return this.§6!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§finally§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§finally§ = param1;
         }
      }
      
      public function §>!-§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9!F§.§>!-§());
            if(!(_loc2_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        addr60:
                        §§pop();
                        addr61:
                        §§push(this.§[!n§.§>!-§());
                        if(_loc2_)
                        {
                        }
                        §§goto(addr67);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr67:
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr61);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §=Y§() : void
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
