package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const § !"§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §@$§:int = 2;
      
      b2internal static const §7!L§:int = 3;
      
      b2internal static const §+4§:int = 4;
      
      b2internal static const § !,§:int = 5;
      
      b2internal static const §"!E§:int = 6;
      
      b2internal static const §^!L§:int = 7;
      
      b2internal static const §3n§:int = 8;
      
      b2internal static const §5![§:int = 9;
      
      b2internal static const §15§:int = 0;
      
      b2internal static const §6!!§:int = 1;
      
      b2internal static const §0!&§:int = 2;
      
      b2internal static const §!!4§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            § !"§ = 0;
            while(true)
            {
               e_revoluteJoint = 1;
               while(true)
               {
                  §@$§ = 2;
                  addr146:
                  while(_loc1_)
                  {
                     §7!L§ = 3;
                     while(true)
                     {
                        §+4§ = 4;
                        while(!_loc2_)
                        {
                           § !,§ = 5;
                           while(!_loc2_)
                           {
                              §"!E§ = 6;
                              while(!_loc2_)
                              {
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr157:
         }
         while(true)
         {
            §^!L§ = 7;
            loop8:
            while(true)
            {
               §3n§ = 8;
               addr100:
               while(true)
               {
                  §5![§ = 9;
                  addr95:
                  while(true)
                  {
                     §15§ = 0;
                     continue loop8;
                  }
               }
            }
         }
      }
      
      b2internal var §32§:int;
      
      b2internal var §7!Q§:b2Joint;
      
      b2internal var §,1§:b2Joint;
      
      b2internal var §[j§:b2JointEdge;
      
      b2internal var §>!3§:b2JointEdge;
      
      b2internal var §1!G§:b2Body;
      
      b2internal var §&!F§:b2Body;
      
      b2internal var §4p§:Boolean;
      
      b2internal var §1s§:Boolean;
      
      private var §8!B§;
      
      b2internal var §,! §:b2Vec2;
      
      b2internal var §&l§:b2Vec2;
      
      b2internal var §%]§:Number;
      
      b2internal var §1!-§:Number;
      
      b2internal var §?!N§:Number;
      
      b2internal var §2<§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§[j§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§>!3§ = new b2JointEdge();
               while(true)
               {
                  this.§,! § = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§&l§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings);
                           §§push(param1.§^!G§ == param1.§-z§);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           while(true)
                           {
                              this.§32§ = param1.type;
                              continue loop4;
                              addr44:
                              if(!(_loc3_ && _loc2_))
                              {
                                 continue loop0;
                              }
                           }
                        }
                        addr109:
                        loop10:
                        for(; !(_loc3_ && _loc2_); if(_loc3_ && param1)
                        {
                           continue;
                        },if(!_loc3_)
                        {
                           §§goto(addr79);
                        },§§goto(addr133))
                        {
                           this.§&!F§ = param1.§-z§;
                           loop11:
                           do
                           {
                              this.§1s§ = param1.collideConnected;
                              loop12:
                              while(_loc2_)
                              {
                                 this.§4p§ = false;
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       continue loop10;
                                    }
                                    continue loop12;
                                    addr79:
                                    this.§8!B§ = param1.§?!X§;
                                    if(!_loc3_)
                                    {
                                       continue loop11;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§,1§ = null;
                                    break loop12;
                                 }
                              }
                              continue loop2;
                           }
                           while(_loc3_);
                           
                           §§goto(addr37);
                        }
                     }
                  }
                  if(_loc2_ || _loc3_)
                  {
                     while(true)
                     {
                        this.§7!Q§ = null;
                        §§goto(addr133);
                     }
                     return;
                     addr58:
                     addr153:
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      b2internal static function §]!U§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || param1)
            {
               §§push(§7!L§);
               if(_loc5_ || param2)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(0);
                           if(!(_loc5_ || b2Joint))
                           {
                              addr332:
                           }
                        }
                        else
                        {
                           addr300:
                           §§push(5);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr308:
                           }
                        }
                     }
                     else
                     {
                        §§push(§ !,§);
                        if(!(_loc6_ && param2))
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    addr179:
                                    §§push(1);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr402:
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
                                       addr401:
                                    }
                                    else
                                    {
                                       addr202:
                                       §§push(_loc4_);
                                       if(!_loc6_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(2);
                                                if(!(_loc5_ || b2Joint))
                                                {
                                                   addr376:
                                                }
                                             }
                                             else
                                             {
                                                addr385:
                                                §§push(8);
                                                if(!_loc6_)
                                                {
                                                   addr388:
                                                }
                                             }
                                             §§goto(addr401);
                                          }
                                          else
                                          {
                                             §§push(e_revoluteJoint);
                                             if(_loc5_ || b2Joint)
                                             {
                                                §§push(_loc4_);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr234:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(3);
                                                         if(!_loc5_)
                                                         {
                                                            addr399:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr391:
                                                         §§push(9);
                                                         if(!(_loc6_ && b2Joint))
                                                         {
                                                            §§goto(addr399);
                                                         }
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                   else
                                                   {
                                                      §§push(§+4§);
                                                      if(_loc5_ || param2)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_ || param2)
                                                               {
                                                                  §§push(4);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr274:
                                                                     §§goto(addr401);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr313:
                                                                     §§push(_loc4_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr316:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              §§push(6);
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 §§goto(addr332);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr388);
                                                                              }
                                                                           }
                                                                           §§goto(addr401);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§3n§);
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 addr350:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc5_ || b2Joint)
                                                                                    {
                                                                                       addr358:
                                                                                       §§push(7);
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr399);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§5![§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr382:
                                                                                       if(§§pop() === _loc4_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§goto(addr385);
                                                                                          }
                                                                                       }
                                                                                       else if(true)
                                                                                       {
                                                                                          §§goto(addr401);
                                                                                          §§push(9);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                            else
                                                            {
                                                               §§push(§"!E§);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           §§goto(addr300);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr385);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§^!L§);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr313);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                }
                                                §§goto(addr382);
                                             }
                                             §§goto(addr308);
                                          }
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr401);
                                 }
                                 §§goto(addr358);
                              }
                              else
                              {
                                 §§push(§@$§);
                                 if(_loc5_)
                                 {
                                    §§goto(addr202);
                                 }
                                 §§goto(addr399);
                              }
                           }
                           §§goto(addr350);
                        }
                        §§goto(addr382);
                     }
                     §§goto(addr401);
                  }
                  §§goto(addr382);
               }
               §§goto(addr399);
            }
            §§goto(addr179);
         }
         §§goto(addr402);
      }
      
      b2internal static function §"P§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §-V§() : int
      {
         return this.§32§;
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
      
      public function §7m§() : b2Body
      {
         return this.§1!G§;
      }
      
      public function §3B§() : b2Body
      {
         return this.§&!F§;
      }
      
      public function §70§() : b2Joint
      {
         return this.§,1§;
      }
      
      public function GetUserData() : *
      {
         return this.§8!B§;
      }
      
      public function §-!M§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!B§ = param1;
         }
      }
      
      public function §-<§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§1!G§.§-<§());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr50:
                        §§push(this.§&!F§.§-<§());
                        if(!_loc2_)
                        {
                        }
                     }
                  }
                  §§goto(addr56);
               }
               §§push(Boolean(§§pop()));
            }
            addr56:
            return §§pop();
         }
         §§goto(addr50);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §[!B§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
