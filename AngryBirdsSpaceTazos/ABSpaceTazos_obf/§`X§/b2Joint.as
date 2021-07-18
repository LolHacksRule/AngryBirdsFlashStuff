package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §#!h§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §1"@§:int = 2;
      
      b2internal static const §4!Z§:int = 3;
      
      b2internal static const §%!0§:int = 4;
      
      b2internal static const §in §:int = 5;
      
      b2internal static const §"!>§:int = 6;
      
      b2internal static const §2",§:int = 7;
      
      b2internal static const §@"$§:int = 8;
      
      b2internal static const §+_§:int = 9;
      
      b2internal static const §[!_§:int = 0;
      
      b2internal static const §6!S§:int = 1;
      
      b2internal static const §]!=§:int = 2;
      
      b2internal static const §<4§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §#!h§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §1"@§ = 2;
                  loop2:
                  while(true)
                  {
                     §4!Z§ = 3;
                     while(true)
                     {
                        §%!0§ = 4;
                        addr147:
                        while(_loc2_)
                        {
                           §in § = 5;
                           continue loop0;
                        }
                        continue loop1;
                        loop9:
                        while(!(_loc1_ && _loc1_))
                        {
                           while(true)
                           {
                              §[!_§ = 0;
                              addr92:
                              loop11:
                              while(!(_loc1_ && b2Joint))
                              {
                                 §6!S§ = 1;
                                 loop12:
                                 while(_loc2_ || _loc2_)
                                 {
                                    §]!=§ = 2;
                                    loop13:
                                    for(; _loc2_; §<4§ = 3,if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop11;
                                       }
                                       continue loop12;
                                    })
                                    {
                                       addr51:
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr58:
                                          if(!(_loc1_ && b2Joint))
                                          {
                                             continue;
                                          }
                                          addr126:
                                          while(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                §2",§ = 7;
                                                break loop12;
                                             }
                                             continue loop2;
                                             §§goto(addr58);
                                          }
                                          §§goto(addr147);
                                       }
                                       while(true)
                                       {
                                          §+_§ = 9;
                                          break loop13;
                                          §§goto(addr51);
                                       }
                                    }
                                    continue loop9;
                                 }
                                 while(true)
                                 {
                                    §@"$§ = 8;
                                    §§goto(addr116);
                                    §§goto(addr70);
                                 }
                                 addr70:
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    return;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      b2internal var §0w§:int;
      
      b2internal var §20§:b2Joint;
      
      b2internal var §+!o§:b2Joint;
      
      b2internal var §<!S§:b2JointEdge;
      
      b2internal var §`!-§:b2JointEdge;
      
      b2internal var §<!1§:b2Body;
      
      b2internal var §?H§:b2Body;
      
      b2internal var §[!a§:Boolean;
      
      b2internal var §46§:Boolean;
      
      private var §7R§;
      
      b2internal var §#">§:b2Vec2;
      
      b2internal var §7N§:b2Vec2;
      
      b2internal var §8"2§:Number;
      
      b2internal var §9;§:Number;
      
      b2internal var §-!J§:Number;
      
      b2internal var §6"2§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<!S§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§`!-§ = new b2JointEdge();
               loop1:
               while(true)
               {
                  this.§#">§ = new b2Vec2();
                  while(!_loc3_)
                  {
                     loop9:
                     for(; _loc2_ || this; if(_loc3_ && _loc2_)
                     {
                        continue;
                     },addr61:,if(!(_loc3_ && _loc2_))
                     {
                        addr68:
                        if(_loc2_ || this)
                        {
                           return;
                        }
                        continue loop1;
                     },addr161:,while(true)
                     {
                        this.§0w§ = param1.type;
                        §§goto(addr137);
                        §§goto(addr61);
                     })
                     {
                        this.§<!1§ = param1.§+,§;
                        loop10:
                        while(true)
                        {
                           this.§?H§ = param1.§"R§;
                           loop11:
                           do
                           {
                              this.§46§ = param1.collideConnected;
                              addr90:
                              loop12:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    this.§[!a§ = false;
                                    addr137:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                    while(_loc2_ || _loc3_)
                                    {
                                       this.§20§ = null;
                                       break loop12;
                                    }
                                    while(true)
                                    {
                                       super();
                                       continue loop1;
                                       §§goto(addr137);
                                    }
                                    addr137:
                                    addr178:
                                 }
                                 break;
                                 if(_loc2_ || this)
                                 {
                                    continue loop11;
                                 }
                              }
                              while(true)
                              {
                                 this.§+!o§ = null;
                                 continue loop9;
                                 §§goto(addr90);
                              }
                           }
                           while(!(_loc2_ || param1));
                           
                           continue loop9;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§7N§ = new b2Vec2();
            §§goto(addr178);
         }
      }
      
      b2internal static function §]H§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(!(_loc5_ && param2))
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || param2)
            {
               §§push(b2internal::4!Z);
               if(_loc6_ || param2)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(!(_loc5_ && b2Joint))
                           {
                              addr350:
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
                              addr349:
                           }
                           else
                           {
                              addr329:
                              if(§§pop() === _loc4_)
                              {
                                 addr331:
                                 §§push(8);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr349);
                              }
                              else
                              {
                                 §§goto(addr349);
                                 §§push(9);
                              }
                              §§goto(addr349);
                           }
                        }
                        else
                        {
                           addr261:
                           §§push(5);
                           if(_loc6_ || param1)
                           {
                              addr269:
                           }
                        }
                        §§goto(addr349);
                     }
                     else
                     {
                        §§push(b2internal::in );
                        if(!_loc5_)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       addr200:
                                    }
                                    §§goto(addr349);
                                 }
                                 else
                                 {
                                    §§goto(addr261);
                                 }
                              }
                              else
                              {
                                 §§push(b2internal::1"@);
                                 if(_loc6_ || b2Joint)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(2);
                                             if(!(_loc5_ && b2Joint))
                                             {
                                                §§goto(addr200);
                                             }
                                             else
                                             {
                                                addr344:
                                                §§goto(addr349);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr261);
                                          }
                                          §§goto(addr344);
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(3);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr349);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr331);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(b2internal::%!0);
                                                   if(!(_loc5_ && b2Joint))
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc5_)
                                                      {
                                                         addr230:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(4);
                                                               if(_loc6_ || param1)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::"!>);
                                                            if(_loc6_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr253:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§goto(addr261);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr284:
                                                                        §§push(6);
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(b2internal::2",);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        addr278:
                                                                        §§push(_loc4_);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr281:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr284);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr312:
                                                                                 §§push(7);
                                                                                 if(_loc5_ && _loc3_)
                                                                                 {
                                                                                    §§goto(addr329);
                                                                                 }
                                                                                 §§goto(addr349);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(b2internal::@"$);
                                                                              if(_loc6_ || b2Joint)
                                                                              {
                                                                                 addr301:
                                                                                 §§push(_loc4_);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr304:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          §§goto(addr312);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(b2internal::+_);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          §§goto(addr329);
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr329);
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        §§goto(addr329);
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                }
                                                §§goto(addr349);
                                             }
                                             §§goto(addr253);
                                          }
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr304);
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr349);
                           }
                           §§goto(addr230);
                        }
                     }
                     §§goto(addr344);
                  }
                  §§goto(addr329);
               }
               §§goto(addr349);
            }
            §§goto(addr261);
         }
         §§goto(addr350);
      }
      
      b2internal static function §^!a§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §@!N§() : int
      {
         return this.§0w§;
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
      
      public function §#n§() : b2Body
      {
         return this.§<!1§;
      }
      
      public function §1x§() : b2Body
      {
         return this.§?H§;
      }
      
      public function §`!y§() : b2Joint
      {
         return this.§+!o§;
      }
      
      public function GetUserData() : *
      {
         return this.§7R§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7R§ = param1;
         }
      }
      
      public function §0!h§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§<!1§.§0!h§());
            if(!(_loc1_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§goto(addr47);
               }
               §§goto(addr77);
            }
            addr47:
            if(§§pop())
            {
               if(_loc2_ || this)
               {
                  §§pop();
                  addr57:
                  §§push(this.§?H§.§0!h§());
                  if(_loc2_ || this)
                  {
                     addr77:
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr77);
            }
            return §§pop();
         }
         §§goto(addr57);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8!,§() : void
      {
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return false;
      }
      
      public function EnableMotor(param1:Boolean) : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
