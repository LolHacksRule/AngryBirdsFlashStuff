package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §?!N§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §%Y§:int = 2;
      
      b2internal static const §-!u§:int = 3;
      
      b2internal static const §<!`§:int = 4;
      
      b2internal static const §;p§:int = 5;
      
      b2internal static const §3!B§:int = 6;
      
      b2internal static const §"$§:int = 7;
      
      b2internal static const §2"§:int = 8;
      
      b2internal static const §8b§:int = 9;
      
      b2internal static const §7! §:int = 0;
      
      b2internal static const §?"§:int = 1;
      
      b2internal static const § B§:int = 2;
      
      b2internal static const §!>§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?!N§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               while(true)
               {
                  §%Y§ = 2;
                  continue loop0;
                  addr101:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §7! § = 0;
                  loop10:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        §?"§ = 1;
                        addr65:
                        loop12:
                        while(!(_loc1_ && _loc2_))
                        {
                           § B§ = 2;
                           while(true)
                           {
                              if(!(_loc2_ || b2Joint))
                              {
                                 continue loop12;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr49:
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 loop6:
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    §"$§ = 7;
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §2"§ = 8;
                                          break loop12;
                                       }
                                       break;
                                       §§goto(addr49);
                                    }
                                    while(true)
                                    {
                                       §<!`§ = 4;
                                       addr157:
                                       while(true)
                                       {
                                          §;p§ = 5;
                                          break loop6;
                                       }
                                       §§goto(addr118);
                                    }
                                    addr118:
                                 }
                                 while(true)
                                 {
                                    §3!B§ = 6;
                                    §§goto(addr130);
                                 }
                                 addr130:
                              }
                              §§goto(addr118);
                           }
                           continue loop10;
                        }
                        while(true)
                        {
                           §8b§ = 9;
                           break loop10;
                           §§goto(addr65);
                        }
                     }
                  }
                  while(!_loc1_)
                  {
                     §§goto(addr101);
                     §§goto(addr87);
                  }
                  addr87:
                  §§goto(addr157);
               }
            }
         }
         §§goto(addr94);
      }
      
      b2internal var §"!1§:int;
      
      b2internal var §4!7§:b2Joint;
      
      b2internal var §7n§:b2Joint;
      
      b2internal var §4C§:b2JointEdge;
      
      b2internal var §`!Z§:b2JointEdge;
      
      b2internal var §^^§:b2Body;
      
      b2internal var §7!<§:b2Body;
      
      b2internal var §^-§:Boolean;
      
      b2internal var §"!%§:Boolean;
      
      private var §>a§;
      
      b2internal var §^s§:b2Vec2;
      
      b2internal var §@!'§:b2Vec2;
      
      b2internal var §8!K§:Number;
      
      b2internal var §!!8§:Number;
      
      b2internal var §[!=§:Number;
      
      b2internal var §1&§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4C§ = new b2JointEdge();
            while(true)
            {
               this.§`!Z§ = new b2JointEdge();
            }
            addr187:
         }
         loop1:
         while(true)
         {
            this.§^s§ = new b2Vec2();
            loop2:
            while(true)
            {
               this.§@!'§ = new b2Vec2();
               loop3:
               while(true)
               {
                  super();
                  addr164:
                  while(true)
                  {
                     §§push(b2Settings);
                     §§push(param1.§-!O§ == param1.§3!u§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().b2Assert(§§pop());
                     continue loop2;
                  }
                  addr72:
                  if(_loc2_ || _loc3_)
                  {
                     this.§"!%§ = param1.collideConnected;
                     loop11:
                     do
                     {
                        this.§^-§ = false;
                        while(_loc2_)
                        {
                           this.§>a§ = param1.§1o§;
                           if(!(_loc3_ && param1))
                           {
                              continue loop11;
                           }
                        }
                        loop10:
                        while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              addr65:
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr72);
                              }
                              else
                              {
                                 while(!_loc3_)
                                 {
                                    this.§4!7§ = null;
                                    while(!_loc3_)
                                    {
                                       this.§7n§ = null;
                                       while(true)
                                       {
                                          this.§^^§ = param1.§-!O§;
                                       }
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(_loc2_)
                                          {
                                             this.§7!<§ = param1.§3!u§;
                                             continue loop10;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr164);
                                    §§goto(addr65);
                                 }
                                 §§goto(addr187);
                                 addr124:
                              }
                           }
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr97);
                              }
                              §§goto(addr111);
                              continue loop10;
                           }
                           continue loop1;
                        }
                        continue loop3;
                     }
                     while(_loc3_);
                     
                     if(_loc2_)
                     {
                        return;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      b2internal static function §5=§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(b2internal::-!u);
               if(!(_loc5_ && param1))
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || b2Joint)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr335:
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
                              addr334:
                           }
                           else
                           {
                              addr181:
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(2);
                                       if(_loc6_ || param2)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr326:
                                       §§push(8);
                                       if(!_loc5_)
                                       {
                                          addr329:
                                       }
                                    }
                                    §§goto(addr334);
                                 }
                                 else
                                 {
                                    §§push(b2internal::e_revoluteJoint);
                                    if(_loc6_)
                                    {
                                       addr199:
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(3);
                                                if(!(_loc6_ || param1))
                                                {
                                                   addr320:
                                                }
                                                §§goto(addr334);
                                             }
                                             else
                                             {
                                                addr251:
                                                §§push(5);
                                                if(_loc6_ || b2Joint)
                                                {
                                                   §§goto(addr334);
                                                }
                                                else
                                                {
                                                   §§goto(addr329);
                                                }
                                             }
                                             §§goto(addr334);
                                          }
                                          else
                                          {
                                             §§push(b2internal::<!`);
                                             if(!_loc5_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || b2Joint)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || b2Joint)
                                                      {
                                                         §§push(4);
                                                         if(_loc6_)
                                                         {
                                                            addr236:
                                                            §§goto(addr334);
                                                         }
                                                         else
                                                         {
                                                            addr268:
                                                            §§push(_loc4_);
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               addr276:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr312:
                                                                     §§push(7);
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§goto(addr320);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr324:
                                                                        if(§§pop() === _loc4_)
                                                                        {
                                                                           §§goto(addr326);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr334);
                                                                           §§push(9);
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               else
                                                               {
                                                                  §§push(b2internal::2");
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        addr309:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr312);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(b2internal::8b);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr324);
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                                  §§goto(addr329);
                                                               }
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                      }
                                                      addr279:
                                                      §§push(6);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         addr287:
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::3!B);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc6_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr251);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr279);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::"$);
                                                               if(!(_loc5_ && b2Joint))
                                                               {
                                                                  §§goto(addr268);
                                                               }
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                   }
                                                   §§goto(addr329);
                                                }
                                                §§goto(addr276);
                                             }
                                             §§goto(addr268);
                                          }
                                       }
                                       §§goto(addr309);
                                    }
                                    §§goto(addr320);
                                 }
                              }
                              §§goto(addr324);
                           }
                           §§goto(addr334);
                        }
                        §§goto(addr312);
                     }
                     else
                     {
                        §§push(b2internal::;p);
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           if(!(_loc5_ && b2Joint))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(1);
                                    if(_loc6_ || b2Joint)
                                    {
                                       §§goto(addr334);
                                    }
                                    else
                                    {
                                       §§goto(addr236);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr251);
                                 }
                                 §§goto(addr334);
                              }
                              else
                              {
                                 §§push(b2internal::%Y);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§goto(addr181);
                                 }
                                 §§goto(addr199);
                              }
                           }
                           §§goto(addr309);
                        }
                     }
                     §§goto(addr334);
                  }
                  §§goto(addr324);
               }
               §§goto(addr268);
            }
            §§goto(addr326);
         }
         §§goto(addr335);
      }
      
      b2internal static function §"L§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §0!@§() : int
      {
         return this.§"!1§;
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
      
      public function §3!!§() : b2Body
      {
         return this.§^^§;
      }
      
      public function §^F§() : b2Body
      {
         return this.§7!<§;
      }
      
      public function §2!g§() : b2Joint
      {
         return this.§7n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>a§;
      }
      
      public function § A§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§>a§ = param1;
         }
      }
      
      public function § !5§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§^^§.§ !5§());
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§goto(addr57);
               }
               §§goto(addr72);
            }
            addr57:
            if(§§pop())
            {
               if(_loc2_)
               {
                  §§pop();
                  addr62:
                  §§push(this.§7!<§.§ !5§());
                  if(_loc2_ || _loc1_)
                  {
                     addr72:
                     return Boolean(§§pop());
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §;d§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
