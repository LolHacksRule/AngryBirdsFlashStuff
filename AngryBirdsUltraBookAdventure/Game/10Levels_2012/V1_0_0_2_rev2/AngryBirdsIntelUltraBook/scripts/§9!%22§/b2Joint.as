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
         if(_loc1_)
         {
            § `§ = 0;
         }
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
                  while(true)
                  {
                     §+!L§ = 4;
                     loop4:
                     for(; !(_loc2_ && _loc1_); while(!(_loc2_ && b2Joint))
                     {
                        §1!i§ = 1;
                        §§goto(addr69);
                        §§goto(addr48);
                     })
                     {
                        §#F§ = 5;
                        loop5:
                        while(true)
                        {
                           §8!Y§ = 6;
                           loop6:
                           while(true)
                           {
                              § each§ = 7;
                              while(!_loc2_)
                              {
                                 §]!n§ = 8;
                                 continue loop2;
                                 addr57:
                                 if(_loc1_ || _loc2_)
                                 {
                                    §'!E§ = 3;
                                    addr64:
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       addr48:
                                       while(true)
                                       {
                                          if(_loc2_ && _loc1_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop2;
                                             }
                                             continue loop6;
                                             addr103:
                                          }
                                          §§goto(addr57);
                                          §§goto(addr64);
                                       }
                                       continue;
                                       addr48:
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
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
         if(!_loc3_)
         {
            this.§#7§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§3G§ = new b2JointEdge();
               while(true)
               {
                  this.§'!§ = new b2Vec2();
                  loop2:
                  for(; _loc2_ || this; while(_loc2_ || param1)
                  {
                     §§push(b2Settings);
                     §§push(param1.§3x§ == param1.§8P§);
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().b2Assert(§§pop());
                     §§goto(addr129);
                  })
                  {
                     this.§6!#§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        continue loop2;
                        addr129:
                        loop5:
                        while(_loc2_ || _loc3_)
                        {
                           this.§+!?§ = param1.type;
                           loop6:
                           while(true)
                           {
                              this.§-!I§ = null;
                              addr111:
                              while(true)
                              {
                                 this.§3=§ = null;
                                 loop8:
                                 while(!_loc3_)
                                 {
                                    this.§6!G§ = param1.§3x§;
                                    loop9:
                                    while(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       this.§0!w§ = param1.§8P§;
                                       while(true)
                                       {
                                          this.§0e§ = param1.collideConnected;
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                this.§,![§ = false;
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                                 if(_loc2_ || param1)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      b2internal static function §`4§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || b2Joint)
            {
               §§push(b2internal::09);
               if(_loc5_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(!(_loc6_ && b2Joint))
                           {
                              addr344:
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
                              addr343:
                           }
                           else
                           {
                              addr175:
                              §§push(_loc4_);
                              if(!(_loc6_ && b2Joint))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§push(2);
                                       if(!(_loc6_ && b2Joint))
                                       {
                                          §§goto(addr343);
                                       }
                                       else
                                       {
                                          addr226:
                                          §§push(_loc4_);
                                          if(_loc5_ || param1)
                                          {
                                             addr234:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr237:
                                                   §§push(4);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr343);
                                                   }
                                                   else
                                                   {
                                                      addr272:
                                                      §§push(_loc4_);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§push(6);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr296:
                                                               }
                                                               else
                                                               {
                                                                  addr324:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr335:
                                                               §§push(8);
                                                               if(_loc5_)
                                                               {
                                                                  addr338:
                                                               }
                                                            }
                                                            §§goto(addr343);
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::]!n);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr305:
                                                               §§push(_loc4_);
                                                               if(_loc5_)
                                                               {
                                                                  addr318:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr321:
                                                                        §§push(7);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr335);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(b2internal::=!d);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr334:
                                                                        if(§§pop() === _loc4_)
                                                                        {
                                                                           §§goto(addr335);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr343);
                                                                           §§push(9);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                            }
                                                            §§goto(addr334);
                                                         }
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                }
                                                §§goto(addr335);
                                             }
                                             else
                                             {
                                                §§push(b2internal::8!Y);
                                                if(_loc5_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc6_)
                                                   {
                                                      addr252:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(5);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr343);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr334);
                                                            }
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      else
                                                      {
                                                         §§push(b2internal:: each);
                                                         if(!(_loc6_ && b2Joint))
                                                         {
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                   }
                                                   §§goto(addr318);
                                                }
                                             }
                                             §§goto(addr305);
                                          }
                                          §§goto(addr252);
                                       }
                                    }
                                    §§goto(addr321);
                                 }
                                 else
                                 {
                                    §§push(b2internal::e_revoluteJoint);
                                    if(_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_ || b2Joint)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && b2Joint))
                                             {
                                                §§push(3);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr343);
                                                }
                                                else
                                                {
                                                   §§goto(addr226);
                                                }
                                             }
                                             §§goto(addr321);
                                          }
                                          else
                                          {
                                             §§push(b2internal::+!L);
                                             if(_loc5_)
                                             {
                                                §§goto(addr226);
                                             }
                                          }
                                       }
                                       §§goto(addr234);
                                    }
                                 }
                                 §§goto(addr296);
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr343);
                        }
                        §§goto(addr237);
                     }
                     else
                     {
                        §§push(b2internal::#F);
                        if(_loc5_ || param1)
                        {
                           §§push(_loc4_);
                           if(_loc5_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       addr171:
                                    }
                                    §§goto(addr343);
                                 }
                                 else
                                 {
                                    §§goto(addr335);
                                 }
                              }
                              else
                              {
                                 §§push(b2internal::1r);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr175);
                                 }
                              }
                              §§goto(addr324);
                           }
                           §§goto(addr234);
                        }
                        §§goto(addr171);
                     }
                  }
                  §§goto(addr234);
               }
               §§goto(addr343);
            }
            §§goto(addr321);
         }
         §§goto(addr344);
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
         if(!_loc2_)
         {
            this.§?f§ = param1;
         }
      }
      
      public function §8!f§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6!G§.§8!f§());
            if(_loc2_ || this)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop();
                        addr62:
                        §§push(this.§0!w§.§8!f§());
                        if(_loc2_ || this)
                        {
                        }
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr73);
               }
               §§push(Boolean(§§pop()));
            }
            addr73:
            return §§pop();
         }
         §§goto(addr62);
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
