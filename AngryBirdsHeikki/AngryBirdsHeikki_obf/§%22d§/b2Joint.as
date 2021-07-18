package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §7M§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §=x§:int = 2;
      
      b2internal static const §0=§:int = 3;
      
      b2internal static const § h§:int = 4;
      
      b2internal static const §^a§:int = 5;
      
      b2internal static const §05§:int = 6;
      
      b2internal static const §6d§:int = 7;
      
      b2internal static const §;'§:int = 8;
      
      b2internal static const §#F§:int = 9;
      
      b2internal static const §7t§:int = 0;
      
      b2internal static const §-z§:int = 1;
      
      b2internal static const §&!U§:int = 2;
      
      b2internal static const §]!A§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §7M§ = 0;
            while(true)
            {
               e_revoluteJoint = 1;
               addr72:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §&!U§ = 2;
               loop12:
               while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_)
                     {
                        addr49:
                        if(_loc1_ && _loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     loop10:
                     while(_loc2_ || b2Joint)
                     {
                        §-z§ = 1;
                        while(true)
                        {
                           if(!(_loc1_ && b2Joint))
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr72);
                              }
                              while(true)
                              {
                                 §;'§ = 8;
                                 break loop10;
                              }
                              addr118:
                           }
                           addr106:
                           while(true)
                           {
                              §7t§ = 0;
                              continue loop10;
                           }
                           continue loop12;
                        }
                        loop6:
                        while(_loc2_)
                        {
                           addr125:
                           if(!(_loc1_ && b2Joint))
                           {
                              §6d§ = 7;
                              §§goto(addr118);
                           }
                           while(true)
                           {
                              §^a§ = 5;
                              break loop6;
                              §§goto(addr125);
                           }
                        }
                        while(true)
                        {
                           §05§ = 6;
                           §§goto(addr123);
                        }
                        addr123:
                     }
                     while(!_loc1_)
                     {
                        §#F§ = 9;
                        §§goto(addr106);
                        §§goto(addr94);
                     }
                     addr94:
                     while(true)
                     {
                        §0=§ = 3;
                        break loop12;
                     }
                     addr164:
                  }
                  §§goto(addr61);
               }
               while(!_loc1_)
               {
                  § h§ = 4;
                  §§goto(addr142);
                  §§goto(addr49);
               }
               while(true)
               {
                  §=x§ = 2;
                  §§goto(addr164);
               }
               addr169:
            }
         }
         §§goto(addr169);
      }
      
      b2internal var §2!]§:int;
      
      b2internal var §8s§:b2Joint;
      
      b2internal var §>W§:b2Joint;
      
      b2internal var §9w§:b2JointEdge;
      
      b2internal var §1]§:b2JointEdge;
      
      b2internal var §#A§:b2Body;
      
      b2internal var §2!`§:b2Body;
      
      b2internal var §#[§:Boolean;
      
      b2internal var §1S§:Boolean;
      
      private var §,!&§;
      
      b2internal var §+B§:b2Vec2;
      
      b2internal var §0t§:b2Vec2;
      
      b2internal var §5!H§:Number;
      
      b2internal var §^I§:Number;
      
      b2internal var §?Y§:Number;
      
      b2internal var §9H§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9w§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§1]§ = new b2JointEdge();
               while(true)
               {
                  this.§+B§ = new b2Vec2();
                  while(true)
                  {
                     this.§0t§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super();
                        while(!_loc2_)
                        {
                           §§push(b2Settings);
                           §§push(param1.§&]§ == param1.§+0§);
                           if(_loc3_ || param1)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           while(true)
                           {
                              this.§2!]§ = param1.type;
                              while(_loc3_ || this)
                              {
                                 this.§8s§ = null;
                                 while(true)
                                 {
                                    this.§>W§ = null;
                                    loop8:
                                    while(true)
                                    {
                                       this.§#A§ = param1.§&]§;
                                       addr114:
                                       while(true)
                                       {
                                          this.§2!`§ = param1.§+0§;
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                           if(!(_loc2_ && this))
                           {
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      b2internal static function §;O§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(!(_loc6_ && b2Joint))
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(b2internal::0=);
               if(_loc5_ || param1)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && param2))
                        {
                           addr135:
                           §§push(0);
                           if(_loc6_ && param1)
                           {
                              addr314:
                           }
                        }
                        else
                        {
                           addr232:
                           §§push(4);
                           if(!_loc5_)
                           {
                              addr305:
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 addr308:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       addr311:
                                       §§push(7);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr314);
                                       }
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
                                       addr320:
                                       §§push(8);
                                       if(_loc6_ && param1)
                                       {
                                       }
                                       §§goto(addr343);
                                    }
                                    §§goto(addr343);
                                 }
                                 else
                                 {
                                    §§push(b2internal::#F);
                                    if(_loc5_)
                                    {
                                       addr319:
                                       if(§§pop() === _loc4_)
                                       {
                                          §§goto(addr320);
                                       }
                                       else
                                       {
                                          §§goto(addr343);
                                          §§push(9);
                                       }
                                       §§goto(addr343);
                                    }
                                 }
                                 addr338:
                                 §§goto(addr343);
                              }
                              §§goto(addr319);
                           }
                           else
                           {
                              addr235:
                           }
                        }
                        §§goto(addr343);
                     }
                     else
                     {
                        §§push(b2internal::^a);
                        if(!_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc5_ || b2Joint)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §§push(1);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§goto(addr343);
                                    }
                                    else
                                    {
                                       addr272:
                                       §§push(_loc4_);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && b2Joint))
                                             {
                                                addr288:
                                                §§push(6);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr296:
                                                   §§goto(addr343);
                                                }
                                                else
                                                {
                                                   §§goto(addr319);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr311);
                                             }
                                          }
                                          else
                                          {
                                             §§push(b2internal::;');
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr305);
                                             }
                                          }
                                          §§goto(addr338);
                                       }
                                       §§goto(addr308);
                                    }
                                 }
                                 §§goto(addr288);
                              }
                              else
                              {
                                 §§push(b2internal::=x);
                                 if(_loc5_)
                                 {
                                    addr185:
                                    §§push(_loc4_);
                                    if(!(_loc6_ && param2))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                                §§goto(addr311);
                                             }
                                             else
                                             {
                                                §§goto(addr272);
                                             }
                                          }
                                          else
                                          {
                                             addr219:
                                             §§push(3);
                                             if(_loc5_)
                                             {
                                                addr222:
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr296);
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_ || b2Joint)
                                             {
                                                addr211:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr219);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr311);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(b2internal:: h);
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         addr229:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr232);
                                                            }
                                                            else
                                                            {
                                                               addr260:
                                                               §§push(5);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr311);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr305);
                                                               }
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::05);
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr252:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc6_ && b2Joint))
                                                                     {
                                                                        §§goto(addr260);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr288);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(b2internal::6d);
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        §§goto(addr272);
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr311);
                                             }
                                             §§goto(addr229);
                                          }
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr308);
                                 }
                                 §§goto(addr235);
                              }
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr185);
                     }
                  }
                  §§goto(addr308);
               }
               §§goto(addr222);
            }
            §§goto(addr135);
         }
         §§goto(addr344);
      }
      
      b2internal static function §;!^§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §0i§() : int
      {
         return this.§2!]§;
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
      
      public function §]!X§() : b2Body
      {
         return this.§#A§;
      }
      
      public function §+4§() : b2Body
      {
         return this.§2!`§;
      }
      
      public function §5!J§() : b2Joint
      {
         return this.§>W§;
      }
      
      public function GetUserData() : *
      {
         return this.§,!&§;
      }
      
      public function §-N§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§,!&§ = param1;
         }
      }
      
      public function §5!B§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§#A§.§5!B§());
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  addr41:
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        addr56:
                        §§push(this.§2!`§.§5!B§());
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr62);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr62:
               return §§pop();
            }
            §§goto(addr41);
         }
         §§goto(addr56);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §9x§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
