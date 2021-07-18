package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §;!$§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §]!-§:int = 2;
      
      b2internal static const §&"W§:int = 3;
      
      b2internal static const §3`§:int = 4;
      
      b2internal static const §-m§:int = 5;
      
      b2internal static const §]x§:int = 6;
      
      b2internal static const §^A§:int = 7;
      
      b2internal static const §"L§:int = 8;
      
      b2internal static const §=!_§:int = 9;
      
      b2internal static const §>Q§:int = 0;
      
      b2internal static const §93§:int = 1;
      
      b2internal static const §,!E§:int = 2;
      
      b2internal static const §;!F§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;!$§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §]!-§ = 2;
                  loop2:
                  while(true)
                  {
                     §&"W§ = 3;
                     loop3:
                     while(true)
                     {
                        §3`§ = 4;
                        loop4:
                        while(_loc1_)
                        {
                           §-m§ = 5;
                           loop5:
                           while(true)
                           {
                              §]x§ = 6;
                              loop6:
                              while(true)
                              {
                                 §^A§ = 7;
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       §"L§ = 8;
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §=!_§ = 9;
                                          do
                                          {
                                             §>Q§ = 0;
                                             continue loop7;
                                          }
                                          while(!(_loc1_ || b2Joint));
                                          
                                          addr55:
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          §;!F§ = 3;
                                          addr62:
                                          if(_loc2_ && b2Joint)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   while(_loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §,!E§ = 2;
                                                         continue loop12;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop4;
                                                   addr77:
                                                }
                                                §§goto(addr55);
                                             }
                                             continue;
                                          }
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             continue loop7;
                                          }
                                          §§goto(addr41);
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      b2internal var §<"@§:int;
      
      b2internal var §;<§:b2Joint;
      
      b2internal var §?!g§:b2Joint;
      
      b2internal var §,E§:b2JointEdge;
      
      b2internal var §?!B§:b2JointEdge;
      
      b2internal var §3"X§:b2Body;
      
      b2internal var §5!§:b2Body;
      
      b2internal var §9!v§:Boolean;
      
      b2internal var §8_§:Boolean;
      
      private var §]!d§;
      
      b2internal var §+!L§:b2Vec2;
      
      b2internal var §`"Z§:b2Vec2;
      
      b2internal var §1!x§:Number;
      
      b2internal var §&!D§:Number;
      
      b2internal var §?]§:Number;
      
      b2internal var §!"S§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§,E§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§?!B§ = new b2JointEdge();
               loop1:
               while(true)
               {
                  this.§+!L§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§`"Z§ = new b2Vec2();
                     while(!_loc2_)
                     {
                        super();
                        addr75:
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        this.§8_§ = param1.collideConnected;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              addr55:
                              if(!(_loc3_ || param1))
                              {
                                 break;
                              }
                              continue;
                           }
                           addr68:
                           while(_loc3_ || this)
                           {
                              §§goto(addr75);
                           }
                           loop6:
                           while(true)
                           {
                              this.§;<§ = null;
                              addr122:
                              loop7:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 addr168:
                                 while(true)
                                 {
                                    §§push(b2Settings);
                                    §§push(param1.§`y§ == param1.§8!7§);
                                    if(_loc3_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().b2Assert(§§pop());
                                    do
                                    {
                                       this.§<"@§ = param1.type;
                                       continue loop6;
                                    }
                                    while(!_loc3_);
                                    
                                    return;
                                    continue loop7;
                                 }
                              }
                              continue loop1;
                           }
                           addr68:
                        }
                        while(!(_loc2_ && param1))
                        {
                           this.§3"X§ = param1.§`y§;
                           continue loop2;
                           §§goto(addr55);
                        }
                        §§goto(addr122);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr168);
      }
      
      b2internal static function §3!N§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(!(_loc6_ && _loc3_))
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(b2internal::&"W);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr125:
                           §§push(0);
                           if(!(_loc5_ || _loc3_))
                           {
                              addr248:
                           }
                        }
                        else
                        {
                           addr181:
                           §§push(2);
                           if(_loc6_)
                           {
                              addr252:
                              §§push(_loc4_);
                              if(_loc5_ || _loc3_)
                              {
                                 addr260:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       addr263:
                                       §§push(6);
                                       if(!_loc6_)
                                       {
                                          addr314:
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
                                          addr313:
                                       }
                                       else
                                       {
                                          addr308:
                                          §§goto(addr313);
                                       }
                                    }
                                    else
                                    {
                                       addr305:
                                       §§push(8);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr308);
                                       }
                                    }
                                    §§goto(addr313);
                                 }
                                 else
                                 {
                                    §§push(b2internal::"L);
                                    if(!_loc6_)
                                    {
                                       addr270:
                                       §§push(_loc4_);
                                       if(_loc5_ || b2Joint)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr291:
                                                §§push(7);
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr299:
                                                }
                                                else
                                                {
                                                   addr303:
                                                   if(§§pop() !== _loc4_)
                                                   {
                                                      §§goto(addr313);
                                                      §§push(9);
                                                   }
                                                }
                                                §§goto(addr313);
                                             }
                                             §§goto(addr305);
                                          }
                                          else
                                          {
                                             §§push(b2internal::=!_);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr303);
                                             }
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr303);
                                    }
                                    §§goto(addr299);
                                 }
                              }
                              §§goto(addr303);
                           }
                        }
                        §§goto(addr313);
                     }
                     else
                     {
                        §§push(b2internal::-m);
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc5_ || _loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr313);
                                    }
                                    else
                                    {
                                       addr170:
                                       §§push(_loc4_);
                                       if(_loc5_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                §§goto(addr181);
                                             }
                                             else
                                             {
                                                addr204:
                                                §§push(3);
                                                if(!_loc5_)
                                                {
                                                }
                                                §§goto(addr313);
                                             }
                                          }
                                          else
                                          {
                                             §§push(b2internal::e_revoluteJoint);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr204);
                                                      }
                                                      else
                                                      {
                                                         addr222:
                                                         §§push(4);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr313);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr252);
                                                         }
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::3`);
                                                      if(_loc5_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc5_)
                                                         {
                                                            addr214:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && b2Joint))
                                                               {
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::]x);
                                                               if(_loc5_ || b2Joint)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr237:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr240:
                                                                           §§push(5);
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§goto(addr248);
                                                                           }
                                                                           §§goto(addr313);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr291);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(b2internal::^A);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr252);
                                                                        }
                                                                        §§goto(addr313);
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr313);
                                                            }
                                                         }
                                                         §§goto(addr303);
                                                      }
                                                   }
                                                   §§goto(addr299);
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr248);
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr237);
                                    }
                                 }
                                 §§goto(addr240);
                              }
                              else
                              {
                                 §§push(b2internal::]!-);
                                 if(_loc5_ || param2)
                                 {
                                    §§goto(addr170);
                                 }
                              }
                              §§goto(addr313);
                           }
                           §§goto(addr237);
                        }
                     }
                     §§goto(addr270);
                  }
                  §§goto(addr214);
               }
               §§goto(addr252);
            }
            §§goto(addr125);
         }
         §§goto(addr314);
      }
      
      b2internal static function §2!s§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §>!f§() : int
      {
         return this.§<"@§;
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
      
      public function §["H§() : b2Body
      {
         return this.§3"X§;
      }
      
      public function §]!s§() : b2Body
      {
         return this.§5!§;
      }
      
      public function §>!v§() : b2Joint
      {
         return this.§?!g§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!d§;
      }
      
      public function §^!>§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§]!d§ = param1;
         }
      }
      
      public function §,"G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§3"X§.§,"G§());
            if(!(_loc1_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc1_))
               {
                  addr57:
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop();
                        addr67:
                        §§push(this.§5!§.§,"G§());
                        if(_loc2_ || this)
                        {
                        }
                        §§goto(addr78);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr78:
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr67);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §,t§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
