package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §&!Z§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §'"4§:int = 2;
      
      b2internal static const §'t§:int = 3;
      
      b2internal static const §-i§:int = 4;
      
      b2internal static const §,s§:int = 5;
      
      b2internal static const §%!5§:int = 6;
      
      b2internal static const §'0§:int = 7;
      
      b2internal static const §'7§:int = 8;
      
      b2internal static const §;";§:int = 9;
      
      b2internal static const §^#§:int = 0;
      
      b2internal static const §@§:int = 1;
      
      b2internal static const §!"7§:int = 2;
      
      b2internal static const §8"7§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2Joint))
         {
            §&!Z§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §'"4§ = 2;
                  while(true)
                  {
                     §'t§ = 3;
                     continue loop1;
                     addr98:
                     if(_loc2_ || _loc1_)
                     {
                        §@§ = 1;
                        loop12:
                        while(_loc2_ || b2Joint)
                        {
                           §!"7§ = 2;
                           while(_loc2_ || b2Joint)
                           {
                              if(_loc2_)
                              {
                                 §8"7§ = 3;
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop12;
                                 }
                                 addr37:
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr44:
                                    if(!_loc1_)
                                    {
                                       addr46:
                                       if(!_loc2_)
                                       {
                                          while(_loc2_)
                                          {
                                             §'0§ = 7;
                                             while(true)
                                             {
                                                §'7§ = 8;
                                                addr115:
                                                while(true)
                                                {
                                                   §;";§ = 9;
                                                   addr110:
                                                   while(true)
                                                   {
                                                      §^#§ = 0;
                                                      break loop12;
                                                      §§goto(addr37);
                                                   }
                                                   §§goto(addr44);
                                                }
                                                §§goto(addr46);
                                                break loop12;
                                             }
                                          }
                                          while(true)
                                          {
                                             §,s§ = 5;
                                             addr132:
                                             while(true)
                                             {
                                                §%!5§ = 6;
                                                §§goto(addr125);
                                             }
                                          }
                                          addr125:
                                          addr137:
                                       }
                                       return;
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr110);
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr98);
                              }
                              else
                              {
                                 §§goto(addr132);
                              }
                           }
                           §§goto(addr120);
                           §§goto(addr67);
                        }
                        addr67:
                     }
                  }
               }
            }
         }
         while(true)
         {
            §-i§ = 4;
            §§goto(addr137);
         }
      }
      
      b2internal var §0!,§:int;
      
      b2internal var §+!w§:b2Joint;
      
      b2internal var §7!'§:b2Joint;
      
      b2internal var §#Z§:b2JointEdge;
      
      b2internal var §package§:b2JointEdge;
      
      b2internal var §+d§:b2Body;
      
      b2internal var §"!l§:b2Body;
      
      b2internal var §=y§:Boolean;
      
      b2internal var §6I§:Boolean;
      
      private var §5![§;
      
      b2internal var §6!+§:b2Vec2;
      
      b2internal var §"O§:b2Vec2;
      
      b2internal var §+!7§:Number;
      
      b2internal var § !b§:Number;
      
      b2internal var §8"#§:Number;
      
      b2internal var § true§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#Z§ = new b2JointEdge();
            while(true)
            {
               this.§package§ = new b2JointEdge();
               loop1:
               while(true)
               {
                  this.§6!+§ = new b2Vec2();
                  while(true)
                  {
                     this.§"O§ = new b2Vec2();
                     addr170:
                     addr114:
                     while(true)
                     {
                        super();
                     }
                     if(_loc2_ || param1)
                     {
                        this.§"!l§ = param1.§import§;
                        loop10:
                        while(_loc2_ || param1)
                        {
                           this.§6I§ = param1.collideConnected;
                           loop11:
                           while(true)
                           {
                              if(_loc3_ && this)
                              {
                                 continue loop10;
                              }
                              addr62:
                              if(_loc2_ || this)
                              {
                                 continue loop1;
                              }
                              addr164:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§0!,§ = param1.type;
                                    while(true)
                                    {
                                       this.§+!w§ = null;
                                       addr133:
                                       while(!_loc3_)
                                       {
                                          this.§7!'§ = null;
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                this.§+d§ = param1.§ !T§;
                                                break loop10;
                                             }
                                             break;
                                             addr42:
                                             if(_loc2_ || this)
                                             {
                                                this.§5![§ = param1.§ S§;
                                                addr49:
                                                if(_loc2_)
                                                {
                                                   return;
                                                   addr40:
                                                }
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr42);
                                                   §§goto(addr49);
                                                }
                                             }
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                 }
                                 break;
                                 §§goto(addr62);
                              }
                              while(true)
                              {
                                 §§push(b2Settings);
                                 §§push(param1.§ !T§ == param1.§import§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().b2Assert(§§pop());
                                 §§goto(addr158);
                              }
                              addr158:
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr114);
                           }
                           else
                           {
                              §§goto(addr133);
                           }
                        }
                        addr99:
                     }
                  }
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               this.§=y§ = false;
               §§goto(addr40);
            }
         }
         §§goto(addr164);
      }
      
      b2internal static function §`!P§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc5_ || param1)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(b2internal::'t);
               if(_loc5_ || b2Joint)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr338:
                              if(§§pop() === _loc4_)
                              {
                                 addr340:
                                 §§push(8);
                                 if(!_loc6_)
                                 {
                                    addr353:
                                 }
                              }
                              else
                              {
                                 §§push(9);
                              }
                           }
                           addr359:
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
                           addr358:
                        }
                        else
                        {
                           addr191:
                           §§push(2);
                           if(_loc6_ && param2)
                           {
                              addr315:
                              §§push(_loc4_);
                              if(!(_loc6_ && b2Joint))
                              {
                                 addr323:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       addr326:
                                       §§push(7);
                                       if(!_loc6_)
                                       {
                                          addr329:
                                       }
                                       §§goto(addr358);
                                    }
                                    else
                                    {
                                       §§goto(addr340);
                                    }
                                 }
                                 else
                                 {
                                    §§push(b2internal::;";);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§goto(addr338);
                                    }
                                 }
                                 §§goto(addr353);
                              }
                              §§goto(addr338);
                           }
                           else
                           {
                              addr199:
                           }
                           §§goto(addr358);
                        }
                        §§goto(addr338);
                     }
                     else
                     {
                        §§push(b2internal::,s);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr287:
                                       §§push(_loc4_);
                                       if(_loc5_)
                                       {
                                          addr290:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                addr298:
                                                §§push(6);
                                                if(!(_loc6_ && b2Joint))
                                                {
                                                   addr306:
                                                }
                                                §§goto(addr358);
                                             }
                                             else
                                             {
                                                §§goto(addr326);
                                             }
                                          }
                                          else
                                          {
                                             §§push(b2internal::'7);
                                             if(_loc5_ || b2Joint)
                                             {
                                                §§goto(addr315);
                                             }
                                             §§goto(addr338);
                                          }
                                          §§goto(addr358);
                                       }
                                       §§goto(addr323);
                                    }
                                 }
                                 else
                                 {
                                    addr219:
                                    §§push(3);
                                    if(_loc6_ && b2Joint)
                                    {
                                       addr231:
                                       §§push(_loc4_);
                                       if(!(_loc6_ && b2Joint))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && b2Joint))
                                             {
                                                addr247:
                                                §§push(4);
                                                if(_loc5_ || b2Joint)
                                                {
                                                   §§goto(addr358);
                                                }
                                                else
                                                {
                                                   §§goto(addr306);
                                                }
                                             }
                                             §§goto(addr358);
                                          }
                                          else
                                          {
                                             §§push(b2internal::%!5);
                                             if(_loc5_ || param2)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc6_ && b2Joint))
                                                {
                                                   addr272:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr275:
                                                         §§push(5);
                                                         if(!_loc6_)
                                                         {
                                                            addr278:
                                                            §§goto(addr358);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr329);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr340);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::'0);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§goto(addr287);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr338);
                                          }
                                       }
                                       §§goto(addr272);
                                    }
                                 }
                                 §§goto(addr358);
                              }
                              else
                              {
                                 §§push(b2internal::'"4);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc6_ && param1))
                                    {
                                       addr188:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr191);
                                          }
                                          else
                                          {
                                             §§goto(addr275);
                                          }
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr298);
                                                }
                                                else
                                                {
                                                   §§push(b2internal::-i);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr231);
                                                   }
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr272);
                                          }
                                          §§goto(addr287);
                                       }
                                       §§goto(addr323);
                                    }
                                    §§goto(addr290);
                                 }
                              }
                              §§goto(addr315);
                           }
                           §§goto(addr338);
                        }
                     }
                     §§goto(addr338);
                  }
                  §§goto(addr188);
               }
               §§goto(addr199);
            }
            §§goto(addr247);
         }
         §§goto(addr359);
      }
      
      b2internal static function §3!0§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §;!F§() : int
      {
         return this.§0!,§;
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
      
      public function §<D§() : b2Body
      {
         return this.§+d§;
      }
      
      public function §3@§() : b2Body
      {
         return this.§"!l§;
      }
      
      public function §7"3§() : b2Joint
      {
         return this.§7!'§;
      }
      
      public function GetUserData() : *
      {
         return this.§5![§;
      }
      
      public function §"%§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5![§ = param1;
         }
      }
      
      public function §0!9§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§+d§.§0!9§());
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr55:
                        §§pop();
                        §§push(this.§"!l§.§0!9§());
                        if(_loc1_)
                        {
                           addr61:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr61);
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
         }
         §§goto(addr55);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §?"<§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
