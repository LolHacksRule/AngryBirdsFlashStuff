package §8k§
{
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §'x§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §#i§:int = 2;
      
      b2internal static const §1!A§:int = 3;
      
      b2internal static const §3!u§:int = 4;
      
      b2internal static const § !0§:int = 5;
      
      b2internal static const §7`§:int = 6;
      
      b2internal static const §7"<§:int = 7;
      
      b2internal static const §`"8§:int = 8;
      
      b2internal static const §4!m§:int = 9;
      
      b2internal static const §2!3§:int = 0;
      
      b2internal static const §+p§:int = 1;
      
      b2internal static const §9!i§:int = 2;
      
      b2internal static const §3"9§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'x§ = 0;
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(_loc1_ || b2Joint)
               {
                  §#i§ = 2;
                  loop2:
                  while(true)
                  {
                     §1!A§ = 3;
                     loop3:
                     while(true)
                     {
                        §3!u§ = 4;
                        loop4:
                        while(true)
                        {
                           § !0§ = 5;
                           while(true)
                           {
                              §7`§ = 6;
                              while(true)
                              {
                                 §7"<§ = 7;
                                 loop7:
                                 while(true)
                                 {
                                    §`"8§ = 8;
                                    while(true)
                                    {
                                       §4!m§ = 9;
                                       while(_loc1_ || _loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §2!3§ = 0;
                                             loop10:
                                             while(_loc1_ || b2Joint)
                                             {
                                                continue loop4;
                                                while(true)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop10;
                                                   addr68:
                                                   §9!i§ = 2;
                                                   do
                                                   {
                                                      §3"9§ = 3;
                                                   }
                                                   while(_loc2_ && _loc1_);
                                                   
                                                   if(!_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            return;
                                                            addr40:
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      b2internal var §<";§:int;
      
      b2internal var §-!Q§:b2Joint;
      
      b2internal var §%"@§:b2Joint;
      
      b2internal var §`t§:b2JointEdge;
      
      b2internal var §%!P§:b2JointEdge;
      
      b2internal var §8!Z§:b2Body;
      
      b2internal var §4"0§:b2Body;
      
      b2internal var §`3§:Boolean;
      
      b2internal var §6!p§:Boolean;
      
      private var §6r§;
      
      b2internal var §%! §:b2Vec2;
      
      b2internal var §>";§:b2Vec2;
      
      b2internal var §>!m§:Number;
      
      b2internal var §&!W§:Number;
      
      b2internal var §;!o§:Number;
      
      b2internal var §7m§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`t§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§%!P§ = new b2JointEdge();
               loop1:
               while(true)
               {
                  this.§%! § = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§>";§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           §§push(b2Settings);
                           §§push(param1.§!!v§ == param1.§'!4§);
                           if(_loc2_ || this)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           loop5:
                           while(!_loc3_)
                           {
                              this.§<";§ = param1.type;
                              while(_loc2_)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                           continue loop3;
                           addr114:
                           while(_loc2_ || param1)
                           {
                              if(!_loc3_)
                              {
                                 this.§%"@§ = null;
                                 loop9:
                                 for(; _loc2_; if(!(_loc2_ || param1))
                                 {
                                    continue;
                                 },§§goto(addr56))
                                 {
                                    this.§8!Z§ = param1.§!!v§;
                                    loop10:
                                    do
                                    {
                                       this.§4"0§ = param1.§'!4§;
                                       loop11:
                                       while(true)
                                       {
                                          this.§6!p§ = param1.collideConnected;
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop11;
                                             }
                                             §§goto(addr64);
                                             addr42:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   continue loop9;
                                                }
                                                continue loop12;
                                                addr56:
                                                this.§6r§ = param1.§6"&§;
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    while(_loc3_);
                                    
                                    return;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§-!Q§ = null;
            §§goto(addr114);
         }
      }
      
      b2internal static function §?!Q§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc6_ || b2Joint)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(b2internal::1!A);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || b2Joint)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!(_loc6_ || param2))
                           {
                              addr292:
                           }
                        }
                        else
                        {
                           addr261:
                           §§push(5);
                           if(!(_loc5_ && param1))
                           {
                              addr269:
                           }
                           else
                           {
                              addr329:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2internal:: !0);
                        if(_loc6_ || param1)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§push(1);
                                    if(!(_loc5_ && b2Joint))
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
                                       addr246:
                                       §§goto(addr334);
                                    }
                                 }
                                 else
                                 {
                                    addr317:
                                    §§push(7);
                                    if(_loc6_)
                                    {
                                       addr320:
                                    }
                                 }
                                 §§goto(addr334);
                              }
                              else
                              {
                                 §§push(b2internal::#i);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       addr189:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             addr197:
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                             }
                                             §§goto(addr334);
                                          }
                                          else
                                          {
                                             addr289:
                                             §§push(6);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr292);
                                             }
                                             else
                                             {
                                                addr296:
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§goto(addr317);
                                                      }
                                                      else
                                                      {
                                                         addr326:
                                                         §§push(8);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr329);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::4!m);
                                                      if(_loc6_)
                                                      {
                                                         addr324:
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                   §§goto(addr334);
                                                }
                                                if(§§pop() === §§pop())
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
                                          §§push(b2internal::e_revoluteJoint);
                                          if(_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc5_ && b2Joint))
                                             {
                                                addr212:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_ || b2Joint)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_ && b2Joint)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr243:
                                                      §§push(4);
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(b2internal::3!u);
                                                   if(_loc6_)
                                                   {
                                                      addr232:
                                                      §§push(_loc4_);
                                                      if(!(_loc5_ && b2Joint))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr243);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr326);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::7`);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc5_)
                                                               {
                                                                  addr253:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc5_ && b2Joint))
                                                                     {
                                                                        §§goto(addr261);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr289);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(b2internal::7"<);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(b2internal::`"8);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr296);
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                   }
                                                }
                                                §§goto(addr334);
                                             }
                                             §§goto(addr253);
                                          }
                                       }
                                       §§goto(addr320);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr329);
                              }
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr334);
                  }
                  §§goto(addr189);
               }
               §§goto(addr324);
            }
            §§goto(addr197);
         }
         §§goto(addr335);
      }
      
      b2internal static function §'S§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §"r§() : int
      {
         return this.§<";§;
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
      
      public function §6p§() : b2Body
      {
         return this.§8!Z§;
      }
      
      public function §]%§() : b2Body
      {
         return this.§4"0§;
      }
      
      public function §8!+§() : b2Joint
      {
         return this.§%"@§;
      }
      
      public function GetUserData() : *
      {
         return this.§6r§;
      }
      
      public function §<L§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6r§ = param1;
         }
      }
      
      public function IsActive() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§8!Z§.IsActive());
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        addr61:
                        §§push(this.§4"0§.IsActive());
                        if(_loc1_ || this)
                        {
                        }
                        §§goto(addr72);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
            }
            addr72:
            return §§pop();
         }
         §§goto(addr61);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §;%§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
