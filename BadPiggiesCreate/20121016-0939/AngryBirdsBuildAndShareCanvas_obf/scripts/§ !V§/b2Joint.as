package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §--§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §=!`§:int = 2;
      
      b2internal static const §9!T§:int = 3;
      
      b2internal static const §2!D§:int = 4;
      
      b2internal static const §=J§:int = 5;
      
      b2internal static const §[i§:int = 6;
      
      b2internal static const §7!z§:int = 7;
      
      b2internal static const §>_§:int = 8;
      
      b2internal static const §case §:int = 9;
      
      b2internal static const §@g§:int = 0;
      
      b2internal static const §2!J§:int = 1;
      
      b2internal static const §^"<§:int = 2;
      
      b2internal static const §@!5§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §--§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §=!`§ = 2;
                  loop2:
                  while(true)
                  {
                     §9!T§ = 3;
                     addr144:
                     while(true)
                     {
                        §2!D§ = 4;
                        while(true)
                        {
                           §=J§ = 5;
                           loop6:
                           while(!(_loc1_ && b2Joint))
                           {
                              §7!z§ = 7;
                              loop7:
                              while(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    §>_§ = 8;
                                    loop8:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             §case § = 9;
                                             loop9:
                                             for(; _loc2_ || b2Joint; if(_loc2_ || _loc2_)
                                             {
                                                §^"<§ = 2;
                                                continue loop0;
                                             })
                                             {
                                                §@g§ = 0;
                                                loop10:
                                                while(_loc2_)
                                                {
                                                   §2!J§ = 1;
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                §[i§ = 6;
                                                break loop8;
                                                §§goto(addr92);
                                             }
                                             addr92:
                                             return;
                                             addr44:
                                             addr134:
                                          }
                                          break;
                                       }
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                        addr37:
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr44);
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_ || _loc1_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr144);
            }
         }
         §§goto(addr134);
      }
      
      b2internal var §="1§:int;
      
      b2internal var §7b§:b2Joint;
      
      b2internal var §>""§:b2Joint;
      
      b2internal var §%;§:b2JointEdge;
      
      b2internal var §!4§:b2JointEdge;
      
      b2internal var §0"7§:b2Body;
      
      b2internal var § `§:b2Body;
      
      b2internal var §`!s§:Boolean;
      
      b2internal var §1!-§:Boolean;
      
      private var §6g§;
      
      b2internal var §91§:b2Vec2;
      
      b2internal var §6"+§:b2Vec2;
      
      b2internal var §`!a§:Number;
      
      b2internal var §'!z§:Number;
      
      b2internal var §;u§:Number;
      
      b2internal var §1!Y§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%;§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§!4§ = new b2JointEdge();
               while(true)
               {
                  this.§91§ = new b2Vec2();
                  while(_loc2_)
                  {
                     this.§6"+§ = new b2Vec2();
                     while(_loc2_)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           §§push(b2Settings);
                           §§push(param1.§@!<§ == param1.§3j§);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           while(true)
                           {
                              this.§="1§ = param1.type;
                              loop6:
                              while(true)
                              {
                                 this.§7b§ = null;
                                 addr116:
                                 while(_loc2_)
                                 {
                                    this.§>""§ = null;
                                    continue loop6;
                                 }
                                 continue loop0;
                              }
                              loop11:
                              while(_loc2_ || this)
                              {
                                 this.§1!-§ = param1.collideConnected;
                                 loop12:
                                 while(!(_loc3_ && _loc2_))
                                 {
                                    this.§`!s§ = false;
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                       continue loop12;
                                    }
                                    §§goto(addr116);
                                 }
                                 while(_loc2_)
                                 {
                                    this.§ `§ = param1.§3j§;
                                    continue loop11;
                                    §§goto(addr61);
                                 }
                                 addr61:
                                 §§goto(addr104);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§0"7§ = param1.§@!<§;
            §§goto(addr97);
         }
         §§goto(addr39);
      }
      
      b2internal static function §-!x§(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2Joint = null;
         §§push(param1.type);
         if(_loc6_ || param1)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(b2internal::9!T);
               if(_loc6_ || param1)
               {
                  §§push(_loc4_);
                  if(_loc6_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param2)
                        {
                           §§push(0);
                           if(!(_loc6_ || b2Joint))
                           {
                              addr210:
                           }
                        }
                        else
                        {
                           addr276:
                           §§push(5);
                           if(!(_loc6_ || param2))
                           {
                              addr335:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2internal::=J);
                        if(_loc6_ || b2Joint)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       addr365:
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
                                       addr364:
                                    }
                                    else
                                    {
                                       addr238:
                                       §§goto(addr364);
                                    }
                                    §§goto(addr364);
                                 }
                                 else
                                 {
                                    addr207:
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr210);
                                    }
                                    else
                                    {
                                       addr265:
                                       §§push(_loc4_);
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr276);
                                             }
                                             else
                                             {
                                                addr327:
                                                §§push(7);
                                                if(_loc5_ && b2Joint)
                                                {
                                                   addr359:
                                                }
                                                §§goto(addr364);
                                             }
                                          }
                                          else
                                          {
                                             §§push(b2internal::7!z);
                                             if(_loc6_ || param2)
                                             {
                                                addr293:
                                                §§push(_loc4_);
                                                if(!_loc5_)
                                                {
                                                   addr296:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(6);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr312:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr341:
                                                         §§push(8);
                                                         if(_loc6_ || b2Joint)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::>_);
                                                      if(_loc6_)
                                                      {
                                                         addr316:
                                                         §§push(_loc4_);
                                                         if(!_loc5_)
                                                         {
                                                            addr319:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc5_ && b2Joint))
                                                               {
                                                                  §§goto(addr327);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr341);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::case );
                                                               if(!_loc5_)
                                                               {
                                                                  addr340:
                                                                  if(§§pop() === _loc4_)
                                                                  {
                                                                     §§goto(addr341);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr364);
                                                                     §§push(9);
                                                                  }
                                                               }
                                                               §§goto(addr364);
                                                            }
                                                            §§goto(addr364);
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                   }
                                                   §§goto(addr359);
                                                }
                                             }
                                             §§goto(addr312);
                                          }
                                          §§goto(addr364);
                                       }
                                       §§goto(addr319);
                                    }
                                 }
                                 §§goto(addr364);
                              }
                              else
                              {
                                 §§push(b2internal::=!`);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc5_ && param2))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             §§goto(addr207);
                                          }
                                          §§goto(addr341);
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_ || param1)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(3);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§goto(addr238);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr312);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr258:
                                                      §§push(4);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr364);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr265);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(b2internal::2!D);
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr250:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_ || b2Joint)
                                                            {
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::[i);
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr265);
                                                            }
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                      §§goto(addr319);
                                                   }
                                                }
                                                §§goto(addr364);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr364);
                                       }
                                    }
                                    §§goto(addr296);
                                 }
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr340);
                        }
                        §§goto(addr316);
                     }
                     §§goto(addr364);
                  }
                  §§goto(addr296);
               }
               §§goto(addr293);
            }
            §§goto(addr341);
         }
         §§goto(addr365);
      }
      
      b2internal static function §;&§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §+!O§() : int
      {
         return this.§="1§;
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
      
      public function §]"$§() : b2Body
      {
         return this.§0"7§;
      }
      
      public function §5v§() : b2Body
      {
         return this.§ `§;
      }
      
      public function §'!q§() : b2Joint
      {
         return this.§>""§;
      }
      
      public function GetUserData() : *
      {
         return this.§6g§;
      }
      
      public function §?"5§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6g§ = param1;
         }
      }
      
      public function §9!9§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§0"7§.§9!9§());
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr55:
                        §§pop();
                        addr56:
                        §§push(this.§ `§.§9!9§());
                        if(!_loc1_)
                        {
                        }
                        §§goto(addr62);
                     }
                     addr62:
                     return §§pop();
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr56);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8"§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
