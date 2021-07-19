package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const §6&§:int = 0;
      
      b2internal static const e_revoluteJoint:int = 1;
      
      b2internal static const §;!"§:int = 2;
      
      b2internal static const §-!§:int = 3;
      
      b2internal static const §+!2§:int = 4;
      
      b2internal static const §-!2§:int = 5;
      
      b2internal static const §9T§:int = 6;
      
      b2internal static const §%!"§:int = 7;
      
      b2internal static const §]t§:int = 8;
      
      b2internal static const §`T§:int = 9;
      
      b2internal static const §1&§:int = 0;
      
      b2internal static const §1!6§:int = 1;
      
      b2internal static const §'5§:int = 2;
      
      b2internal static const §@!L§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2Joint)
         {
            §6&§ = 0;
            loop0:
            while(true)
            {
               e_revoluteJoint = 1;
               addr178:
               while(true)
               {
                  §;!"§ = 2;
               }
               loop4:
               while(true)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     continue loop0;
                  }
                  §-!2§ = 5;
                  loop5:
                  while(true)
                  {
                     §9T§ = 6;
                     addr122:
                     addr151:
                     loop6:
                     for(; _loc1_ || b2Joint; if(_loc2_ && _loc2_)
                     {
                        continue;
                     },§`T§ = 9,loop9:
                     while(true)
                     {
                        §1&§ = 0;
                        addr67:
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              continue loop5;
                           }
                           continue loop9;
                        }
                        continue loop5;
                     })
                     {
                        §%!"§ = 7;
                        loop7:
                        while(true)
                        {
                           §]t§ = 8;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop6;
                              }
                              continue loop7;
                              addr43:
                              if(!(_loc2_ && _loc1_))
                              {
                                 return;
                              }
                           }
                           continue loop6;
                        }
                     }
                     addr173:
                     while(!(_loc2_ && _loc2_))
                     {
                        §+!2§ = 4;
                        continue loop4;
                        §§goto(addr122);
                     }
                     while(true)
                     {
                        §-!§ = 3;
                        §§goto(addr151);
                     }
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        §1!6§ = 1;
                        loop11:
                        do
                        {
                           §'5§ = 2;
                           while(!_loc2_)
                           {
                              §@!L§ = 3;
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop11;
                              }
                           }
                           continue loop4;
                        }
                        while(_loc2_);
                        
                        if(_loc1_)
                        {
                           §§goto(addr43);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr178);
                  }
               }
            }
         }
         §§goto(addr173);
      }
      
      b2internal var §3c§:int;
      
      b2internal var §3U§:b2Joint;
      
      b2internal var §0]§:b2Joint;
      
      b2internal var §7s§:b2JointEdge;
      
      b2internal var §7!R§:b2JointEdge;
      
      b2internal var §2!D§:b2Body;
      
      b2internal var §;B§:b2Body;
      
      b2internal var §!#§:Boolean;
      
      b2internal var §"l§:Boolean;
      
      private var § !O§;
      
      b2internal var §]?§:b2Vec2;
      
      b2internal var §7U§:b2Vec2;
      
      b2internal var §5!M§:Number;
      
      b2internal var §+&§:Number;
      
      b2internal var §5%§:Number;
      
      b2internal var §2]§:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§7s§ = new b2JointEdge();
            while(true)
            {
               this.§7!R§ = new b2JointEdge();
               while(true)
               {
                  this.§]?§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§7U§ = new b2Vec2();
                     addr165:
                     while(true)
                     {
                        super();
                        addr159:
                        while(true)
                        {
                           §§push(b2Settings);
                           §§push(param1.§<§ == param1.§,!M§);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().b2Assert(§§pop());
                           addr155:
                           while(true)
                           {
                              this.§3c§ = param1.type;
                              while(true)
                              {
                                 this.§3U§ = null;
                                 loop8:
                                 while(!(_loc3_ && param1))
                                 {
                                    continue loop2;
                                    if(!(_loc2_ || param1))
                                    {
                                       continue;
                                    }
                                    addr49:
                                    if(_loc2_ || param1)
                                    {
                                       return;
                                    }
                                    addr137:
                                    while(true)
                                    {
                                       this.§0]§ = null;
                                       continue loop8;
                                       §§goto(addr49);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  this.§!#§ = false;
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr137);
      }
      
      b2internal static function §?!@§(param1:b2JointDef, param2:*) : b2Joint
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
               §§push(b2internal::-!);
               if(_loc5_ || param1)
               {
                  §§push(_loc4_);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || b2Joint)
                        {
                           §§push(0);
                           if(_loc6_ && b2Joint)
                           {
                              addr176:
                           }
                        }
                        else
                        {
                           addr237:
                           §§push(4);
                           if(_loc6_ && b2Joint)
                           {
                              addr285:
                              §§push(_loc4_);
                              if(!(_loc6_ && b2Joint))
                              {
                                 addr293:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       addr296:
                                       §§push(7);
                                       if(!(_loc6_ && param2))
                                       {
                                          addr329:
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
                                          addr328:
                                          addr304:
                                       }
                                       else
                                       {
                                          addr323:
                                          §§goto(addr328);
                                       }
                                    }
                                    else
                                    {
                                       addr310:
                                       §§push(8);
                                       if(_loc5_)
                                       {
                                          §§goto(addr323);
                                       }
                                    }
                                    §§goto(addr328);
                                 }
                                 else
                                 {
                                    §§push(b2internal::`T);
                                    if(_loc5_)
                                    {
                                       addr308:
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr323);
                                 }
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr310);
                              }
                              else
                              {
                                 §§push(9);
                              }
                           }
                           else
                           {
                              addr245:
                           }
                        }
                        §§goto(addr328);
                     }
                     else
                     {
                        §§push(b2internal::-!2);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(1);
                                    if(_loc5_ || param2)
                                    {
                                       §§goto(addr176);
                                    }
                                    else
                                    {
                                       §§goto(addr245);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr310);
                                 }
                                 §§goto(addr328);
                              }
                              else
                              {
                                 §§push(b2internal::;!");
                                 if(!_loc6_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       addr183:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc6_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr278:
                                             §§push(6);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr308);
                                             }
                                             else
                                             {
                                                addr281:
                                             }
                                          }
                                          §§goto(addr328);
                                       }
                                       else
                                       {
                                          §§push(b2internal::e_revoluteJoint);
                                          if(!(_loc6_ && b2Joint))
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_ || b2Joint)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr328);
                                                      }
                                                      else
                                                      {
                                                         addr267:
                                                         §§push(_loc4_);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr278);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr296);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(b2internal::]t);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr285);
                                                               }
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr237);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                else
                                                {
                                                   §§push(b2internal::+!2);
                                                   if(_loc5_ || b2Joint)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         else
                                                         {
                                                            §§push(b2internal::9T);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               addr254:
                                                               §§push(_loc4_);
                                                               if(!_loc6_)
                                                               {
                                                                  addr257:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        addr260:
                                                                        §§push(5);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr263:
                                                                           §§goto(addr328);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr267);
                                                                        }
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(b2internal::%!");
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr328);
                                                         }
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr263);
                                                }
                                             }
                                             §§goto(addr257);
                                          }
                                       }
                                       §§goto(addr281);
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr254);
                              }
                           }
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr323);
                  }
                  §§goto(addr293);
               }
               §§goto(addr304);
            }
            §§goto(addr260);
         }
         §§goto(addr329);
      }
      
      b2internal static function §4!L§(param1:b2Joint, param2:*) : void
      {
      }
      
      public function §0!$§() : int
      {
         return this.§3c§;
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
      
      public function §,y§() : b2Body
      {
         return this.§2!D§;
      }
      
      public function §%!3§() : b2Body
      {
         return this.§;B§;
      }
      
      public function §`!R§() : b2Joint
      {
         return this.§0]§;
      }
      
      public function GetUserData() : *
      {
         return this.§ !O§;
      }
      
      public function §,!P§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !O§ = param1;
         }
      }
      
      public function §7"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§2!D§.§7"§());
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr45:
                        §§pop();
                        addr46:
                        §§push(this.§;B§.§7"§());
                        if(_loc2_ && _loc2_)
                        {
                        }
                        §§goto(addr67);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr67:
               return §§pop();
            }
            §§goto(addr45);
         }
         §§goto(addr46);
      }
      
      b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
      }
      
      b2internal function §>h§() : void
      {
      }
      
      b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return false;
      }
   }
}
