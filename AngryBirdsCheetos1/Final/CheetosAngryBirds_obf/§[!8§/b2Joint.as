package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §>!?§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §8z§:int = 2;
      
      b2internal static const §>#§:int = 3;
      
      b2internal static const §5O§:int = 4;
      
      b2internal static const §7q§:int = 5;
      
      b2internal static const §[-§:int = 6;
      
      b2internal static const §,@§:int = 7;
      
      b2internal static const §@P§:int = 8;
      
      b2internal static const §#!N§:int = 9;
      
      b2internal static const §%W§:int = 0;
      
      b2internal static const §%! §:int = 1;
      
      b2internal static const §+!E§:int = 2;
      
      b2internal static const §7^§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>!?§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               while(true)
               {
                  §8z§ = 2;
                  while(true)
                  {
                     §>#§ = 3;
                     while(_loc1_)
                     {
                        §5O§ = 4;
                        loop4:
                        while(true)
                        {
                           §7q§ = 5;
                           while(true)
                           {
                              §[-§ = 6;
                              while(true)
                              {
                                 §,@§ = 7;
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    §@P§ = 8;
                                    while(true)
                                    {
                                       §#!N§ = 9;
                                       addr104:
                                       §§goto(addr43);
                                    }
                                 }
                              }
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop4;
                              }
                              §+!E§ = 2;
                              §§goto(addr48);
                           }
                        }
                        if(_loc1_ || _loc2_)
                        {
                           addr43:
                           while(true)
                           {
                              §%W§ = 0;
                              continue loop8;
                           }
                        }
                        continue;
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      b2internal var §8!J§:int;
      
      b2internal var §8`§:b2Joint;
      
      b2internal var §#!&§:b2Joint;
      
      b2internal var final:b2JointEdge;
      
      b2internal var §+d§:b2JointEdge;
      
      b2internal var §`p§:b2Body;
      
      b2internal var §%^§:b2Body;
      
      b2internal var §>!0§:Boolean;
      
      b2internal var §5&§:Boolean;
      
      private var §'8§;
      
      b2internal var §=a§:b2Vec2;
      
      b2internal var §3D§:b2Vec2;
      
      b2internal var §3#§:Number;
      
      b2internal var §=!X§:Number;
      
      b2internal var §&!P§:Number;
      
      b2internal var § a§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.final = new b2JointEdge();
            while(true)
            {
               this.§+d§ = new b2JointEdge();
               loop1:
               for(; !(_loc3_ && _loc2_); while(_loc2_ || this)
               {
                  §§push(b2Settings);
                  §§push(param1.§8!5§ == param1.§0n§);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().b2Assert(§§pop());
                  §§goto(addr136);
               })
               {
                  this.§=a§ = new b2Vec2();
                  while(true)
                  {
                     this.§3D§ = new b2Vec2();
                     addr153:
                     addr61:
                     while(true)
                     {
                        super();
                        continue loop1;
                     }
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     this.§>!0§ = false;
                     loop13:
                     while(!_loc3_)
                     {
                        this.§'8§ = param1.§4!E§;
                        if(_loc3_)
                        {
                           continue;
                        }
                        addr35:
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              return;
                              addr44:
                           }
                           else
                           {
                              §§goto(addr153);
                           }
                        }
                        else
                        {
                           loop12:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr61);
                              }
                              addr74:
                              while(true)
                              {
                                 this.§5&§ = param1.collideConnected;
                                 continue loop12;
                              }
                           }
                           loop7:
                           while(true)
                           {
                              this.§#!&§ = null;
                              addr102:
                              addr122:
                              while(_loc2_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    this.§`p§ = param1.§8!5§;
                                    break loop13;
                                 }
                                 continue loop1;
                              }
                              addr136:
                              while(!_loc3_)
                              {
                                 this.§8`§ = null;
                                 continue loop7;
                                 §§goto(addr102);
                              }
                              while(true)
                              {
                                 this.§8!J§ = param1.type;
                                 §§goto(addr122);
                              }
                           }
                        }
                     }
                     while(!(_loc3_ && param1))
                     {
                        while(true)
                        {
                           this.§%^§ = param1.§0n§;
                           §§goto(addr74);
                        }
                        §§goto(addr44);
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      b2internal static function §>y§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc6_ || param2)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(b2internal::>#);
               if(_loc6_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           addr136:
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr250:
                              §§push(_loc4_);
                              if(_loc6_ || _loc3_)
                              {
                                 addr258:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       addr261:
                                       §§push(5);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr340:
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
                                          addr339:
                                       }
                                       else
                                       {
                                          addr273:
                                          §§push(_loc4_);
                                          if(!(_loc5_ && param1))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   addr289:
                                                   §§push(6);
                                                   if(_loc5_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr321:
                                                   §§push(8);
                                                   if(!_loc5_)
                                                   {
                                                      addr334:
                                                   }
                                                }
                                                §§goto(addr339);
                                             }
                                             else
                                             {
                                                §§push(b2internal::@P);
                                                if(_loc6_)
                                                {
                                                   addr296:
                                                   §§push(_loc4_);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      addr304:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            addr307:
                                                            §§push(7);
                                                            if(_loc5_)
                                                            {
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr321);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(b2internal::#!N);
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr320:
                                                            if(§§pop() === _loc4_)
                                                            {
                                                               §§goto(addr321);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr339);
                                                               §§push(9);
                                                            }
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   §§goto(addr320);
                                                }
                                             }
                                             addr310:
                                             §§goto(addr339);
                                          }
                                          §§goto(addr320);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr321);
                                 }
                                 else
                                 {
                                    §§push(b2internal::,@);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr273);
                                    }
                                    §§goto(addr334);
                                 }
                              }
                              §§goto(addr304);
                           }
                        }
                        else
                        {
                           addr215:
                           §§push(3);
                           if(_loc5_ && b2Joint)
                           {
                              §§goto(addr273);
                           }
                        }
                        §§goto(addr339);
                     }
                     else
                     {
                        §§push(b2internal::7q);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc4_);
                           if(!_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc5_ && _loc3_)
                                    {
                                       §§goto(addr310);
                                    }
                                    else
                                    {
                                       addr172:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr307);
                                 }
                              }
                              else
                              {
                                 §§push(b2internal::8z);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       addr184:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(2);
                                             if(_loc6_ || b2Joint)
                                             {
                                                §§goto(addr339);
                                             }
                                             else
                                             {
                                                addr232:
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   addr235:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr238:
                                                         §§push(4);
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr339);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr310);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::[-);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§goto(addr250);
                                                      }
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr258);
                                             }
                                          }
                                          §§goto(addr238);
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc5_ && b2Joint))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr215);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                else
                                                {
                                                   §§push(b2internal::5O);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§goto(addr232);
                                                   }
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr320);
                                          }
                                          §§goto(addr334);
                                       }
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr273);
                              }
                              §§goto(addr339);
                           }
                           §§goto(addr235);
                        }
                     }
                     §§goto(addr334);
                  }
                  §§goto(addr184);
               }
               §§goto(addr172);
            }
            §§goto(addr136);
         }
         §§goto(addr340);
      }
      
      b2internal static function §;@§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §"!M§() : int
      {
         return this.§8!J§;
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
      
      public function §6!Z§() : b2Body
      {
         return this.§`p§;
      }
      
      public function §]§() : b2Body
      {
         return this.§%^§;
      }
      
      public function §[;§() : b2Joint
      {
         return this.§#!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§'8§;
      }
      
      public function §,!-§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§'8§ = param1;
         }
      }
      
      public function §+B§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§`p§.§+B§());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        addr56:
                        §§pop();
                        §§push(this.§%^§.§+B§());
                        if(!(_loc1_ && this))
                        {
                           addr77:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr77);
         }
         §§goto(addr56);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §+!U§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
