package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §'2§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §<w§:int = 2;
      
      b2internal static const §8-§:int = 3;
      
      b2internal static const §3!+§:int = 4;
      
      b2internal static const §%![§:int = 5;
      
      b2internal static const §%?§:int = 6;
      
      b2internal static const §-f§:int = 7;
      
      b2internal static const §"!1§:int = 8;
      
      b2internal static const §>!`§:int = 9;
      
      b2internal static const §]B§:int = 0;
      
      b2internal static const §1l§:int = 1;
      
      b2internal static const §4!S§:int = 2;
      
      b2internal static const §3!`§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'2§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §<w§ = 2;
                  while(true)
                  {
                     §8-§ = 3;
                     addr153:
                     while(true)
                     {
                        §3!+§ = 4;
                        addr148:
                        while(true)
                        {
                           §%![§ = 5;
                           continue loop0;
                        }
                     }
                     addr102:
                     if(!(_loc1_ || b2Joint))
                     {
                        continue;
                     }
                     §>!`§ = 9;
                     while(_loc1_)
                     {
                        §]B§ = 0;
                        loop11:
                        do
                        {
                           §1l§ = 1;
                           addr64:
                           loop12:
                           for(; _loc1_ || _loc1_; if(!(_loc2_ && _loc2_))
                           {
                              continue loop11;
                           })
                           {
                              §4!S§ = 2;
                              while(_loc1_ || _loc2_)
                              {
                                 §3!`§ = 3;
                                 if(_loc1_)
                                 {
                                    continue loop12;
                                 }
                              }
                              while(true)
                              {
                                 §"!1§ = 8;
                                 break loop12;
                                 §§goto(addr52);
                              }
                              addr52:
                           }
                           while(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr102);
                              }
                              else
                              {
                                 §§goto(addr153);
                              }
                           }
                           continue loop0;
                        }
                        while(_loc2_);
                        
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc1_)
                     {
                        while(true)
                        {
                           §-f§ = 7;
                           §§goto(addr114);
                        }
                        return;
                     }
                     §§goto(addr148);
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      b2internal var §3r§:int;
      
      b2internal var §+!3§:b2Joint;
      
      b2internal var §=!8§:b2Joint;
      
      b2internal var §2a§:b2JointEdge;
      
      b2internal var §]^§:b2JointEdge;
      
      b2internal var §&A§:b2Body;
      
      b2internal var §4!d§:b2Body;
      
      b2internal var §1v§:Boolean;
      
      b2internal var §7u§:Boolean;
      
      private var §>g§;
      
      b2internal var §9&§:b2Vec2;
      
      b2internal var §2![§:b2Vec2;
      
      b2internal var §`!Q§:Number;
      
      b2internal var §'!$§:Number;
      
      b2internal var §3<§:Number;
      
      b2internal var §]!%§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2a§ = new b2JointEdge();
            while(true)
            {
               this.§]^§ = new b2JointEdge();
               addr71:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.§1v§ = false;
               loop12:
               while(_loc2_ || _loc3_)
               {
                  this.§>g§ = param1.§]!=§;
                  if(_loc3_)
                  {
                     continue;
                  }
                  addr30:
                  if(!(_loc3_ && param1))
                  {
                     addr37:
                     if(!(_loc3_ && param1))
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                        loop7:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 this.§=!8§ = null;
                                 while(true)
                                 {
                                    this.§&A§ = param1.§19§;
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          this.§4!d§ = param1.§"@§;
                                          continue;
                                       }
                                       addr143:
                                       while(true)
                                       {
                                          this.§+!3§ = null;
                                          continue loop7;
                                       }
                                    }
                                    addr180:
                                    while(true)
                                    {
                                       super();
                                       break loop7;
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    this.§7u§ = param1.collideConnected;
                                    while(_loc2_ || param1)
                                    {
                                       §§goto(addr71);
                                       §§goto(addr30);
                                    }
                                    while(true)
                                    {
                                       this.§9&§ = new b2Vec2();
                                       break loop12;
                                       §§goto(addr64);
                                    }
                                    addr64:
                                 }
                              }
                              break;
                           }
                           addr170:
                           while(true)
                           {
                              this.§3r§ = param1.type;
                              §§goto(addr143);
                           }
                        }
                        while(true)
                        {
                           §§push(b2Settings);
                           §§push(param1.§19§ == param1.§"@§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           §§goto(addr170);
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr64);
               }
               while(true)
               {
                  this.§2![§ = new b2Vec2();
                  §§goto(addr180);
                  §§goto(addr51);
               }
               addr51:
            }
         }
         §§goto(addr192);
      }
      
      b2internal static function §1!Y§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(!(_loc6_ && param2))
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               §§push(b2internal::8-);
               if(_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           addr130:
                           §§push(0);
                           if(_loc6_)
                           {
                              addr176:
                           }
                        }
                        else
                        {
                           addr288:
                           §§push(6);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr296:
                           }
                           else
                           {
                              addr329:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2internal::%![);
                        if(_loc5_ || param1)
                        {
                           §§push(_loc4_);
                           if(_loc5_ || _loc3_)
                           {
                              addr150:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §§push(1);
                                    if(_loc5_ || param2)
                                    {
                                       §§goto(addr176);
                                    }
                                    else
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
                                       addr222:
                                    }
                                    §§goto(addr343);
                                 }
                                 else
                                 {
                                    addr237:
                                    §§push(4);
                                    if(_loc5_)
                                    {
                                       addr240:
                                       §§goto(addr343);
                                    }
                                    else
                                    {
                                       §§goto(addr329);
                                    }
                                 }
                                 §§goto(addr343);
                              }
                              else
                              {
                                 §§push(b2internal::<w);
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc6_ && param1))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr343);
                                             }
                                             else
                                             {
                                                §§goto(addr240);
                                             }
                                          }
                                          else
                                          {
                                             addr219:
                                             §§push(3);
                                             if(_loc5_)
                                             {
                                                §§goto(addr222);
                                             }
                                             else
                                             {
                                                §§goto(addr296);
                                             }
                                          }
                                          §§goto(addr343);
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_ || b2Joint)
                                             {
                                                addr216:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr219);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr288);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(b2internal::3!+);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr231:
                                                      §§push(_loc4_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr343);
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::%?);
                                                            if(_loc5_ || param2)
                                                            {
                                                               addr249:
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr257:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(5);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§goto(addr343);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr305:
                                                                           §§push(_loc4_);
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              addr323:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc5_)
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
                                                                                 §§push(b2internal::>!`);
                                                                                 if(_loc5_)
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
                                                                                 §§goto(addr338);
                                                                              }
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                     }
                                                                     §§push(7);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr329);
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(b2internal::-f);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc6_ && b2Joint))
                                                                              {
                                                                                 §§goto(addr288);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr335);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(b2internal::"!1);
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 §§goto(addr305);
                                                                              }
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr338);
                                                }
                                                §§goto(addr343);
                                             }
                                             §§goto(addr323);
                                          }
                                          §§goto(addr305);
                                       }
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr231);
                              }
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr338);
                     }
                     §§goto(addr343);
                  }
                  §§goto(addr150);
               }
               §§goto(addr249);
            }
            §§goto(addr130);
         }
         §§goto(addr344);
      }
      
      b2internal static function §=_§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function § 5§() : int
      {
         return this.§3r§;
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
      
      public function §&,§() : b2Body
      {
         return this.§&A§;
      }
      
      public function §<! §() : b2Body
      {
         return this.§4!d§;
      }
      
      public function §?!^§() : b2Joint
      {
         return this.§=!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§>g§;
      }
      
      public function §%V§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>g§ = param1;
         }
      }
      
      public function §3!C§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§&A§.§3!C§());
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§pop();
                        addr46:
                        §§push(this.§4!d§.§3!C§());
                        if(!_loc2_)
                        {
                           addr51:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr46);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §@!O§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
