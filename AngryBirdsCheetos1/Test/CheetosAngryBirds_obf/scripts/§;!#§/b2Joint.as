package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §0Y§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §3!;§:int = 2;
      
      b2internal static const §-A§:int = 3;
      
      b2internal static const §[,§:int = 4;
      
      b2internal static const §`!U§:int = 5;
      
      b2internal static const §^!g§:int = 6;
      
      b2internal static const set:int = 7;
      
      b2internal static const §%=§:int = 8;
      
      b2internal static const §6!8§:int = 9;
      
      b2internal static const §9!d§:int = 0;
      
      b2internal static const §'M§:int = 1;
      
      b2internal static const §6!f§:int = 2;
      
      b2internal static const §0!F§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0Y§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               loop1:
               while(true)
               {
                  §3!;§ = 2;
                  loop2:
                  while(true)
                  {
                     §-A§ = 3;
                     while(true)
                     {
                        §[,§ = 4;
                        loop4:
                        for(; _loc2_ || _loc2_; if(!(_loc2_ || b2Joint))
                        {
                           continue;
                        },§§goto(addr53))
                        {
                           §`!U§ = 5;
                           loop5:
                           while(true)
                           {
                              §^!g§ = 6;
                              loop6:
                              for(; _loc2_; while(!(_loc1_ && _loc1_))
                              {
                                 §6!8§ = 9;
                                 §§goto(addr89);
                                 §§goto(addr72);
                              })
                              {
                                 while(true)
                                 {
                                    set = 7;
                                    while(true)
                                    {
                                       §%=§ = 8;
                                       continue loop6;
                                       addr89:
                                       loop10:
                                       while(_loc2_ || _loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             §9!d§ = 0;
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   addr72:
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §'M§ = 1;
                                                   continue loop1;
                                                }
                                                continue loop10;
                                                addr39:
                                                while(true)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop11;
                                                   addr53:
                                                   §0!F§ = 3;
                                                   if(!_loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            return;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop6;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      b2internal var §#!&§:int;
      
      b2internal var §`D§:b2Joint;
      
      b2internal var §-![§:b2Joint;
      
      b2internal var §;!S§:b2JointEdge;
      
      b2internal var §"X§:b2JointEdge;
      
      b2internal var §6z§:b2Body;
      
      b2internal var §3D§:b2Body;
      
      b2internal var § P§:Boolean;
      
      b2internal var §+4§:Boolean;
      
      private var §&!i§;
      
      b2internal var §4r§:b2Vec2;
      
      b2internal var §9!h§:b2Vec2;
      
      b2internal var §"d§:Number;
      
      b2internal var §1!§:Number;
      
      b2internal var §^l§:Number;
      
      b2internal var §4!3§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§;!S§ = new b2JointEdge();
            loop0:
            while(true)
            {
               this.§"X§ = new b2JointEdge();
               loop1:
               while(true)
               {
                  this.§4r§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§9!h§ = new b2Vec2();
                     loop3:
                     while(_loc3_)
                     {
                        super();
                        while(true)
                        {
                           §§push(b2Settings);
                           §§push(param1.§-'§ == param1.§<!L§);
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           loop5:
                           while(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 this.§#!&§ = param1.type;
                                 loop6:
                                 for(; !_loc2_; while(!(_loc2_ && this))
                                 {
                                 })
                                 {
                                    this.§`D§ = null;
                                    while(true)
                                    {
                                       this.§-![§ = null;
                                       while(_loc3_)
                                       {
                                          this.§6z§ = param1.§-'§;
                                          continue loop6;
                                          if(!(_loc2_ && param1))
                                          {
                                             if(_loc3_)
                                             {
                                                return;
                                                addr49:
                                             }
                                             continue loop1;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§3D§ = param1.§<!L§;
            loop11:
            for(; !_loc2_; while(_loc3_ || this)
            {
               this.§&!i§ = param1.§["§;
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr36);
            })
            {
               this.§+4§ = param1.collideConnected;
               do
               {
                  this.§ P§ = false;
                  continue loop11;
               }
               while(_loc2_);
               
               if(!_loc2_)
               {
                  §§goto(addr40);
               }
               §§goto(addr91);
            }
            §§goto(addr110);
         }
         §§goto(addr49);
      }
      
      b2internal static function §#!M§(param1:b2JointDef, param2:*) : b2Joint
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
               §§push(b2internal::-A);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(!(_loc6_ || b2Joint))
                           {
                              addr138:
                              §§push(_loc4_);
                              if(!_loc5_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       addr149:
                                       §§push(1);
                                       if(_loc6_ || param2)
                                       {
                                          addr320:
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
                                          addr319:
                                       }
                                       else
                                       {
                                          addr190:
                                          §§goto(addr319);
                                       }
                                    }
                                    else
                                    {
                                       addr223:
                                       §§push(4);
                                       if(_loc5_)
                                       {
                                          addr314:
                                       }
                                    }
                                    §§goto(addr319);
                                 }
                                 else
                                 {
                                    §§push(b2internal::3!;);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc5_ && param2))
                                       {
                                          addr179:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(2);
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§goto(addr190);
                                                }
                                             }
                                             else
                                             {
                                                addr296:
                                                §§push(8);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§goto(addr314);
                                                }
                                             }
                                             §§goto(addr319);
                                          }
                                          else
                                          {
                                             §§push(b2internal::e_revoluteJoint);
                                             if(!_loc5_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || param1)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr205:
                                                         §§push(3);
                                                         if(_loc6_)
                                                         {
                                                            addr208:
                                                         }
                                                         §§goto(addr319);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr223);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(b2internal::[,);
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc6_ || param2)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr223);
                                                               }
                                                               else
                                                               {
                                                                  addr287:
                                                                  §§push(7);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr290:
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::^!g);
                                                               if(!(_loc5_ && b2Joint))
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr287);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(b2internal::set);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr258:
                                                                           §§push(_loc4_);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr261:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr267:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr294:
                                                                                       if(§§pop() === _loc4_)
                                                                                       {
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr319);
                                                                                          §§push(9);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr287);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(b2internal::%=);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       addr279:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc6_ || b2Joint)
                                                                                          {
                                                                                             §§goto(addr287);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(b2internal::6!8);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§goto(addr294);
                                                                                          }
                                                                                          §§goto(addr319);
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                           §§goto(addr279);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   §§goto(addr319);
                                                }
                                                §§goto(addr279);
                                             }
                                          }
                                          §§goto(addr290);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr208);
                                 }
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr319);
                        }
                        §§goto(addr205);
                     }
                     else
                     {
                        §§push(b2internal::`!U);
                        if(!_loc5_)
                        {
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr179);
               }
               §§goto(addr258);
            }
            §§goto(addr149);
         }
         §§goto(addr320);
      }
      
      b2internal static function §[!$§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §7!_§() : int
      {
         return this.§#!&§;
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
      
      public function §3g§() : b2Body
      {
         return this.§6z§;
      }
      
      public function §#F§() : b2Body
      {
         return this.§3D§;
      }
      
      public function §;!B§() : b2Joint
      {
         return this.§-![§;
      }
      
      public function GetUserData() : *
      {
         return this.§&!i§;
      }
      
      public function §-!8§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!i§ = param1;
         }
      }
      
      public function §5f§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6z§.§5f§());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§pop();
                        addr62:
                        §§push(this.§3D§.§5f§());
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr68);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
            }
            addr68:
            return §§pop();
         }
         §§goto(addr62);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §8!O§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
