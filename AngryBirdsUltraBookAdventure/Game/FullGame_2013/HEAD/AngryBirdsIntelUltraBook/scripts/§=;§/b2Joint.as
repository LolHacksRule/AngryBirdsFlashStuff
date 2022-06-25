package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §?!>§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §2!V§:int = 2;
      
      b2internal static const §@5§:int = 3;
      
      b2internal static const §9!c§:int = 4;
      
      b2internal static const §9!C§:int = 5;
      
      b2internal static const §9§:int = 6;
      
      b2internal static const §+"§:int = 7;
      
      b2internal static const §8!0§:int = 8;
      
      b2internal static const §"!T§:int = 9;
      
      b2internal static const §5!§:int = 0;
      
      b2internal static const §1p§:int = 1;
      
      b2internal static const §`7§:int = 2;
      
      b2internal static const §;x§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!>§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               while(true)
               {
                  §2!V§ = 2;
                  loop2:
                  while(true)
                  {
                     §@5§ = 3;
                     while(true)
                     {
                        §9!c§ = 4;
                        continue loop2;
                        addr100:
                        if(!(_loc2_ && b2Joint))
                        {
                           §5!§ = 0;
                           while(true)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    addr71:
                                    if(!(_loc1_ || b2Joint))
                                    {
                                       break;
                                    }
                                    §1p§ = 1;
                                    loop11:
                                    while(_loc1_)
                                    {
                                       §`7§ = 2;
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          §;x§ = 3;
                                          if(_loc2_ && _loc1_)
                                          {
                                             continue;
                                          }
                                          if(_loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                return;
                                             }
                                             continue loop0;
                                          }
                                          while(_loc1_ || _loc2_)
                                          {
                                             §"!T§ = 9;
                                             while(_loc1_ || _loc1_)
                                             {
                                                §§goto(addr100);
                                             }
                                             break loop11;
                                          }
                                          while(true)
                                          {
                                             §8!0§ = 8;
                                             §§goto(addr112);
                                          }
                                          addr112:
                                       }
                                    }
                                    continue;
                                 }
                                 addr134:
                                 addr134:
                                 while(true)
                                 {
                                    §9§ = 6;
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr93);
                           }
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §9!C§ = 5;
                  §§goto(addr134);
               }
            }
         }
         §§goto(addr134);
      }
      
      b2internal var §2!5§:int;
      
      b2internal var §<!9§:b2Joint;
      
      b2internal var §,!Z§:b2Joint;
      
      b2internal var §56§:b2JointEdge;
      
      b2internal var §1b§:b2JointEdge;
      
      b2internal var §-;§:b2Body;
      
      b2internal var §`x§:b2Body;
      
      b2internal var §#!7§:Boolean;
      
      b2internal var §[[§:Boolean;
      
      private var §=f§;
      
      b2internal var §%y§:b2Vec2;
      
      b2internal var §,V§:b2Vec2;
      
      b2internal var §1!h§:Number;
      
      b2internal var §9!6§:Number;
      
      b2internal var §%k§:Number;
      
      b2internal var §9!7§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§56§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§1b§ = new b2JointEdge();
               loop1:
               while(true)
               {
                  this.§%y§ = new b2Vec2();
                  addr199:
                  while(true)
                  {
                     this.§,V§ = new b2Vec2();
                     addr193:
                     while(true)
                     {
                        super();
                     }
                  }
                  addr70:
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  this.§#!7§ = false;
                  loop12:
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     addr63:
                     addr113:
                     loop9:
                     for(; _loc3_ || this; §§goto(addr63))
                     {
                        if(!_loc2_)
                        {
                           this.§`x§ = param1.§<H§;
                           loop10:
                           while(true)
                           {
                              if(_loc3_ || param1)
                              {
                                 addr100:
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    this.§[[§ = param1.collideConnected;
                                    continue loop9;
                                 }
                                 addr139:
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       this.§,!Z§ = null;
                                       while(true)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             this.§-;§ = param1.§7l§;
                                             continue loop9;
                                          }
                                          addr183:
                                          while(true)
                                          {
                                             this.§2!5§ = param1.type;
                                             break loop9;
                                          }
                                          continue loop10;
                                       }
                                       continue loop0;
                                       addr127:
                                    }
                                    addr187:
                                    while(true)
                                    {
                                       §§push(b2Settings);
                                       §§push(param1.§7l§ == param1.§<H§);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().b2Assert(§§pop());
                                       §§goto(addr183);
                                       continue loop7;
                                    }
                                 }
                              }
                              §§goto(addr127);
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     while(_loc3_ || _loc3_)
                     {
                        §§goto(addr70);
                        continue loop12;
                     }
                     while(!_loc2_)
                     {
                        this.§<!9§ = null;
                        §§goto(addr139);
                        §§goto(addr113);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr199);
               }
            }
         }
         §§goto(addr187);
      }
      
      b2internal static function §@!L§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               §§push(§@5§);
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || param2)
                        {
                           §§push(0);
                           if(_loc6_ && param2)
                           {
                              addr206:
                           }
                        }
                        else
                        {
                           addr381:
                           §§push(9);
                           if(!_loc6_)
                           {
                              addr384:
                           }
                        }
                     }
                     else
                     {
                        §§push(§9!C§);
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(1);
                                    if(_loc5_ || param1)
                                    {
                                       addr387:
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
                                       addr386:
                                    }
                                    else
                                    {
                                       addr259:
                                       §§push(_loc4_);
                                       if(_loc5_ || b2Joint)
                                       {
                                          addr267:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(5);
                                                if(_loc5_ || _loc3_)
                                                {
                                                }
                                                §§goto(addr386);
                                             }
                                             else
                                             {
                                                §§goto(addr381);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§+"§);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr301:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr304:
                                                         §§push(6);
                                                         if(_loc6_ && b2Joint)
                                                         {
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      else
                                                      {
                                                         addr370:
                                                         §§push(8);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§goto(addr386);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr384);
                                                         }
                                                      }
                                                      §§goto(addr386);
                                                   }
                                                   else
                                                   {
                                                      §§push(§8!0§);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         addr322:
                                                         §§push(_loc4_);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr333:
                                                                  §§push(7);
                                                                  if(_loc6_ && param2)
                                                                  {
                                                                     §§goto(addr384);
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr381);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(§"!T§);
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr362:
                                                                  if(§§pop() === _loc4_)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§goto(addr370);
                                                                     }
                                                                  }
                                                                  else if(true)
                                                                  {
                                                                     §§goto(addr386);
                                                                     §§push(9);
                                                                  }
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                   }
                                                   addr341:
                                                   §§goto(addr386);
                                                }
                                                §§goto(addr362);
                                             }
                                          }
                                          §§goto(addr384);
                                       }
                                       §§goto(addr362);
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr304);
                              }
                              else
                              {
                                 §§push(§2!V§);
                                 if(!_loc6_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr206);
                                             }
                                             else
                                             {
                                                addr211:
                                                §§push(_loc4_);
                                                if(_loc5_ || param2)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr222:
                                                         §§push(3);
                                                         if(_loc5_ || param2)
                                                         {
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr333);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§9!c§);
                                                      if(!_loc6_)
                                                      {
                                                         addr235:
                                                         §§push(_loc4_);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && b2Joint))
                                                               {
                                                                  addr246:
                                                                  §§push(4);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr249:
                                                                     §§goto(addr386);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr362);
                                                                  }
                                                               }
                                                               §§goto(addr370);
                                                            }
                                                            else
                                                            {
                                                               §§push(§9§);
                                                               if(_loc5_ || param2)
                                                               {
                                                                  §§goto(addr259);
                                                               }
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr386);
                                                }
                                                §§goto(addr267);
                                             }
                                          }
                                          §§goto(addr246);
                                       }
                                       else
                                       {
                                          §§push(e_revoluteJoint);
                                          if(_loc5_)
                                          {
                                             §§goto(addr211);
                                          }
                                       }
                                    }
                                    §§goto(addr362);
                                 }
                                 §§goto(addr235);
                              }
                           }
                           §§goto(addr362);
                        }
                     }
                     §§goto(addr386);
                  }
                  §§goto(addr267);
               }
               §§goto(addr322);
            }
            §§goto(addr222);
         }
         §§goto(addr387);
      }
      
      b2internal static function §"G§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §6!-§() : int
      {
         return this.§2!5§;
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
      
      public function §0!M§() : b2Body
      {
         return this.§-;§;
      }
      
      public function §,n§() : b2Body
      {
         return this.§`x§;
      }
      
      public function §'!;§() : b2Joint
      {
         return this.§,!Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§=f§;
      }
      
      public function §9`§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=f§ = param1;
         }
      }
      
      public function §7!S§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§-;§.§7!S§());
            if(_loc1_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc1_ || this)
                     {
                        addr78:
                        §§pop();
                        §§push(this.§`x§.§7!S§());
                        if(_loc1_)
                        {
                           addr84:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr84);
         }
         §§goto(addr78);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §9r§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
