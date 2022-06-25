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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'2§ = 0;
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §<w§ = 2;
                  addr144:
                  while(true)
                  {
                     §8-§ = 3;
                     addr137:
                     while(_loc2_)
                     {
                        §3!+§ = 4;
                        loop4:
                        while(true)
                        {
                           §%![§ = 5;
                           addr127:
                           while(true)
                           {
                              §%?§ = 6;
                              continue loop4;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
            addr153:
         }
         loop10:
         while(true)
         {
            §1l§ = 1;
            loop11:
            while(!_loc1_)
            {
               if(!_loc1_)
               {
                  §4!S§ = 2;
                  while(!_loc1_)
                  {
                     §3!`§ = 3;
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           continue loop10;
                        }
                        continue loop11;
                     }
                  }
                  §§goto(addr144);
               }
               §§goto(addr137);
            }
            §§goto(addr95);
         }
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2a§ = new b2JointEdge();
            while(true)
            {
               this.§]^§ = new b2JointEdge();
               while(_loc3_)
               {
                  addr98:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  this.§4!d§ = param1.§"@§;
                  loop11:
                  while(true)
                  {
                     this.§7u§ = param1.collideConnected;
                     loop12:
                     while(true)
                     {
                        this.§1v§ = false;
                        while(true)
                        {
                           if(_loc2_ && _loc2_)
                           {
                              continue loop12;
                           }
                           if(_loc2_)
                           {
                              continue loop11;
                           }
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           loop10:
                           while(true)
                           {
                              if(_loc3_ || param1)
                              {
                                 addr91:
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    break;
                                 }
                                 §§goto(addr98);
                              }
                              loop9:
                              while(true)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr117:
                                    if(_loc2_ && this)
                                    {
                                       break;
                                    }
                                    this.§&A§ = param1.§19§;
                                    continue loop10;
                                 }
                                 addr129:
                                 while(true)
                                 {
                                    this.§=!8§ = null;
                                    continue loop9;
                                 }
                              }
                              addr163:
                              while(true)
                              {
                                 §§push(b2Settings);
                                 §§push(param1.§19§ == param1.§"@§);
                                 if(_loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().b2Assert(§§pop());
                                 addr159:
                                 while(true)
                                 {
                                    this.§3r§ = param1.type;
                                    break loop10;
                                 }
                                 §§goto(addr117);
                              }
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 this.§+!3§ = null;
                                 §§goto(addr129);
                              }
                              break;
                              §§goto(addr91);
                           }
                           §§goto(addr159);
                        }
                        while(true)
                        {
                           super();
                           §§goto(addr163);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§9&§ = new b2Vec2();
            §§goto(addr175);
         }
      }
      
      b2internal static function §1!Y§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(b2internal::8-);
               if(!(_loc5_ && param2))
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr143:
                              §§push(_loc4_);
                              if(!_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(1);
                                       if(_loc6_ || b2Joint)
                                       {
                                          addr330:
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
                                          addr329:
                                       }
                                       else
                                       {
                                          addr277:
                                          §§goto(addr329);
                                       }
                                    }
                                    else
                                    {
                                       addr215:
                                       §§push(3);
                                       if(!_loc6_)
                                       {
                                          addr310:
                                       }
                                    }
                                    §§goto(addr329);
                                 }
                                 else
                                 {
                                    §§push(b2internal::<w);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(2);
                                                if(_loc6_ || param2)
                                                {
                                                   addr195:
                                                }
                                                else
                                                {
                                                   addr259:
                                                }
                                             }
                                             else
                                             {
                                                addr316:
                                                §§push(8);
                                                if(!(_loc5_ && param1))
                                                {
                                                   addr324:
                                                }
                                             }
                                             §§goto(addr329);
                                          }
                                          else
                                          {
                                             §§push(b2internal::e_revoluteJoint);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr215);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr316);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::3!+);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr233:
                                                                  §§push(4);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr241:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr314:
                                                                     if(§§pop() === _loc4_)
                                                                     {
                                                                        §§goto(addr316);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr329);
                                                                        §§push(9);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr256:
                                                                  §§push(5);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr310);
                                                                  }
                                                               }
                                                               §§goto(addr329);
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::%?);
                                                               if(!_loc5_)
                                                               {
                                                                  addr245:
                                                                  §§push(_loc4_);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     addr253:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr256);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr307:
                                                                           §§push(7);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr314);
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(b2internal::-f);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr263:
                                                                           §§push(_loc4_);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr266:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(_loc6_ || b2Joint)
                                                                                    {
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr307);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(b2internal::"!1);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr281:
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc5_ && param2))
                                                                                    {
                                                                                       addr289:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!(_loc5_ && b2Joint))
                                                                                          {
                                                                                             §§goto(addr307);
                                                                                          }
                                                                                          §§goto(addr316);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(b2internal::>!`);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      §§goto(addr329);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                §§goto(addr289);
                                             }
                                             §§goto(addr245);
                                          }
                                       }
                                       §§goto(addr253);
                                    }
                                    §§goto(addr241);
                                 }
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr329);
                        }
                        §§goto(addr233);
                     }
                     else
                     {
                        §§push(b2internal::%![);
                        if(_loc6_)
                        {
                           §§goto(addr143);
                        }
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr314);
               }
               §§goto(addr195);
            }
            §§goto(addr316);
         }
         §§goto(addr330);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
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
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  §§goto(addr41);
               }
               §§goto(addr50);
            }
            addr41:
            if(§§pop())
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr50:
                  §§pop();
                  §§push(this.§4!d§.§3!C§());
                  if(!_loc2_)
                  {
                     return Boolean(§§pop());
                  }
               }
            }
         }
         §§goto(addr50);
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
