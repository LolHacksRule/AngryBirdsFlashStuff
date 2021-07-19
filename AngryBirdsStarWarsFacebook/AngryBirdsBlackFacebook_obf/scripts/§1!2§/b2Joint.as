package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §+!o§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §`#^§:int = 2;
      
      b2internal static const §83§:int = 3;
      
      b2internal static const § "j§:int = 4;
      
      b2internal static const §4#T§:int = 5;
      
      b2internal static const §?!K§:int = 6;
      
      b2internal static const §=#9§:int = 7;
      
      b2internal static const §5@§:int = 8;
      
      b2internal static const §0+§:int = 9;
      
      b2internal static const §"!G§:int = 0;
      
      b2internal static const §5#C§:int = 1;
      
      b2internal static const §#"e§:int = 2;
      
      b2internal static const §?!b§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+!o§ = 0;
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  §`#^§ = 2;
                  loop2:
                  while(true)
                  {
                     §83§ = 3;
                     loop3:
                     while(true)
                     {
                        § "j§ = 4;
                        loop4:
                        while(true)
                        {
                           §4#T§ = 5;
                           loop5:
                           while(_loc2_)
                           {
                              §?!K§ = 6;
                              loop6:
                              while(true)
                              {
                                 §=#9§ = 7;
                                 loop7:
                                 while(_loc2_)
                                 {
                                    §5@§ = 8;
                                    while(true)
                                    {
                                       §0+§ = 9;
                                       loop9:
                                       for(; !_loc1_; while(!(_loc1_ && b2Joint))
                                       {
                                          continue loop7;
                                       })
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          §"!G§ = 0;
                                          while(true)
                                          {
                                             §5#C§ = 1;
                                             continue loop9;
                                             addr32:
                                             if(!(_loc1_ && b2Joint))
                                             {
                                                if(!_loc1_)
                                                {
                                                   return;
                                                   addr41:
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       continue loop6;
                                       addr46:
                                       loop12:
                                       while(_loc2_ || _loc1_)
                                       {
                                          continue loop3;
                                          while(true)
                                          {
                                             §?!b§ = 3;
                                             if(!_loc2_)
                                             {
                                                continue loop12;
                                             }
                                             if(!_loc1_)
                                             {
                                                §§goto(addr32);
                                             }
                                             §§goto(addr65);
                                          }
                                          §§goto(addr41);
                                       }
                                    }
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §#"e§ = 2;
                                    §§goto(addr46);
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      b2internal var §%!9§:int;
      
      b2internal var § #&§:b2Joint;
      
      b2internal var §!"!§:b2Joint;
      
      b2internal var §>"-§:b2JointEdge;
      
      b2internal var §<!$§:b2JointEdge;
      
      b2internal var §2!g§:b2Body;
      
      b2internal var § "z§:b2Body;
      
      b2internal var §'!z§:Boolean;
      
      b2internal var §6"m§:Boolean;
      
      private var §0!+§;
      
      b2internal var §[#%§:b2Vec2;
      
      b2internal var §&"8§:b2Vec2;
      
      b2internal var §<M§:Number;
      
      b2internal var §`"?§:Number;
      
      b2internal var §]r§:Number;
      
      b2internal var §-w§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>"-§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§<!$§ = new b2JointEdge();
               while(true)
               {
                  this.§[#%§ = new b2Vec2();
                  loop2:
                  while(_loc2_ || this)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     this.§&"8§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        loop4:
                        while(!(_loc3_ && _loc2_))
                        {
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           §§push(b2Settings);
                           §§push(param1.§9"P§ == param1.§continue§);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           loop5:
                           while(true)
                           {
                              this.§%!9§ = param1.type;
                              while(true)
                              {
                                 this.§ #&§ = null;
                                 loop7:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    this.§!"!§ = null;
                                    loop8:
                                    while(_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§2!g§ = param1.§9"P§;
                                          loop10:
                                          while(true)
                                          {
                                             this.§ "z§ = param1.§continue§;
                                             loop11:
                                             while(_loc2_)
                                             {
                                                this.§6"m§ = param1.collideConnected;
                                                loop12:
                                                while(!_loc3_)
                                                {
                                                   this.§'!z§ = false;
                                                   while(!_loc3_)
                                                   {
                                                      this.§0!+§ = param1.§@"g§;
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(!(_loc2_ || _loc2_))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr61);
                                                               continue loop8;
                                                            }
                                                            continue loop11;
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                         continue loop12;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop10;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       return;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      b2internal static function §=!S§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(b2internal::83);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           §§push(0);
                           if(!(_loc5_ || b2Joint))
                           {
                              addr147:
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(1);
                                       if(_loc5_)
                                       {
                                          addr359:
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
                                          addr358:
                                       }
                                       else
                                       {
                                          addr333:
                                          if(§§pop() === _loc4_)
                                          {
                                             addr335:
                                             §§push(8);
                                             if(_loc6_ && param2)
                                             {
                                             }
                                             §§goto(addr358);
                                          }
                                          else
                                          {
                                             §§goto(addr358);
                                             §§push(9);
                                          }
                                          §§goto(addr358);
                                       }
                                    }
                                    else
                                    {
                                       addr270:
                                       §§push(5);
                                       if(!_loc6_)
                                       {
                                          addr273:
                                       }
                                       else
                                       {
                                          addr324:
                                       }
                                    }
                                    §§goto(addr358);
                                 }
                                 else
                                 {
                                    §§push(b2internal::`#^);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_)
                                       {
                                          addr168:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                §§push(2);
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr358);
                                                }
                                                else
                                                {
                                                   §§goto(addr324);
                                                }
                                             }
                                             else
                                             {
                                                addr214:
                                                §§push(3);
                                                if(_loc6_ && b2Joint)
                                                {
                                                   addr305:
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && b2Joint))
                                                   {
                                                      addr313:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_ || b2Joint)
                                                         {
                                                            addr321:
                                                            §§push(7);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr324);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr333);
                                                            }
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      else
                                                      {
                                                         §§push(b2internal::0+);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§goto(addr333);
                                                         }
                                                         addr353:
                                                         §§goto(addr358);
                                                      }
                                                   }
                                                   §§goto(addr333);
                                                }
                                                §§goto(addr358);
                                             }
                                             §§goto(addr358);
                                          }
                                          else
                                          {
                                             §§push(b2internal::e_revoluteJoint);
                                             if(_loc5_ || param2)
                                             {
                                                §§push(_loc4_);
                                                if(_loc5_ || param2)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§goto(addr214);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr270);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal:: "j);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc5_)
                                                         {
                                                            addr234:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(4);
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     §§goto(addr358);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr273);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr293:
                                                                  §§push(6);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr358);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr305);
                                                                  }
                                                               }
                                                               §§goto(addr358);
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::?!K);
                                                               if(_loc5_ || param2)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     addr262:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           §§goto(addr270);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr321);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(b2internal::=#9);
                                                                        if(_loc5_ || b2Joint)
                                                                        {
                                                                           addr282:
                                                                           §§push(_loc4_);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 §§goto(addr321);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(b2internal::5@);
                                                                                 if(_loc5_ || b2Joint)
                                                                                 {
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                           }
                                                                           §§goto(addr313);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr234);
                                             }
                                          }
                                          §§goto(addr358);
                                       }
                                       §§goto(addr333);
                                    }
                                    §§goto(addr282);
                                 }
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr358);
                        }
                        §§goto(addr293);
                     }
                     else
                     {
                        §§push(b2internal::4#T);
                        if(_loc5_ || param1)
                        {
                           §§goto(addr147);
                        }
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr262);
               }
               §§goto(addr305);
            }
            §§goto(addr293);
         }
         §§goto(addr359);
      }
      
      b2internal static function §;!"§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §8! §() : int
      {
         return this.§%!9§;
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
      
      public function §;!`§() : b2Body
      {
         return this.§2!g§;
      }
      
      public function §8!'§() : b2Body
      {
         return this.§ "z§;
      }
      
      public function §>!>§() : b2Joint
      {
         return this.§!"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§0!+§ = param1;
         }
      }
      
      public function §%!L§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§2!g§.§%!L§());
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr45:
                        §§pop();
                        §§push(this.§ "z§.§%!L§());
                        if(!(_loc2_ && _loc1_))
                        {
                           addr66:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr66);
                  }
                  return §§pop();
               }
               §§goto(addr45);
            }
            §§goto(addr66);
         }
         §§goto(addr45);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §4"J§() : void
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
