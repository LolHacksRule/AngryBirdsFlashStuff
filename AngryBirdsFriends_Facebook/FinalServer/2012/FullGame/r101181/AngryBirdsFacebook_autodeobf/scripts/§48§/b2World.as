package §48§
{
   import §!D§.*;
   import §#]§.*;
   import §4!!§.*;
   import §55§.*;
   import §8k§.*;
   import §<!`§.*;
   import §<!c§.b2Controller;
   import §<!c§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §#_§:b2Transform;
      
      private static var §&"7§:b2Sweep;
      
      private static var §3!X§:b2Sweep;
      
      private static var §`!%§:b2TimeStep;
      
      private static var §`"2§:Vector.<b2Body>;
      
      private static var §0!0§:b2Color;
      
      private static var §`!1§:Boolean;
      
      private static var §&!j§:Boolean;
      
      public static const §3g§:int = 1;
      
      public static const §+"F§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §#_§ = new b2Transform();
               while(true)
               {
                  §&"7§ = new b2Sweep();
                  while(true)
                  {
                     §3!X§ = new b2Sweep();
                     loop3:
                     while(true)
                     {
                        §`!%§ = new b2TimeStep();
                        loop4:
                        while(true)
                        {
                           §`"2§ = new Vector.<b2Body>();
                           addr89:
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 §3g§ = 1;
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc2_ || b2World))
                                       {
                                          while(true)
                                          {
                                             §0!0§ = new b2Color(0.5,0.8,0.8);
                                             continue loop6;
                                          }
                                          return;
                                          addr49:
                                          addr116:
                                       }
                                       §§goto(addr89);
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || b2World))
                  {
                     continue;
                  }
                  §§goto(addr49);
               }
            }
         }
         §§goto(addr116);
      }
      
      private var §2A§:Vector.<b2Body>;
      
      b2internal var §`">§:int;
      
      b2internal var §1Y§:b2ContactManager;
      
      private var §<8§:b2ContactSolver;
      
      private var § !N§:b2Island;
      
      b2internal var §'!7§:b2Body;
      
      private var §3n§:b2Joint;
      
      b2internal var §>"#§:b2Contact;
      
      private var §]!M§:int;
      
      b2internal var §3M§:int;
      
      private var §0!$§:int;
      
      private var §+q§:b2Controller;
      
      private var §,"4§:int;
      
      private var §8!m§:b2Vec2;
      
      private var §>!L§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §]!v§:b2DestructionListener;
      
      private var §8!?§:b2DebugDraw;
      
      private var §&^§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§2A§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§1Y§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§<8§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§ !N§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§]!v§ = null;
                           while(true)
                           {
                              this.§8!?§ = null;
                              continue loop0;
                              while(!(_loc5_ && this))
                              {
                                 continue loop1;
                                 loop17:
                                 for(; _loc4_ || param1; loop18:
                                 while(_loc4_ || this)
                                 {
                                    this.§8!m§ = param1;
                                    loop19:
                                    while(_loc4_ || param2)
                                    {
                                       if(!_loc5_)
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             this.§&^§ = 0;
                                             addr41:
                                             addr100:
                                             while(!(_loc5_ && _loc3_))
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§1Y§.m_world = this;
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop20;
                                                      }
                                                      continue loop19;
                                                   }
                                                   continue;
                                                }
                                                addr174:
                                                while(_loc4_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§]!M§ = 0;
                                                      continue loop2;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§+q§ = null;
                                                   §§goto(addr162);
                                                }
                                                addr162:
                                             }
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   §&!j§ = true;
                                                   break loop18;
                                                }
                                                break;
                                                §§goto(addr41);
                                             }
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                §`!1§ = true;
                                                §§goto(addr100);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   this.§0!$§ = 0;
                                                   continue loop4;
                                                }
                                                addr145:
                                             }
                                             §§goto(addr28);
                                          }
                                          continue loop2;
                                          addr107:
                                       }
                                       continue loop0;
                                    }
                                 })
                                 {
                                    addr88:
                                    if(_loc4_ || _loc3_)
                                    {
                                       this.§>!L§ = param2;
                                       continue;
                                    }
                                    addr198:
                                    while(true)
                                    {
                                       this.§>"#§ = null;
                                       break loop17;
                                       §§goto(addr88);
                                    }
                                 }
                              }
                           }
                           while(_loc4_ || param2)
                           {
                              this.§,"4§ = 0;
                              §§goto(addr107);
                           }
                        }
                     }
                     while(!(_loc5_ && param2))
                     {
                        this.§3M§ = 0;
                        §§goto(addr145);
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      public function §<">§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!v§ = param1;
         }
      }
      
      public function §1"C§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1Y§.§1!9§ = param1;
         }
      }
      
      public function §!!L§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1Y§.§&!Y§ = param1;
         }
      }
      
      public function §+"C§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§8!?§ = param1;
         }
      }
      
      public function §<"5§(param1:§0!K§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc2_:§0!K§ = this.§1Y§.§"!q§;
         if(_loc6_ || _loc3_)
         {
            this.§1Y§.§"!q§ = param1;
         }
         var _loc3_:b2Body = this.§'!7§;
         for(; _loc3_; _loc3_ = _loc3_.§%"@§)
         {
            _loc4_ = _loc3_.§^F§;
            if(!(_loc5_ && _loc3_))
            {
               loop1:
               while(_loc4_)
               {
                  _loc4_.§=!;§ = param1.§'X§(_loc2_.§-Z§(_loc4_.§=!;§),_loc4_);
                  if(!_loc6_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc4_ = _loc4_.§%"@§;
                     continue loop1;
                  }
               }
               continue;
            }
            §§goto(addr86);
         }
      }
      
      public function §5G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§1Y§.§"!q§.§5G§();
         }
      }
      
      public function §9g§() : int
      {
         return this.§1Y§.§"!q§.§9g§();
      }
      
      public function §,P§(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(this.§8Z§() == true)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         if(_loc5_)
         {
            _loc2_.§-!Q§ = null;
            if(!_loc6_)
            {
               _loc2_.§%"@§ = this.§'!7§;
               if(!_loc6_)
               {
                  while(true)
                  {
                     §§push(this.§'!7§);
                     if(!(_loc6_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr73:
                              this.§'!7§.§-!Q§ = _loc2_;
                              if(_loc5_ || param1)
                              {
                              }
                              break;
                           }
                        }
                        this.§'!7§ = _loc2_;
                        if(_loc6_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr73);
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr46);
      }
      
      public function §""=§(param1:b2Body) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(!(_loc12_ && this))
         {
            if(this.§8Z§() == true)
            {
               if(!_loc12_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§3n§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§5"&§;
            if(_loc12_ && _loc3_)
            {
               continue;
            }
            §§push(this.§]!v§);
            if(!(_loc12_ && param1))
            {
               if(§§pop())
               {
                  if(_loc12_ && _loc2_)
                  {
                     continue;
                  }
                  addr82:
                  this.§]!v§.§8X§(_loc6_.§;!W§);
                  if(_loc12_)
                  {
                     continue;
                  }
               }
               this.§7! §(_loc6_.§;!W§);
               continue;
            }
            §§goto(addr82);
         }
         var _loc3_:b2ControllerEdge = param1.§+q§;
         if(!(_loc12_ && _loc2_))
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§'0§;
               if(_loc13_ || _loc2_)
               {
                  _loc7_.§'" §.§<V§(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§>"#§;
         if(_loc13_)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.§5"&§;
               if(!(_loc12_ && _loc3_))
               {
                  this.§1Y§.§'S§(_loc8_.§0q§);
               }
            }
            if(_loc13_)
            {
               addr167:
               param1.§>"#§ = null;
            }
            var _loc5_:b2Fixture = param1.§^F§;
            if(!_loc12_)
            {
               while(_loc5_)
               {
                  _loc9_ = _loc5_;
                  _loc5_ = _loc5_.§%"@§;
                  if(_loc13_ || this)
                  {
                     §§push(this.§]!v§);
                     if(!_loc12_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§]!v§);
                              addr223:
                              while(true)
                              {
                                 §§pop().§ !i§(_loc9_);
                                 addr225:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr221:
                        }
                        loop5:
                        while(true)
                        {
                           _loc9_.§,K§(this.§1Y§.§"!q§);
                           while(!_loc12_)
                           {
                              if(!_loc12_)
                              {
                                 _loc9_.§'S§();
                                 if(!(_loc12_ && param1))
                                 {
                                    if(true)
                                    {
                                       break loop5;
                                    }
                                    continue loop5;
                                 }
                                 continue;
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr225);
                        }
                        continue;
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr225);
               }
               if(!_loc12_)
               {
                  param1.§^F§ = null;
                  if(_loc13_ || param1)
                  {
                     param1.§<!b§ = 0;
                     loop17:
                     while(true)
                     {
                        §§push(param1.§-!Q§);
                        if(_loc13_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(param1.§-!Q§);
                                 addr316:
                                 while(true)
                                 {
                                    §§pop().§%"@§ = param1.§%"@§;
                                    addr319:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr304:
                           }
                           loop16:
                           while(true)
                           {
                              §§push(param1.§%"@§);
                              if(!_loc12_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc13_)
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§%"@§);
                                          addr287:
                                          while(true)
                                          {
                                             §§pop().§-!Q§ = param1.§-!Q§;
                                             loop11:
                                             while(true)
                                             {
                                                if(!(_loc12_ && _loc3_))
                                                {
                                                   while(param1 == this.§'!7§)
                                                   {
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         this.§'!7§ = param1.§%"@§;
                                                         if(!_loc12_)
                                                         {
                                                            if(_loc12_ && param1)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               continue loop17;
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                   var _loc10_:*;
                                                   §§push((_loc10_ = this).§]!M§);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   if(_loc13_ || param1)
                                                   {
                                                      _loc10_.§]!M§ = _loc11_;
                                                   }
                                                   addr344:
                                                   return;
                                                   addr241:
                                                }
                                                else
                                                {
                                                   §§goto(addr304);
                                                }
                                                §§goto(addr319);
                                             }
                                          }
                                       }
                                       addr285:
                                    }
                                    §§goto(addr344);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr287);
                           }
                        }
                        §§goto(addr316);
                     }
                     addr240:
                  }
               }
               §§goto(addr285);
            }
            §§goto(addr240);
         }
         §§goto(addr167);
      }
      
      public function §?[§(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§?!Q§(param1,null);
         if(_loc8_)
         {
            _loc2_.§-!Q§ = null;
            loop0:
            while(true)
            {
               _loc2_.§%"@§ = this.§3n§;
               if(_loc9_ && this)
               {
                  break;
                  addr43:
               }
               while(true)
               {
                  §§push(this.§3n§);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           addr53:
                           this.§3n§.§-!Q§ = _loc2_;
                           if(_loc8_)
                           {
                              addr28:
                              this.§3n§ = _loc2_;
                              if(_loc8_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(_loc2_.§4"0§);
                                 loop25:
                                 while(true)
                                 {
                                    §§push(§§pop().§3n§);
                                    loop27:
                                    while(true)
                                    {
                                       §§pop().§[g§ = _loc2_.§%!P§;
                                       addr199:
                                       while(true)
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             if(_loc8_ || _loc3_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      addr217:
                                                      continue loop25;
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§`t§);
                                                      addr328:
                                                      addr334:
                                                      while(true)
                                                      {
                                                         §§pop().§ `§ = _loc2_.§4"0§;
                                                      }
                                                      addr334:
                                                      while(true)
                                                      {
                                                         §§pop().§;!W§ = _loc2_;
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§`t§);
                                                   while(_loc8_)
                                                   {
                                                      §§pop().§[g§ = null;
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§`t§);
                                                         if(!_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            continue loop17;
                                                         }
                                                         §§pop().§5"&§ = _loc2_.§8!Z§.§3n§;
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§8!Z§);
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop().§3n§);
                                                               if(_loc8_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr298:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§8!Z§);
                                                                        addr300:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§3n§);
                                                                           addr301:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§[g§ = _loc2_.§`t§;
                                                                              addr304:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr298:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§8!Z§);
                                                                     if(_loc9_ && _loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop().§3n§ = _loc2_.§`t§;
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§%!P§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().§;!W§ = _loc2_;
                                                                           break loop0;
                                                                           addr258:
                                                                           loop10:
                                                                           while(!(_loc9_ && param1))
                                                                           {
                                                                              §§pop().§ `§ = _loc2_.§8!Z§;
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§%!P§);
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§[g§ = null;
                                                                                    continue loop11;
                                                                                    addr254:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§%!P§);
                                                                                       if(_loc9_ && _loc2_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       §§pop().§5"&§ = _loc2_.§4"0§.§3n§;
                                                                                       while(true)
                                                                                       {
                                                                                          addr162:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.§4"0§);
                                                                                             addr165:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§3n§);
                                                                                                if(_loc8_ || this)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop27;
                                                                                             }
                                                                                             §§goto(addr301);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr300);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr334);
                                                }
                                             }
                                             §§goto(addr316);
                                          }
                                          §§goto(addr304);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr298);
                     }
                     §§goto(addr28);
                  }
                  §§goto(addr53);
               }
               if(_loc9_ && _loc3_)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr43);
               }
               var _loc6_:*;
               §§push((_loc6_ = this).§0!$§);
               if(_loc8_ || this)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(!(_loc9_ && this))
               {
                  _loc6_.§0!$§ = _loc7_;
               }
               if(_loc8_)
               {
                  §§goto(addr334);
                  §§push(_loc2_.§`t§);
               }
               §§goto(addr298);
            }
            while(true)
            {
               §§goto(addr258);
            }
         }
         §§goto(addr254);
      }
      
      public function §7! §(param1:b2Joint) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§6!p§);
         if(_loc8_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc9_)
         {
            §§push(param1.§-!Q§);
            if(!(_loc9_ && this))
            {
               if(§§pop())
               {
                  addr91:
                  while(true)
                  {
                     §§push(param1.§-!Q§);
                     addr93:
                     while(true)
                     {
                        §§pop().§%"@§ = param1.§%"@§;
                        addr96:
                        while(true)
                        {
                        }
                     }
                  }
                  addr91:
               }
               loop0:
               while(true)
               {
                  §§push(param1.§%"@§);
                  if(_loc8_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(_loc8_)
                           {
                              §§push(param1.§%"@§);
                              while(true)
                              {
                                 §§pop().§-!Q§ = param1.§-!Q§;
                                 addr80:
                                 while(true)
                                 {
                                 }
                              }
                              addr77:
                           }
                           else
                           {
                              §§goto(addr91);
                           }
                           addr51:
                           if(!(_loc8_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue loop0;
                           }
                           addr97:
                           var _loc3_:b2Body = param1.§8!Z§;
                           var _loc4_:b2Body = param1.§4"0§;
                           if(!(_loc9_ && _loc3_))
                           {
                              _loc3_.SetAwake(true);
                              _loc4_.SetAwake(true);
                              addr445:
                              addr441:
                              §§push(param1.§`t§.§[g§);
                              if(_loc8_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    addr435:
                                    param1.§`t§.§[g§.§5"&§ = param1.§`t§.§5"&§;
                                    addr429:
                                    addr432:
                                    addr431:
                                 }
                                 addr408:
                                 addr407:
                                 if(param1.§`t§.§5"&§)
                                 {
                                    addr415:
                                    param1.§`t§.§5"&§.§[g§ = param1.§`t§.§[g§;
                                    addr412:
                                    addr409:
                                    addr411:
                                 }
                                 §§push(param1.§`t§);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          if(§§pop() == _loc3_.§3n§)
                                          {
                                             addr398:
                                             _loc3_.§3n§ = param1.§`t§.§5"&§;
                                          }
                                          addr359:
                                          §§push(param1.§`t§);
                                          if(_loc8_)
                                          {
                                             addr362:
                                             §§pop().§[g§ = null;
                                             addr363:
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(param1.§`t§);
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      §§push(null);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§pop().§5"&§ = §§pop();
                                                         addr344:
                                                         if(!_loc9_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  addr286:
                                                                  §§push(param1.§%!P§.§[g§);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           addr294:
                                                                           §§push(param1.§%!P§.§[g§);
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              §§push(param1.§%!P§.§5"&§);
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 §§pop().§5"&§ = §§pop();
                                                                                 addr313:
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr255:
                                                                                       §§push(param1.§%!P§.§5"&§);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(_loc8_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr266:
                                                                                                §§push(param1.§%!P§.§5"&§);
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   §§push(param1.§%!P§.§[g§);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§pop().§[g§ = §§pop();
                                                                                                      addr199:
                                                                                                      addr282:
                                                                                                      §§push(param1.§%!P§);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               if(§§pop() == _loc4_.§3n§)
                                                                                                               {
                                                                                                                  addr213:
                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           _loc4_.§3n§ = param1.§%!P§.§5"&§;
                                                                                                                           if(!(_loc9_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr166:
                                                                                                                              §§push(param1.§%!P§);
                                                                                                                              if(!(_loc9_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr174:
                                                                                                                                 §§pop().§[g§ = null;
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                addr134:
                                                                                                                                                §§push(param1.§%!P§);
                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(null);
                                                                                                                                                      if(!(_loc9_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§pop().§5"&§ = §§pop();
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            b2Joint.§'S§(param1,null);
                                                                                                                                                            if(_loc8_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr134);
                                                                                                                                                                  }
                                                                                                                                                                  var _loc6_:*;
                                                                                                                                                                  §§push((_loc6_ = this).§0!$§);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                  }
                                                                                                                                                                  var _loc7_:* = §§pop();
                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     _loc6_.§0!$§ = _loc7_;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr468);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr313);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr468);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr481);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr174);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr199);
                                                                                                                                                }
                                                                                                                                                §§goto(addr166);
                                                                                                                                             }
                                                                                                                                             §§goto(addr445);
                                                                                                                                          }
                                                                                                                                          §§goto(addr429);
                                                                                                                                       }
                                                                                                                                       §§goto(addr282);
                                                                                                                                    }
                                                                                                                                    §§goto(addr213);
                                                                                                                                 }
                                                                                                                                 §§goto(addr468);
                                                                                                                              }
                                                                                                                              §§goto(addr294);
                                                                                                                           }
                                                                                                                           addr468:
                                                                                                                           if(_loc2_ == false)
                                                                                                                           {
                                                                                                                              addr481:
                                                                                                                              _loc5_ = _loc4_.§0!@§();
                                                                                                                              addr507:
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc5_.§ `§ == _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       _loc5_.§0q§.§6"F§();
                                                                                                                                       if(_loc8_ || _loc3_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr509);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 _loc5_ = _loc5_.§5"&§;
                                                                                                                                 §§goto(addr507);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr509:
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr398);
                                                                                                                     }
                                                                                                                     §§goto(addr344);
                                                                                                                  }
                                                                                                                  §§goto(addr266);
                                                                                                               }
                                                                                                               §§goto(addr166);
                                                                                                            }
                                                                                                            §§goto(addr286);
                                                                                                         }
                                                                                                         §§goto(addr255);
                                                                                                      }
                                                                                                      §§goto(addr266);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§goto(addr408);
                                                                                             }
                                                                                             §§goto(addr199);
                                                                                          }
                                                                                          §§goto(addr412);
                                                                                       }
                                                                                       §§goto(addr266);
                                                                                       addr322:
                                                                                    }
                                                                                    §§goto(addr409);
                                                                                 }
                                                                                 §§goto(addr415);
                                                                              }
                                                                              §§goto(addr435);
                                                                           }
                                                                           §§goto(addr432);
                                                                        }
                                                                        §§goto(addr313);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr441);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   §§goto(addr445);
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr435);
                                          }
                                          §§goto(addr408);
                                       }
                                       §§goto(addr431);
                                    }
                                    §§goto(addr407);
                                 }
                                 §§goto(addr411);
                              }
                              §§goto(addr435);
                           }
                           §§goto(addr322);
                        }
                        §§goto(addr96);
                     }
                     for(; param1 == this.§3n§; §§goto(addr80))
                     {
                        if(!_loc9_)
                        {
                           this.§3n§ = param1.§%"@§;
                        }
                        if(!(_loc8_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr91);
      }
      
      public function §`]§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            param1.§%"@§ = this.§+q§;
            loop0:
            while(true)
            {
               param1.§-!Q§ = null;
               loop1:
               while(true)
               {
                  addr57:
                  addr104:
                  loop2:
                  while(true)
                  {
                     this.§+q§ = param1;
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           param1.m_world = this;
                           if(_loc4_ && param1)
                           {
                              break loop2;
                           }
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        addr63:
                     }
                     break;
                  }
                  return param1;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §^!H§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.§-!Q§);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr90:
                     param1.§-!Q§.§%"@§ = param1.§%"@§;
                     if(_loc4_ && this)
                     {
                     }
                  }
                  §§goto(addr131);
               }
               loop0:
               while(true)
               {
                  §§push(param1.§%"@§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(param1.§%"@§);
                           addr65:
                           while(true)
                           {
                              §§pop().§-!Q§ = param1.§-!Q§;
                              if(!_loc5_)
                              {
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr32);
                        }
                     }
                     while(this.§+q§ == param1)
                     {
                        if(!(_loc4_ && param1))
                        {
                           addr32:
                           if(_loc4_ && param1)
                           {
                              continue loop1;
                           }
                           this.§+q§ = param1.§%"@§;
                           if(!_loc4_)
                           {
                              if(false)
                              {
                                 continue loop0;
                              }
                              addr111:
                              var _loc2_:*;
                              §§push((_loc2_ = this).§,"4§);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc4_)
                              {
                                 _loc2_.§,"4§ = _loc3_;
                              }
                           }
                           §§goto(addr131);
                        }
                        addr131:
                        return;
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr65);
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §>!a§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1.m_world != this)
            {
               if(!_loc4_)
               {
                  throw new Error("Controller can only be a member of one world");
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  param1.§%"@§ = this.§+q§;
                  loop1:
                  while(true)
                  {
                     param1.§-!Q§ = null;
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§+q§);
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc4_ && this)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§+q§);
                                       addr69:
                                       while(true)
                                       {
                                          §§pop().§-!Q§ = param1;
                                          if(_loc4_ && _loc2_)
                                          {
                                          }
                                          break loop3;
                                       }
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 this.§+q§ = param1;
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    if(false)
                                    {
                                       continue loop3;
                                    }
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§,"4§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc3_:* = §§pop();
                                    if(_loc5_)
                                    {
                                       _loc2_.§,"4§ = _loc3_;
                                    }
                                    if(_loc5_ || param1)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr69);
                        }
                     }
                  }
               }
            }
            param1.m_world = this;
            addr136:
            return param1;
         }
         §§goto(addr67);
      }
      
      public function §%g§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.§;!R§();
            while(true)
            {
               §§push(param1.§%"@§);
               if(_loc5_ && _loc3_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     continue;
                  }
                  addr112:
                  while(true)
                  {
                  }
                  addr112:
               }
               loop2:
               while(true)
               {
                  §§push(param1.§-!Q§);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1.§-!Q§);
                           addr74:
                           while(true)
                           {
                              §§pop().§%"@§ = param1.§%"@§;
                              if(!_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    addr19:
                                    while(param1 == this.§+q§)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          continue loop3;
                                       }
                                       addr49:
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§,"4§);
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc3_:* = §§pop();
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       _loc2_.§,"4§ = _loc3_;
                                    }
                                 }
                              }
                              addr151:
                              return;
                           }
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr74);
               }
            }
            §§pop().§-!Q§ = param1.§-!Q§;
            §§goto(addr112);
         }
         §§goto(addr81);
      }
      
      public function §1=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §`!1§ = param1;
         }
      }
      
      public function §;h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §&!j§ = param1;
         }
      }
      
      public function §;!=§() : int
      {
         return this.§]!M§;
      }
      
      public function §'m§() : int
      {
         return this.§0!$§;
      }
      
      public function §,!N§() : int
      {
         return this.§3M§;
      }
      
      public function §%$§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!m§ = param1;
         }
      }
      
      public function §0u§() : b2Vec2
      {
         return this.§8!m§;
      }
      
      public function §^!a§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §4$§(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§`">§);
            if(!_loc5_)
            {
               §§push(§§pop() & §3g§);
            }
            if(§§pop())
            {
               if(!_loc5_)
               {
                  this.§1Y§.§>!=§();
                  addr75:
                  while(true)
                  {
                     addr45:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§`">§);
                        if(!_loc5_)
                        {
                           §§push(§3g§);
                           if(_loc6_ || this)
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§`">§ = §§pop();
                        addr62:
                        while(true)
                        {
                        }
                     }
                  }
                  addr75:
               }
               §§goto(addr75);
            }
            while(true)
            {
               §§push(this);
               §§push(this.§`">§);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() | §+"F§);
               }
               §§pop().§`">§ = §§pop();
               if(!(_loc6_ || this))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr75);
               }
               §§goto(addr45);
            }
            var _loc4_:b2TimeStep;
            (_loc4_ = s_timestep2).§4"?§ = param1;
            if(!(_loc5_ && param2))
            {
               _loc4_.§ get§ = param2;
               while(true)
               {
                  _loc4_.§7!;§ = param3;
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        addr317:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              _loc4_.§,Q§ = 0;
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(this.§&^§);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§ ,§ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          _loc4_.§'i§ = §`!1§;
                                          loop8:
                                          while(true)
                                          {
                                             this.§1Y§.§ ! §();
                                             loop9:
                                             while(!_loc5_)
                                             {
                                                §§push(_loc4_.§4"?§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr258:
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§#!6§(_loc4_);
                                                            addr262:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr259:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§&!j§);
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                        continue loop9;
                                                                        addr219:
                                                                     }
                                                                     addr121:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.§4"?§);
                                                                        if(!(_loc6_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue;
                                                                  addr217:
                                                               }
                                                               addr250:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                               addr250:
                                                               while(_loc6_)
                                                               {
                                                                  §§push(_loc4_.§4"?§);
                                                                  continue loop10;
                                                                  §§goto(addr250);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               addr323:
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             _loc4_.§,Q§ = 1 / param1;
                                          }
                                          addr318:
                                       }
                                       §§goto(addr323);
                                    }
                                 }
                              }
                           }
                           §§goto(addr318);
                        }
                     }
                  }
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr232);
         }
         §§goto(addr75);
      }
      
      public function §4,§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Body = this.§'!7§;
         while(_loc1_)
         {
            _loc1_.§&e§.§;v§();
            if(_loc2_)
            {
               break;
            }
            _loc1_.§;!+§ = 0;
            if(_loc2_ && this)
            {
               break;
            }
            _loc1_ = _loc1_.§%"@§;
         }
      }
      
      public function §?!U§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§0!K§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(!_loc23_)
         {
            §§push(this.§8!?§);
            if(_loc24_)
            {
               if(§§pop() == null)
               {
                  if(_loc24_ || _loc1_)
                  {
                     §§goto(addr73);
                  }
               }
               §§push(this.§8!?§);
               if(_loc24_ || _loc3_)
               {
                  §§pop().§0`§.graphics.clear();
                  §§push(this.§8!?§);
               }
            }
            §§push(§§pop().§&K§());
            if(_loc24_)
            {
               §§push(uint(§§pop()));
            }
            var _loc1_:* = §§pop();
            var _loc8_:b2Vec2 = new b2Vec2();
            var _loc9_:b2Vec2 = new b2Vec2();
            var _loc10_:b2Vec2 = new b2Vec2();
            var _loc12_:b2AABB = new b2AABB();
            var _loc13_:b2AABB = new b2AABB();
            var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            var _loc15_:b2Color = new b2Color(0,0,0);
            if(_loc24_ || _loc1_)
            {
               if(_loc1_ & b2DebugDraw.§6!e§)
               {
                  addr145:
                  _loc3_ = this.§'!7§;
                  while(_loc3_)
                  {
                     _loc11_ = _loc3_.m_xf;
                     _loc4_ = _loc3_.GetFixtureList();
                     if(_loc24_ || _loc2_)
                     {
                        loop14:
                        for(; _loc4_; _loc4_ = _loc4_.§%"@§)
                        {
                           _loc5_ = _loc4_.GetShape();
                           if(!(_loc23_ && _loc2_))
                           {
                              §§push(_loc3_.IsActive());
                              while(true)
                              {
                                 §§push(false);
                                 loop16:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc3_.§"r§());
                                       loop17:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(_loc3_.§"r§());
                                             if(!_loc24_)
                                             {
                                                continue loop17;
                                             }
                                             §§push(b2Body.b2_kinematicBody);
                                             if(!(_loc24_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                §§push(_loc3_.IsAwake());
                                                if(_loc23_)
                                                {
                                                   break loop16;
                                                }
                                                §§push(false);
                                                if(_loc23_ && this)
                                                {
                                                   continue loop16;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   _loc15_.Set(0.9,0.7,0.7);
                                                   addr198:
                                                   if(!(_loc23_ && _loc1_))
                                                   {
                                                      this.§#",§(_loc5_,_loc11_,_loc15_);
                                                      if(_loc23_)
                                                      {
                                                         §§goto(addr198);
                                                      }
                                                      if(false)
                                                      {
                                                         addr190:
                                                      }
                                                      continue loop14;
                                                   }
                                                   addr212:
                                                   if(!_loc23_)
                                                   {
                                                      if(_loc23_ && _loc1_)
                                                      {
                                                         addr238:
                                                         _loc15_.Set(0.6,0.6,0.6);
                                                         addr243:
                                                         if(_loc24_ || _loc3_)
                                                         {
                                                            if(!(_loc23_ && _loc3_))
                                                            {
                                                               this.§#",§(_loc5_,_loc11_,_loc15_);
                                                               §§goto(addr212);
                                                            }
                                                            this.§#",§(_loc5_,_loc11_,_loc15_);
                                                            addr303:
                                                         }
                                                         if(!_loc24_)
                                                         {
                                                            addr291:
                                                            if(_loc24_ || this)
                                                            {
                                                               _loc15_.Set(0.5,0.5,0.9);
                                                               §§goto(addr303);
                                                            }
                                                            addr354:
                                                            _loc15_.Set(0.5,0.5,0.3);
                                                            this.§#",§(_loc5_,_loc11_,_loc15_);
                                                            continue loop14;
                                                            addr359:
                                                            addr349:
                                                         }
                                                         if(_loc24_ || _loc1_)
                                                         {
                                                            continue loop14;
                                                            addr273:
                                                         }
                                                         addr342:
                                                         addr310:
                                                         if(_loc24_ || _loc1_)
                                                         {
                                                            if(_loc23_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc23_)
                                                            {
                                                               if(!(_loc23_ && this))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         this.§#",§(_loc5_,_loc11_,_loc15_);
                                                         §§goto(addr310);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr291);
                                          }
                                          _loc15_.Set(0.5,0.9,0.5);
                                          §§goto(addr342);
                                       }
                                    }
                                    §§goto(addr354);
                                 }
                              }
                           }
                           §§goto(addr273);
                        }
                     }
                     _loc3_ = _loc3_.§%"@§;
                  }
               }
               §§push(_loc1_);
               if(!_loc23_)
               {
                  §§push(b2DebugDraw.§]!L§);
                  if(!_loc23_)
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc24_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc23_ && this))
                           {
                              _loc6_ = this.§3n§;
                              if(!(_loc23_ && _loc1_))
                              {
                                 while(_loc6_)
                                 {
                                    this.§ F§(_loc6_);
                                    if(!_loc24_)
                                    {
                                       break;
                                    }
                                    _loc6_ = _loc6_.§%"@§;
                                 }
                                 addr424:
                                 §§push(_loc1_);
                                 if(_loc24_ || this)
                                 {
                                    §§push(b2DebugDraw.§<"3§);
                                    if(!_loc23_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(_loc24_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc24_)
                                             {
                                                _loc16_ = this.§+q§;
                                                if(!(_loc23_ && _loc2_))
                                                {
                                                   while(_loc16_)
                                                   {
                                                      _loc16_.§!Y§(this.§8!?§);
                                                      if(_loc23_ && this)
                                                      {
                                                         break;
                                                      }
                                                      _loc16_ = _loc16_.§%"@§;
                                                   }
                                                   addr472:
                                                   §§push(_loc1_);
                                                   if(!_loc23_)
                                                   {
                                                      §§push(b2DebugDraw.§?!J§);
                                                      if(_loc24_)
                                                      {
                                                         addr479:
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc24_ || _loc1_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc24_)
                                                               {
                                                                  _loc15_.Set(0.3,0.9,0.9);
                                                                  if(!_loc23_)
                                                                  {
                                                                     §§push(this.§1Y§);
                                                                     if(_loc24_ || this)
                                                                     {
                                                                        _loc17_ = §§pop().§>"#§;
                                                                        if(_loc24_ || _loc2_)
                                                                        {
                                                                           while(_loc17_)
                                                                           {
                                                                              _loc18_ = _loc17_.§5§();
                                                                              _loc19_ = _loc17_.§]h§();
                                                                              _loc20_ = _loc18_.§["#§().§2"F§();
                                                                              _loc21_ = _loc19_.§["#§().§2"F§();
                                                                              if(_loc24_ || _loc2_)
                                                                              {
                                                                                 this.§8!?§.§ !L§(_loc20_,_loc21_,_loc15_);
                                                                              }
                                                                              _loc17_ = _loc17_.§8!+§();
                                                                           }
                                                                        }
                                                                        §§goto(addr555);
                                                                     }
                                                                     §§goto(addr585);
                                                                  }
                                                               }
                                                               §§goto(addr737);
                                                            }
                                                            addr555:
                                                            §§push(_loc1_);
                                                            if(!(_loc23_ && _loc2_))
                                                            {
                                                               addr563:
                                                               §§push(b2DebugDraw.§8!I§);
                                                               if(!_loc23_)
                                                               {
                                                                  addr567:
                                                                  §§push(§§pop() & §§pop());
                                                                  if(!(_loc23_ && _loc1_))
                                                                  {
                                                                     addr575:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc23_ && this))
                                                                        {
                                                                           addr585:
                                                                           _loc7_ = this.§1Y§.§"!q§;
                                                                           _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                                                           _loc3_ = this.§'!7§;
                                                                           if(_loc24_ || _loc3_)
                                                                           {
                                                                              loop1:
                                                                              for(; _loc3_; while(true)
                                                                              {
                                                                                 _loc3_ = _loc3_.§8!+§();
                                                                                 continue loop1;
                                                                              })
                                                                              {
                                                                                 if(_loc3_.IsActive() != false)
                                                                                 {
                                                                                    _loc4_ = _loc3_.GetFixtureList();
                                                                                    if(!(_loc23_ && _loc2_))
                                                                                    {
                                                                                       while(_loc4_)
                                                                                       {
                                                                                          _loc22_ = _loc7_.§-Z§(_loc4_.§=!;§);
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             _loc14_[0].Set(_loc22_.§!8§.x,_loc22_.§!8§.y);
                                                                                          }
                                                                                          loop3:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc14_[1].Set(_loc22_.§,f§.x,_loc22_.§!8§.y);
                                                                                             while(true)
                                                                                             {
                                                                                                _loc14_[2].Set(_loc22_.§,f§.x,_loc22_.§,f§.y);
                                                                                                loop5:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr664:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc14_[3].Set(_loc22_.§!8§.x,_loc22_.§,f§.y);
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          _loc4_ = _loc4_.§8!+§();
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc24_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr732);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr726);
                                                                           }
                                                                        }
                                                                        §§goto(addr737);
                                                                     }
                                                                     addr732:
                                                                     §§goto(addr736);
                                                                  }
                                                                  addr736:
                                                                  §§goto(addr735);
                                                               }
                                                               addr735:
                                                               §§goto(addr733);
                                                            }
                                                            addr733:
                                                            if(_loc1_ & b2DebugDraw.§8o§)
                                                            {
                                                               addr737:
                                                               _loc3_ = this.§'!7§;
                                                               if(_loc24_)
                                                               {
                                                                  while(_loc3_)
                                                                  {
                                                                     (_loc11_ = §#_§).R = _loc3_.m_xf.R;
                                                                     if(!(_loc23_ && this))
                                                                     {
                                                                        _loc11_.position = _loc3_.§6!j§();
                                                                        if(!(_loc23_ && _loc3_))
                                                                        {
                                                                           this.§8!?§.§#b§(_loc11_);
                                                                        }
                                                                     }
                                                                     _loc3_ = _loc3_.§%"@§;
                                                                  }
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr575);
                                                      }
                                                      §§goto(addr567);
                                                   }
                                                   §§goto(addr563);
                                                }
                                                §§goto(addr472);
                                             }
                                             §§goto(addr737);
                                          }
                                          §§goto(addr472);
                                       }
                                       §§goto(addr575);
                                    }
                                    §§goto(addr479);
                                 }
                                 §§goto(addr732);
                              }
                              §§goto(addr424);
                           }
                           §§goto(addr585);
                        }
                        §§goto(addr424);
                     }
                     §§goto(addr732);
                  }
                  §§goto(addr479);
               }
               §§goto(addr732);
            }
            §§goto(addr145);
         }
         addr73:
      }
      
      public function §]w§(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr130:
               while(true)
               {
                  §§push(§§newactivation());
                  addr115:
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc5_ || param1))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr110:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr112:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §&H§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§pop().§§slot[5] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 loop8:
                                 while(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(§§newactivation());
                                       loop9:
                                       while(_loc5_)
                                       {
                                          §§pop().§§slot[3] = param3;
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop11:
                                             while(true)
                                             {
                                                §§pop().§§slot[5] = function(param1:*):Boolean
                                                {
                                                   var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                                                   if(b2Shape.§3§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
                                                   {
                                                      return callback(_loc2_);
                                                   }
                                                   return true;
                                                };
                                                loop12:
                                                while(_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      addr179:
                                                      while(true)
                                                      {
                                                         if(§§pop() == null)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               loop16:
                                                               while(_loc5_)
                                                               {
                                                                  §§pop().§§slot[3] = new b2Transform();
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                        addr155:
                                                                     }
                                                                     §§push(§§newactivation());
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     continue loop11;
                                                                     addr145:
                                                                     loop22:
                                                                     while(!(_loc6_ && param1))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        loop23:
                                                                        while(_loc5_)
                                                                        {
                                                                           §§pop().§§slot[6] = new b2AABB();
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop15;
                                                                              addr58:
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                           addr34:
                                                                           if(!(_loc5_ || param3))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              addr45:
                                                                              §§pop().§§slot[4].§const§(WorldQueryWrapper,aabb);
                                                                              if(!(_loc5_ || param2))
                                                                              {
                                                                                 addr90:
                                                                                 while(!(_loc6_ && param3))
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc5_ || this))
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§goto(addr34);
                                                                                    §§goto(addr45);
                                                                                 }
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       break loop23;
                                                                                    }
                                                                                    §§goto(addr90);
                                                                                 }
                                                                                 addr90:
                                                                                 continue loop12;
                                                                                 addr173:
                                                                              }
                                                                              §§goto(addr58);
                                                                           }
                                                                           §§goto(addr155);
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr131);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 continue loop6;
                                 if(_loc6_ && param2)
                                 {
                                    continue;
                                 }
                                 §§pop().§§slot[2].ComputeAABB(aabb,transform);
                                 §§goto(addr90);
                              }
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §8",§(param1:Function, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(!(_loc4_ || this))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        for(; !_loc5_; while(true)
                        {
                           if(!(_loc5_ && param2))
                           {
                              continue loop3;
                           }
                           continue loop5;
                        },continue loop3)
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr211:
                              addr191:
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr213:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop5;
                                 }
                              }
                              loop10:
                              while(!(_loc5_ && param1))
                              {
                                 §§push(§§newactivation());
                                 loop11:
                                 for(; _loc4_; while(!(_loc5_ && this))
                                 {
                                    §§pop().§§slot[5] = new b2AABB();
                                    §§goto(addr147);
                                 })
                                 {
                                    §§pop().§§slot[3] = this.§1Y§.§"!q§;
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       continue loop11;
                                       addr147:
                                       loop14:
                                       while(true)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             if(!(_loc4_ || this))
                                             {
                                                break;
                                             }
                                             §§push(§§newactivation());
                                             loop15:
                                             while(!_loc5_)
                                             {
                                                §§push(§§pop().§§slot[5]);
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop().§!8§);
                                                   §§push(p.x);
                                                   if(_loc4_)
                                                   {
                                                      §§push(b2Settings.b2_linearSlop);
                                                      if(!_loc5_)
                                                      {
                                                         addr117:
                                                         §§push(§§pop() - §§pop());
                                                         §§push(p.y);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(§§pop() - b2Settings.b2_linearSlop);
                                                         }
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      loop17:
                                                      while(!_loc5_)
                                                      {
                                                         §§push(§§newactivation());
                                                         loop18:
                                                         for(; _loc4_; §§push(§§newactivation()),if(!(_loc4_ || param2))
                                                         {
                                                            continue;
                                                         },if(!_loc4_)
                                                         {
                                                            continue loop5;
                                                         },§§goto(addr36))
                                                         {
                                                            §§push(§§pop().§§slot[5]);
                                                            if(_loc5_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§push(§§pop().§,f§);
                                                            §§push(p.x);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§push(b2Settings.b2_linearSlop);
                                                               if(_loc4_)
                                                               {
                                                                  addr77:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(p.y);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr82:
                                                                     §§push(§§pop() + b2Settings.b2_linearSlop);
                                                                  }
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop17;
                                                                     addr36:
                                                                     §§pop().§§slot[3].§const§(WorldQueryWrapper,aabb);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr82);
                                                            }
                                                            §§goto(addr77);
                                                         }
                                                         continue loop15;
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr117);
                                                }
                                             }
                                             continue loop11;
                                          }
                                          continue loop12;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr211);
                              }
                           }
                        }
                        continue loop0;
                     }
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     §§pop().§§slot[4] = function(param1:*):Boolean
                     {
                        var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
                        if(_loc2_.TestPoint(p))
                        {
                           return callback(_loc2_);
                        }
                        return true;
                     };
                     §§goto(addr191);
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(_loc5_)
                     {
                        §§pop().§§slot[5] = §§pop();
                        while(!(_loc6_ && param3))
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(null);
                              if(!(_loc5_ || param1))
                              {
                                 break;
                              }
                              §§pop().§§slot[6] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 addr171:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    addr173:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       addr159:
                                       while(true)
                                       {
                                          §§pop().§§slot[2] = param2;
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            if(!(_loc5_ || param1))
            {
               continue;
            }
            §§pop().§§slot[7] = new b2RayCastInput(point1,point2);
            §§goto(addr111);
         }
      }
      
      public function §4"4§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  addr111:
                  while(true)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        addr99:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr101:
                           while(_loc5_ || this)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §&!b§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(_loc5_)
                  {
                     §§push(null);
                     if(!(_loc4_ && param2))
                     {
                        §§pop().§§slot[4] = §§pop();
                        while(!(_loc4_ && _loc3_))
                        {
                           §§push(§§newactivation());
                           while(!(_loc4_ && param1))
                           {
                              §§pop().§§slot[1] = param1;
                              loop6:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().§§slot[2] = param2;
                                    addr103:
                                    while(_loc5_)
                                    {
                                       §§push(§§newactivation());
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           continue loop3;
                        }
                        continue loop2;
                        addr142:
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §8F§() : b2Body
      {
         return this.§'!7§;
      }
      
      public function §1$§() : b2Joint
      {
         return this.§3n§;
      }
      
      public function §0!@§() : b2Contact
      {
         return this.§>"#§;
      }
      
      public function §8Z§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§`">§);
         if(!_loc2_)
         {
            §§push(§+"F§);
            if(_loc1_ || _loc1_)
            {
               addr29:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr29);
      }
      
      b2internal function §#!6§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§+q§;
         while(_loc3_)
         {
            _loc3_.§4$§(param1);
            if(_loc18_)
            {
               break;
            }
            _loc3_ = _loc3_.§%"@§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§ !N§).§`!r§(this.§]!M§,this.§3M§,this.§0!$§,null,this.§1Y§.§&!Y§,this.§<8§);
         _loc2_ = this.§'!7§;
         if(_loc17_)
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§`">§ &= ~b2Body.§1!t§;
               if(_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§%"@§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§>"#§;
            if(!_loc18_)
            {
               while(_loc5_)
               {
                  _loc5_.§`">§ &= ~b2Contact.§1!t§;
                  if(_loc18_)
                  {
                     break;
                  }
                  _loc5_ = _loc5_.§%"@§;
               }
            }
            var _loc6_:b2Joint = this.§3n§;
            if(!(_loc18_ && _loc2_))
            {
               while(_loc6_)
               {
                  _loc6_.§`3§ = false;
                  if(!(_loc17_ || param1))
                  {
                     break;
                  }
                  _loc6_ = _loc6_.§%"@§;
               }
            }
            §§push(this.§]!M§);
            if(_loc17_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Vector.<b2Body> = this.§2A§;
            var _loc9_:b2Body = this.§'!7§;
            if(_loc17_ || param1)
            {
               loop4:
               while(true)
               {
                  if(!_loc9_)
                  {
                     if(_loc17_ || _loc3_)
                     {
                        §§push(0);
                        if(!(_loc18_ && _loc2_))
                        {
                           addr748:
                           _loc11_ = §§pop();
                           if(_loc17_)
                           {
                              addr779:
                              if(_loc11_ < _loc8_.length)
                              {
                                 if(_loc8_[_loc11_])
                                 {
                                    _loc8_[_loc11_] = null;
                                    if(!(_loc18_ && param1))
                                    {
                                       addr776:
                                       _loc11_++;
                                       if(!_loc18_)
                                       {
                                          §§goto(addr779);
                                       }
                                       addr783:
                                       _loc2_ = this.§'!7§;
                                       if(!(_loc18_ && this))
                                       {
                                          addr881:
                                          if(_loc2_)
                                          {
                                             §§push(_loc2_.IsAwake());
                                             if(_loc17_ || this)
                                             {
                                                §§push(false);
                                                if(!(_loc18_ && this))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc17_ || _loc3_)
                                                            {
                                                               §§goto(addr832);
                                                            }
                                                         }
                                                         §§goto(addr846);
                                                      }
                                                   }
                                                   §§goto(addr832);
                                                }
                                                §§goto(addr845);
                                             }
                                             §§goto(addr832);
                                          }
                                          if(!_loc18_)
                                          {
                                             addr832:
                                             §§pop();
                                             if(!(_loc18_ && this))
                                             {
                                                §§push(_loc2_.IsActive());
                                                if(!_loc18_)
                                                {
                                                   §§goto(addr846);
                                                }
                                                addr846:
                                                addr845:
                                                if(§§pop() == false)
                                                {
                                                   if(!(_loc18_ && _loc3_))
                                                   {
                                                      addr877:
                                                      _loc2_ = _loc2_.§%"@§;
                                                      §§goto(addr881);
                                                   }
                                                   §§goto(addr888);
                                                }
                                                if(_loc2_.§"r§() == b2Body.b2_staticBody)
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      addr872:
                                                      §§goto(addr877);
                                                   }
                                                   §§goto(addr888);
                                                }
                                                _loc2_.§^!X§();
                                                if(!_loc18_)
                                                {
                                                   §§goto(addr877);
                                                }
                                                §§goto(addr888);
                                             }
                                             this.§1Y§.§>!=§();
                                             §§goto(addr888);
                                          }
                                          addr888:
                                          return;
                                       }
                                       §§goto(addr872);
                                    }
                                    §§goto(addr783);
                                 }
                                 if(!(_loc18_ && _loc2_))
                                 {
                                    addr764:
                                 }
                              }
                              §§goto(addr783);
                              addr751:
                           }
                           §§goto(addr776);
                        }
                     }
                     §§goto(addr779);
                  }
                  else
                  {
                     §§push(_loc9_.§`">§);
                     loop5:
                     while(true)
                     {
                        §§push(b2Body.§1!t§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(_loc9_.IsAwake());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(false);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc17_)
                                       {
                                          §§push(§§pop());
                                          loop10:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr281:
                                                   while(true)
                                                   {
                                                      addr194:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_.IsActive());
                                                         if(_loc18_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc17_ || _loc3_)
                                                         {
                                                            §§push(false);
                                                            if(!_loc18_)
                                                            {
                                                               if(!(_loc18_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  break;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop14;
                                                      }
                                                      if(_loc18_)
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                addr280:
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(_loc9_.§"r§());
                                                   if(_loc17_)
                                                   {
                                                      §§push(b2Body.b2_staticBody);
                                                      if(_loc17_ || _loc3_)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            _loc4_.§;!R§();
                                                            if(_loc17_ || _loc2_)
                                                            {
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(!_loc18_)
                                                                        {
                                                                           if(!(_loc18_ && _loc3_))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr194);
                                                                              }
                                                                              else
                                                                              {
                                                                                 var _loc15_:*;
                                                                                 _loc8_[_loc15_ = _loc10_++] = _loc9_;
                                                                                 if(_loc17_ || _loc2_)
                                                                                 {
                                                                                    _loc9_.§`">§ |= b2Body.§1!t§;
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr638:
                                                                                       §§push(_loc10_);
                                                                                       if(_loc17_ || param1)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!(_loc18_ && this))
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                _loc2_ = _loc8_[--_loc10_];
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   _loc4_.§53§(_loc2_);
                                                                                                   if(_loc17_ || param1)
                                                                                                   {
                                                                                                      if(_loc2_.IsAwake() == false)
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr336:
                                                                                                            _loc2_.SetAwake(true);
                                                                                                            if(_loc18_ && param1)
                                                                                                            {
                                                                                                            }
                                                                                                            addr351:
                                                                                                            §§goto(addr638);
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc2_.§"r§() == b2Body.b2_staticBody)
                                                                                                      {
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      _loc13_ = _loc2_.§>"#§;
                                                                                                      if(_loc17_ || _loc3_)
                                                                                                      {
                                                                                                         addr553:
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            addr555:
                                                                                                            _loc14_ = _loc2_.§3n§;
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr636:
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  §§goto(addr638);
                                                                                                               }
                                                                                                               if(_loc14_.§;!W§.§`3§ == true)
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     addr632:
                                                                                                                     _loc14_ = _loc14_.§5"&§;
                                                                                                                     §§goto(addr636);
                                                                                                                     addr570:
                                                                                                                  }
                                                                                                                  §§goto(addr638);
                                                                                                               }
                                                                                                               if((_loc12_ = _loc14_.§ `§).IsActive() == false)
                                                                                                               {
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§goto(addr632);
                                                                                                                  }
                                                                                                                  addr588:
                                                                                                                  _loc14_.§;!W§.§`3§ = true;
                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc12_.§`">§ & b2Body.§1!t§)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           addr607:
                                                                                                                        }
                                                                                                                        §§goto(addr632);
                                                                                                                     }
                                                                                                                     var _loc16_:*;
                                                                                                                     _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        _loc12_.§`">§ |= b2Body.§1!t§;
                                                                                                                     }
                                                                                                                     §§goto(addr632);
                                                                                                                  }
                                                                                                                  §§goto(addr607);
                                                                                                               }
                                                                                                               _loc4_.§^!g§(_loc14_.§;!W§);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§goto(addr588);
                                                                                                               }
                                                                                                               §§goto(addr607);
                                                                                                            }
                                                                                                            §§goto(addr570);
                                                                                                         }
                                                                                                         if(_loc13_.§0q§.§`">§ & b2Contact.§1!t§)
                                                                                                         {
                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                            {
                                                                                                               addr549:
                                                                                                               _loc13_ = _loc13_.§5"&§;
                                                                                                               §§goto(addr553);
                                                                                                            }
                                                                                                            addr432:
                                                                                                            addr516:
                                                                                                            §§push(_loc13_.§0q§.§#e§());
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               addr451:
                                                                                                               §§push(§§pop() == false);
                                                                                                               if(_loc17_ || _loc2_)
                                                                                                               {
                                                                                                                  addr461:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr469:
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr398:
                                                                                                                           addr472:
                                                                                                                           §§push(_loc13_.§0q§);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§[l§());
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(false);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       if(_loc17_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr420:
                                                                                                                                          addr419:
                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                          {
                                                                                                                                             addr421:
                                                                                                                                             §§goto(addr549);
                                                                                                                                          }
                                                                                                                                          _loc4_.§1!@§(_loc13_.§0q§);
                                                                                                                                          addr426:
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc13_.§0q§);
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§`">§ = _loc13_.§0q§.§`">§ | b2Contact.§1!t§;
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc17_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr398);
                                                                                                                                                               }
                                                                                                                                                               if((_loc12_ = _loc13_.§ `§).§`">§ & b2Body.§1!t§)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr549);
                                                                                                                                                               }
                                                                                                                                                               _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  _loc12_.§`">§ |= b2Body.§1!t§;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr549);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr421);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr426);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr555);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr553);
                                                                                                                                                }
                                                                                                                                                §§goto(addr432);
                                                                                                                                             }
                                                                                                                                             §§goto(addr398);
                                                                                                                                          }
                                                                                                                                          §§goto(addr472);
                                                                                                                                       }
                                                                                                                                       §§goto(addr451);
                                                                                                                                    }
                                                                                                                                    §§goto(addr461);
                                                                                                                                 }
                                                                                                                                 §§goto(addr469);
                                                                                                                              }
                                                                                                                              §§goto(addr420);
                                                                                                                           }
                                                                                                                           addr492:
                                                                                                                           §§push(§§pop().§ !,§());
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(_loc17_ || _loc2_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr513:
                                                                                                                                 §§pop();
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr516);
                                                                                                                                 }
                                                                                                                                 §§goto(addr555);
                                                                                                                              }
                                                                                                                              addr512:
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr513);
                                                                                                                              }
                                                                                                                              §§goto(addr461);
                                                                                                                           }
                                                                                                                           §§goto(addr512);
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr513);
                                                                                                                     }
                                                                                                                     §§goto(addr419);
                                                                                                                  }
                                                                                                                  §§goto(addr512);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr469);
                                                                                                         }
                                                                                                         §§goto(addr492);
                                                                                                         §§push(_loc13_.§0q§);
                                                                                                      }
                                                                                                      §§goto(addr398);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr336);
                                                                                             }
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                _loc4_.§#!6§(param1,this.§8!m§,this.§>!L§);
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                }
                                                                                                addr719:
                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§goto(addr751);
                                                                                             }
                                                                                             §§push(0);
                                                                                             if(_loc17_ || _loc2_)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                if(_loc17_ || param1)
                                                                                                {
                                                                                                   addr716:
                                                                                                   §§push(_loc11_);
                                                                                                   §§push(_loc4_.§]!M§);
                                                                                                }
                                                                                                §§goto(addr719);
                                                                                             }
                                                                                             §§goto(addr716);
                                                                                          }
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             _loc2_ = _loc4_.§1!l§[_loc11_];
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                if(_loc2_.§"r§() == b2Body.b2_staticBody)
                                                                                                {
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      _loc2_.§`">§ &= ~b2Body.§1!t§;
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr714:
                                                                                                         _loc11_++;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr716);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr714);
                                                                                          }
                                                                                          §§goto(addr719);
                                                                                       }
                                                                                       §§goto(addr716);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr719);
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  §§goto(addr748);
                                                                  §§goto(addr776);
                                                               }
                                                               else
                                                               {
                                                                  addr271:
                                                                  while(true)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  addr271:
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop5;
                                                }
                                                if(_loc17_ || this)
                                                {
                                                   if(_loc17_ || param1)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr281);
                                                }
                                                else
                                                {
                                                   §§goto(addr779);
                                                }
                                             }
                                             §§goto(addr764);
                                          }
                                       }
                                       §§goto(addr280);
                                    }
                                 }
                              }
                              §§goto(addr271);
                           }
                        }
                     }
                  }
                  §§goto(addr764);
               }
            }
            §§goto(addr271);
         }
         §§goto(addr85);
      }
      
      b2internal function §`!!§(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:b2ContactEdge = null;
         var _loc8_:b2Joint = null;
         var _loc11_:b2Contact = null;
         var _loc12_:b2Contact = null;
         var _loc13_:* = NaN;
         var _loc14_:b2Body = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§ !N§).§`!r§(this.§]!M§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§1Y§.§&!Y§,this.§<8§);
         var _loc10_:Vector.<b2Body> = §`"2§;
         _loc2_ = this.§'!7§;
         while(_loc2_)
         {
            _loc2_.§`">§ &= ~b2Body.§1!t§;
            if(_loc24_)
            {
               _loc2_.m_sweep.§0!O§ = 0;
               if(_loc23_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§%"@§;
         }
         _loc11_ = this.§>"#§;
         if(_loc24_)
         {
            while(_loc11_)
            {
               §§push(_loc11_);
               §§push(_loc11_.§`">§);
               §§push(b2Contact.§?8§ | b2Contact.§1!t§);
               if(_loc24_ || _loc2_)
               {
                  §§push(~§§pop());
               }
               §§pop().§`">§ = §§pop() & §§pop();
               if(_loc23_ && _loc3_)
               {
                  break;
               }
               _loc11_ = _loc11_.§%"@§;
            }
         }
         _loc8_ = this.§3n§;
         if(_loc24_ || this)
         {
            while(_loc8_)
            {
               _loc8_.§`3§ = false;
               if(!(_loc24_ || param1))
               {
                  break;
               }
               _loc8_ = _loc8_.§%"@§;
            }
         }
         loop3:
         while(true)
         {
            _loc12_ = null;
            if(_loc24_ || this)
            {
               _loc13_ = Number(1);
            }
            _loc11_ = this.§>"#§;
            if(!(_loc23_ && param1))
            {
               loop4:
               while(true)
               {
                  if(!_loc11_)
                  {
                     if(!(_loc23_ && param1))
                     {
                        addr965:
                        §§push(_loc12_ == null);
                        if(!_loc23_)
                        {
                           addr971:
                           if(!§§pop())
                           {
                              if(_loc24_)
                              {
                                 addr974:
                                 §§pop();
                                 if(_loc24_ || this)
                                 {
                                    addr990:
                                    if(1 - 100 * Number.MIN_VALUE >= _loc13_)
                                    {
                                       addr994:
                                       _loc3_ = _loc12_.§3t§;
                                       _loc4_ = _loc12_.§?!p§;
                                       _loc5_ = _loc3_.m_body;
                                       _loc6_ = _loc4_.m_body;
                                       if(!(_loc23_ && param1))
                                       {
                                          §&"7§.Set(_loc5_.m_sweep);
                                          §3!X§.Set(_loc6_.m_sweep);
                                          addr1169:
                                          if(_loc24_)
                                          {
                                             _loc5_.§61§(_loc13_);
                                             _loc6_.§61§(_loc13_);
                                             _loc12_.§?"!§(this.§1Y§.§&!Y§);
                                             _loc12_.§`">§ &= ~b2Contact.§?8§;
                                             addr1163:
                                             addr1153:
                                             addr1158:
                                             if(_loc24_ || _loc2_)
                                             {
                                                addr1108:
                                                §§push(_loc12_.§ !,§() == true);
                                                if(_loc24_ || this)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc23_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc23_ && this))
                                                         {
                                                            addr1128:
                                                            §§pop();
                                                            addr1129:
                                                            §§push(_loc12_.§#e§());
                                                            if(_loc24_)
                                                            {
                                                               §§push(false);
                                                               if(_loc24_)
                                                               {
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc24_ || this)
                                                                     {
                                                                        if(!(_loc23_ && param1))
                                                                        {
                                                                           addr1087:
                                                                           if(§§pop())
                                                                           {
                                                                              addr1089:
                                                                              if(!_loc23_)
                                                                              {
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    addr1095:
                                                                                    _loc5_.m_sweep.Set(§&"7§);
                                                                                    addr1097:
                                                                                    if(_loc24_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc6_.m_sweep);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          §§pop().Set(§3!X§);
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             addr1037:
                                                                                             _loc5_.§,6§();
                                                                                             if(!(_loc23_ && this))
                                                                                             {
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      _loc6_.§,6§();
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr1037);
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§goto(addr1163);
                                                                                                         }
                                                                                                         §§goto(addr1089);
                                                                                                      }
                                                                                                      addr1182:
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§goto(addr1129);
                                                                                                }
                                                                                                §§goto(addr1097);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1182);
                                                                                       }
                                                                                       §§goto(addr1095);
                                                                                    }
                                                                                    §§goto(addr1153);
                                                                                 }
                                                                                 §§goto(addr1158);
                                                                              }
                                                                              §§goto(addr1163);
                                                                           }
                                                                           addr1180:
                                                                           if(_loc12_.§[l§() == false)
                                                                           {
                                                                              §§goto(addr1182);
                                                                           }
                                                                           else
                                                                           {
                                                                              if((_loc14_ = _loc5_).§"r§() != b2Body.b2_dynamicBody)
                                                                              {
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    _loc14_ = _loc6_;
                                                                                    addr1196:
                                                                                    _loc9_.§;!R§();
                                                                                    if(!(_loc23_ && _loc3_))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          addr1260:
                                                                                          §§push(0);
                                                                                          if(_loc24_ || this)
                                                                                          {
                                                                                             _loc16_ = §§pop();
                                                                                             if(_loc24_ || _loc3_)
                                                                                             {
                                                                                                addr1227:
                                                                                                _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                                _loc14_.§`">§ |= b2Body.§1!t§;
                                                                                                addr1237:
                                                                                                if(!(_loc23_ && param1))
                                                                                                {
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         addr1225:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr1227);
                                                                                                         }
                                                                                                         addr1735:
                                                                                                         if(_loc16_ > 0)
                                                                                                         {
                                                                                                            _loc2_ = _loc10_[_loc15_++];
                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               _loc16_ = §§pop();
                                                                                                               if(_loc24_ || this)
                                                                                                               {
                                                                                                                  addr1300:
                                                                                                                  _loc9_.§53§(_loc2_);
                                                                                                                  addr1304:
                                                                                                                  if(_loc2_.IsAwake() == false)
                                                                                                                  {
                                                                                                                     if(!(_loc23_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc2_.SetAwake(true);
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr1300);
                                                                                                                              }
                                                                                                                              addr1318:
                                                                                                                              if(_loc2_.§"r§() != b2Body.b2_dynamicBody)
                                                                                                                              {
                                                                                                                                 addr1323:
                                                                                                                                 §§goto(addr1735);
                                                                                                                              }
                                                                                                                              _loc7_ = _loc2_.§>"#§;
                                                                                                                              if(_loc24_ || this)
                                                                                                                              {
                                                                                                                                 addr1584:
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    addr1586:
                                                                                                                                    _loc21_ = _loc2_.§3n§;
                                                                                                                                    if(_loc24_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr1733:
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1735);
                                                                                                                                       }
                                                                                                                                       if(_loc9_.§0!$§ == _loc9_.§4c§)
                                                                                                                                       {
                                                                                                                                          if(_loc24_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr1729:
                                                                                                                                             _loc21_ = _loc21_.§5"&§;
                                                                                                                                             §§goto(addr1733);
                                                                                                                                             addr1611:
                                                                                                                                          }
                                                                                                                                          addr1624:
                                                                                                                                          §§goto(addr1729);
                                                                                                                                       }
                                                                                                                                       if(_loc21_.§;!W§.§`3§ == true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1624);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1735);
                                                                                                                                       }
                                                                                                                                       if((_loc22_ = _loc21_.§ `§).IsActive() == false)
                                                                                                                                       {
                                                                                                                                          if(!(_loc23_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr1729);
                                                                                                                                          }
                                                                                                                                          _loc21_.§;!W§.§`3§ = true;
                                                                                                                                          addr1728:
                                                                                                                                          §§push(_loc22_.§`">§);
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(b2Body.§1!t§);
                                                                                                                                             if(!(_loc23_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(§§pop() & §§pop())
                                                                                                                                                {
                                                                                                                                                   addr1714:
                                                                                                                                                   §§goto(addr1729);
                                                                                                                                                }
                                                                                                                                                addr1717:
                                                                                                                                                §§push(_loc22_.§"r§());
                                                                                                                                                §§push(b2Body.b2_staticBody);
                                                                                                                                             }
                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                             {
                                                                                                                                                addr1720:
                                                                                                                                                _loc22_.§61§(_loc13_);
                                                                                                                                                _loc22_.SetAwake(true);
                                                                                                                                                addr1689:
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr1670:
                                                                                                                                                            _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                            addr1677:
                                                                                                                                                            if(_loc24_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr1667:
                                                                                                                                                               _loc16_++;
                                                                                                                                                               _loc22_.§`">§ |= b2Body.§1!t§;
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1667);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1729);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1677);
                                                                                                                                                               }
                                                                                                                                                               addr1669:
                                                                                                                                                               §§goto(addr1669);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1689);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1728);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1714);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1720);
                                                                                                                                                }
                                                                                                                                                addr1723:
                                                                                                                                                §§goto(addr1723);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1670);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1717);
                                                                                                                                          addr1652:
                                                                                                                                       }
                                                                                                                                       _loc9_.§^!g§(_loc21_.§;!W§);
                                                                                                                                       if(_loc24_ || this)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1652);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1714);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1611);
                                                                                                                                 }
                                                                                                                                 §§push(_loc9_.§3M§);
                                                                                                                                 if(!(_loc23_ && this))
                                                                                                                                 {
                                                                                                                                    if(§§pop() == _loc9_.§`E§)
                                                                                                                                    {
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1586);
                                                                                                                                       }
                                                                                                                                       addr1580:
                                                                                                                                       _loc7_ = _loc7_.§5"&§;
                                                                                                                                       §§goto(addr1584);
                                                                                                                                       addr1482:
                                                                                                                                    }
                                                                                                                                    addr1486:
                                                                                                                                    §§push(_loc7_.§0q§);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       addr1474:
                                                                                                                                       if(§§pop().§`">§ & b2Contact.§1!t§)
                                                                                                                                       {
                                                                                                                                          if(_loc24_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1482);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1586);
                                                                                                                                       }
                                                                                                                                       §§push(_loc7_.§0q§);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§ !,§() == true);
                                                                                                                                    if(!(§§pop().§ !,§() == true))
                                                                                                                                    {
                                                                                                                                       addr1490:
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc24_ || this)
                                                                                                                                       {
                                                                                                                                          addr1405:
                                                                                                                                          §§push(_loc7_.§0q§);
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§#e§());
                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr1433:
                                                                                                                                                   §§push(false);
                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr1432:
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                   }
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc23_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr1443:
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  addr1359:
                                                                                                                                                                  §§push(_loc7_.§0q§);
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§[l§());
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc23_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(false);
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1380:
                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1387:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1580);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1401:
                                                                                                                                                                                       §§push(_loc7_.§0q§);
                                                                                                                                                                                       if(_loc24_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().§`">§ = _loc7_.§0q§.§`">§ | b2Contact.§1!t§;
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1357:
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1359);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push((_loc22_ = _loc7_.§ `§).§`">§);
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(b2Body.§1!t§);
                                                                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() & §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1580);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1558:
                                                                                                                                                                                                         _loc16_++;
                                                                                                                                                                                                         addr1575:
                                                                                                                                                                                                         if(_loc24_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc22_.§`">§ |= b2Body.§1!t§;
                                                                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1558);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1580);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1575);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1558);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1569:
                                                                                                                                                                                                         _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                         §§goto(addr1558);
                                                                                                                                                                                                         addr1579:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1523:
                                                                                                                                                                                                      §§push(_loc22_.§"r§());
                                                                                                                                                                                                      §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc22_.§61§(_loc13_);
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc22_.SetAwake(true);
                                                                                                                                                                                                            §§goto(addr1579);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1558);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1569);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1523);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1401);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1586);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1359);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc9_.§1!@§(_loc7_.§0q§);
                                                                                                                                                                                    §§goto(addr1401);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1432);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1433);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1486);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1443);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1380);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1405);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1586);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1486);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1387);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1486);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1490);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1443);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1486);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1586);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1432);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1474);
                                                                                                                              }
                                                                                                                              §§goto(addr1357);
                                                                                                                           }
                                                                                                                           §§goto(addr1304);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1323);
                                                                                                                  }
                                                                                                                  §§goto(addr1318);
                                                                                                                  addr1317:
                                                                                                               }
                                                                                                               §§goto(addr1323);
                                                                                                            }
                                                                                                            §§goto(addr1317);
                                                                                                         }
                                                                                                         addr1738:
                                                                                                         (_loc17_ = §`!%§).§'i§ = false;
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            §§push(_loc17_);
                                                                                                            §§push(1 - _loc13_);
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               §§push(§§pop() * param1.§4"?§);
                                                                                                            }
                                                                                                            §§pop().§4"?§ = §§pop();
                                                                                                            if(_loc24_ || param1)
                                                                                                            {
                                                                                                               _loc17_.§,Q§ = 1 / _loc17_.§4"?§;
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  _loc17_.§ ,§ = 0;
                                                                                                                  _loc17_.§ get§ = param1.§ get§;
                                                                                                                  _loc17_.§7!;§ = param1.§7!;§;
                                                                                                                  addr1795:
                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr1758:
                                                                                                                     _loc9_.§`!!§(_loc17_);
                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1758);
                                                                                                                                    }
                                                                                                                                    addr1905:
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_.§]!M§);
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             _loc2_ = _loc9_.§1!l§[_loc18_];
                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                             {
                                                                                                                                                _loc2_.§`">§ &= ~b2Body.§1!t§;
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_.IsAwake() == false)
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr1904:
                                                                                                                                                         _loc18_++;
                                                                                                                                                         §§goto(addr1905);
                                                                                                                                                      }
                                                                                                                                                      addr1873:
                                                                                                                                                      _loc7_ = _loc2_.§>"#§;
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr1902:
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1904);
                                                                                                                                                         }
                                                                                                                                                         _loc7_.§0q§.§`">§ &= ~b2Contact.§?8§;
                                                                                                                                                         if(_loc24_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr1898:
                                                                                                                                                            _loc7_ = _loc7_.§5"&§;
                                                                                                                                                            §§goto(addr1902);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1904);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1898);
                                                                                                                                                   }
                                                                                                                                                   if(_loc2_.§"r§() != b2Body.b2_dynamicBody)
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr1868:
                                                                                                                                                         §§goto(addr1904);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1905);
                                                                                                                                                   }
                                                                                                                                                   _loc2_.§^!X§();
                                                                                                                                                   if(!_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1873);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1905);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1868);
                                                                                                                                          }
                                                                                                                                          if(_loc24_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc23_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr1960:
                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.§3M§);
                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            _loc11_ = _loc9_.§2!S§[_loc18_];
                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                            §§push(_loc11_.§`">§);
                                                                                                                                                            §§push(b2Contact.§?8§ | b2Contact.§1!t§);
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               §§push(~§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().§`">§ = §§pop() & §§pop();
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               _loc18_++;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1960);
                                                                                                                                                         }
                                                                                                                                                         if(_loc24_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr1980:
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc24_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr1988:
                                                                                                                                                               _loc18_ = §§pop();
                                                                                                                                                               if(!(_loc24_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr2026:
                                                                                                                                                            if(§§pop() < _loc9_.§0!$§)
                                                                                                                                                            {
                                                                                                                                                               (_loc8_ = _loc9_.§ try§[_loc18_]).§`3§ = false;
                                                                                                                                                               if(_loc24_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  _loc18_++;
                                                                                                                                                               }
                                                                                                                                                               addr2025:
                                                                                                                                                               §§goto(addr2026);
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                            }
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               addr2031:
                                                                                                                                                               this.§1Y§.§>!=§();
                                                                                                                                                            }
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2031);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2026);
                                                                                                                                                   addr1936:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1980);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2025);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1980);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1988);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1795);
                                                                                                                              }
                                                                                                                              §§goto(addr2031);
                                                                                                                           }
                                                                                                                           §§goto(addr1980);
                                                                                                                        }
                                                                                                                        §§goto(addr1795);
                                                                                                                     }
                                                                                                                     §§goto(addr2031);
                                                                                                                  }
                                                                                                                  addr1790:
                                                                                                                  §§goto(addr1790);
                                                                                                               }
                                                                                                               §§goto(addr2031);
                                                                                                            }
                                                                                                            §§goto(addr1980);
                                                                                                         }
                                                                                                         §§goto(addr1936);
                                                                                                      }
                                                                                                      §§goto(addr1260);
                                                                                                   }
                                                                                                   §§goto(addr1237);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1738);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1735);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1225);
                                                                              }
                                                                              §§goto(addr1196);
                                                                           }
                                                                        }
                                                                        §§goto(addr1108);
                                                                     }
                                                                     §§goto(addr1180);
                                                                  }
                                                                  §§goto(addr1108);
                                                               }
                                                               §§goto(addr1180);
                                                            }
                                                         }
                                                         §§goto(addr1180);
                                                      }
                                                   }
                                                   §§goto(addr1087);
                                                }
                                                §§goto(addr1128);
                                             }
                                             §§goto(addr1169);
                                             addr1171:
                                          }
                                          addr1176:
                                          §§goto(addr1176);
                                       }
                                       §§goto(addr1171);
                                    }
                                 }
                                 return;
                                 addr991:
                              }
                           }
                        }
                     }
                     §§goto(addr990);
                  }
                  else
                  {
                     §§push(_loc11_.§ !,§());
                     if(_loc24_ || _loc3_)
                     {
                        §§push(true);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc23_)
                           {
                              §§push(§§pop());
                              if(!(_loc23_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc11_.§#e§());
                                          if(_loc24_ || this)
                                          {
                                             §§push(false);
                                             if(!_loc23_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc23_ && _loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   addr327:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc23_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc24_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§goto(addr974);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(1);
                                                                  if(_loc24_ || this)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc23_ && _loc3_))
                                                                     {
                                                                        _loc19_ = §§pop();
                                                                        if(_loc24_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc11_.§`">§ & b2Contact.§?8§);
                                                                              if(!_loc23_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       if(!(_loc24_ || _loc3_))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§push(_loc11_.§`!>§);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc24_ || _loc3_)
                                                                                          {
                                                                                             _loc19_ = §§pop();
                                                                                             if(!(_loc23_ && param1))
                                                                                             {
                                                                                                addr250:
                                                                                                if(_loc24_ || _loc2_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      addr922:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc11_.§^O§());
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr971);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                     if(!(_loc23_ && param1))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           if(!_loc23_)
                                                                                                                           {
                                                                                                                              addr942:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc12_ = _loc11_;
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    addr947:
                                                                                                                                    §§push(_loc19_);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              addr942:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr990);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr939:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr990);
                                                                                                               }
                                                                                                               addr928:
                                                                                                            }
                                                                                                            §§goto(addr990);
                                                                                                         }
                                                                                                         §§goto(addr942);
                                                                                                      }
                                                                                                      addr922:
                                                                                                      addr259:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr910:
                                                                                                      §§push(Number.MIN_VALUE < _loc19_);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         break loop5;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   addr284:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr965);
                                                                                             }
                                                                                             §§goto(addr990);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr928);
                                                                                    }
                                                                                    §§goto(addr250);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc11_.§3t§);
                                                                                    if(!(_loc23_ && _loc3_))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       _loc4_ = _loc11_.§?!p§;
                                                                                       _loc5_ = _loc3_.m_body;
                                                                                       _loc6_ = _loc4_.m_body;
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          §§push(_loc5_.§"r§());
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(b2Body.b2_dynamicBody);
                                                                                             addr904:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                addr905:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            loop19:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop20:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_.IsAwake());
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(false);
                                                                                                                     if(!(_loc23_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr896:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr895:
                                                                                                                     }
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop32:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop33:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.m_sweep);
                                                                                                                                    loop34:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§0!O§);
                                                                                                                                       loop35:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          loop36:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                             loop37:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§0!O§);
                                                                                                                                                   loop38:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                      loop39:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§0!O§);
                                                                                                                                                         loop40:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§0!O§);
                                                                                                                                                                     loop41:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.m_sweep);
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop().§0!O§);
                                                                                                                                                                        loop42:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc24_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.m_sweep);
                                                                                                                                                                                    loop65:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc24_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop34;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().§0!O§);
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr770:
                                                                                                                                                                                          addr770:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                                                                             addr771:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc23_ && _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop65;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().§61§(§§pop());
                                                                                                                                                                                                         loop74:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr698:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc11_.§7!M§(_loc5_.m_sweep,_loc6_.m_sweep));
                                                                                                                                                                                                               addr705:
                                                                                                                                                                                                               loop46:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  addr706:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                     loop48:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(b2Settings);
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() <= _loc19_);
                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr692:
                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                       §§push(_loc19_ <= 1);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().b2Assert(§§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                                                                    addr417:
                                                                                                                                                                                                                                    if(_loc23_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop58:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc11_.§`!>§ = _loc19_;
                                                                                                                                                                                                                                          addr430:
                                                                                                                                                                                                                                          loop59:
                                                                                                                                                                                                                                          while(_loc24_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop74;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc11_.§`">§ |= b2Contact.§?8§;
                                                                                                                                                                                                                                                if(!(_loc24_ || param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr417);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr578:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr587:
                                                                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                                                                         loop56:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr589:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                     break loop59;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break loop56;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop41;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr587);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                                                                         addr588:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop20;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr578:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                                                                             §§goto(addr430);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                       addr426:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr910);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr692);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr698);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                      addr811:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().§0!O§);
                                                                                                                                                                                                         addr812:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            addr813:
                                                                                                                                                                                                            while(!(_loc23_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr820:
                                                                                                                                                                                                               _loc20_ = §§pop();
                                                                                                                                                                                                               while(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr820);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop37;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr809:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().§61§(§§pop());
                                                                                                                                                                                                   addr791:
                                                                                                                                                                                                   while(_loc24_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr698);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop4;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr811);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop38;
                                                                                                                                                                                    addr750:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr821);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr771);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr698);
                                                                                                                                                                           addr605:
                                                                                                                                                                           loop51:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                 loop52:
                                                                                                                                                                                 while(!(_loc23_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr620:
                                                                                                                                                                                    if(!(_loc23_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc23_ && _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop55:
                                                                                                                                                                                             while(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr496:
                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr503:
                                                                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                         if(_loc24_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - _loc19_);
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                  if(_loc24_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop51;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr537:
                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr545:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc24_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr553:
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr561:
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(_loc23_ && param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc19_ = §§pop();
                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr589);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr577:
                                                                                                                                                                                                                                    if(§§pop() > 1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr578);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop36;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr812);
                                                                                                                                                                                                                              §§goto(addr705);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr561);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr553);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr545);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop51;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr589);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr588);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.IsAwake());
                                                                                                                                                                                                            while(!(_loc23_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                               while(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                                  continue loop32;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                               if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr896);
                                                                                                                                                                                                            §§goto(addr503);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr882:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                        if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr468:
                                                                                                                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                                                                                                                           if(_loc23_ && param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop33;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop52;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr478);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr577);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr813);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr705);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr537);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr589);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr791);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         §§goto(addr496);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr771);
                                                                                                                                                                                                      addr662:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr812);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr578);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr426);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop52;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr878:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr835);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(!(_loc23_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                          §§goto(addr620);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          continue loop14;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr898:
                                                                                                                                                                                       addr862:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    §§goto(addr882);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop17;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop42;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr706);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop39;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr789);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr750);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr809);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr811);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr840);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr898);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr895);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr785);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr994);
                                                                              }
                                                                              §§goto(addr990);
                                                                           }
                                                                           addr304:
                                                                        }
                                                                        §§goto(addr991);
                                                                     }
                                                                  }
                                                                  §§goto(addr990);
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            addr282:
                                                         }
                                                         §§goto(addr990);
                                                      }
                                                      break loop7;
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr327);
                                       }
                                       addr919:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc24_)
                                             {
                                                §§goto(addr922);
                                             }
                                          }
                                          §§goto(addr939);
                                       }
                                    }
                                 }
                                 §§goto(addr326);
                              }
                              §§goto(addr971);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc23_)
                           {
                              §§goto(addr919);
                           }
                           else
                           {
                              §§goto(addr971);
                           }
                        }
                     }
                     §§goto(addr922);
                  }
               }
            }
            §§goto(addr304);
         }
      }
      
      b2internal function § F§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§6p§();
         var _loc3_:b2Body = param1.§]%§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §0!0§;
         §§push(param1.§<";§);
         if(_loc16_ || param1)
         {
            var _loc14_:* = §§pop();
            if(!_loc15_)
            {
               §§push(b2Joint.§1!A§);
               if(!_loc15_)
               {
                  §§push(_loc14_);
                  if(!_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || this)
                        {
                           addr258:
                           §§push(0);
                           if(_loc16_ || _loc3_)
                           {
                              addr306:
                              loop11:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.§8!?§.§ !L§(_loc8_,_loc9_,_loc10_);
                                    if(_loc16_)
                                    {
                                       break;
                                    }
                                    break;
                                 case 1:
                                    _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§@n§();
                                    _loc13_ = _loc11_.§=r§();
                                    if(_loc16_)
                                    {
                                       addr225:
                                       this.§8!?§.§ !L§(_loc12_,_loc8_,_loc10_);
                                       addr218:
                                       this.§8!?§.§ !L§(_loc13_,_loc9_,_loc10_);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§8!?§);
                                          addr212:
                                          while(true)
                                          {
                                             if(_loc16_)
                                             {
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       break;
                                       addr229:
                                    }
                                    else
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§8!?§);
                                          if(!_loc15_)
                                          {
                                             if(!_loc15_)
                                             {
                                                §§pop().§ !L§(_loc7_,_loc9_,_loc10_);
                                                loop9:
                                                while(true)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      if(false)
                                                      {
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(this.§8!?§);
                                                            addr129:
                                                            addr169:
                                                            while(!(_loc15_ && _loc3_))
                                                            {
                                                               §§pop().§ !L§(_loc8_,_loc9_,_loc10_);
                                                               while(_loc3_ != this.m_groundBody)
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     if(!(_loc16_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr103:
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        if(!_loc16_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     addr180:
                                                                     while(true)
                                                                     {
                                                                        continue loop4;
                                                                        §§goto(addr103);
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                            addr208:
                                                            while(true)
                                                            {
                                                               if(_loc15_ && _loc2_)
                                                               {
                                                                  addr186:
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        §§pop().§ !L§(_loc8_,_loc9_,_loc10_);
                                                                        break loop11;
                                                                        addr204:
                                                                     }
                                                                     §§goto(addr225);
                                                                  }
                                                                  break;
                                                               }
                                                               §§pop().§ !L§(_loc6_,_loc8_,_loc10_);
                                                               §§goto(addr180);
                                                               §§goto(addr129);
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().§ !L§(_loc12_,_loc13_,_loc10_);
                                                               break loop4;
                                                            }
                                                         }
                                                         §§goto(addr212);
                                                         addr126:
                                                      }
                                                      break loop11;
                                                   }
                                                   addr158:
                                                   while(true)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         if(_loc16_ || this)
                                                         {
                                                            §§goto(addr169);
                                                            §§push(this.§8!?§);
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr229);
                                                   §§goto(addr204);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr208);
                                 case 2:
                                    §§goto(addr186);
                                 default:
                                    §§push(this.§8!?§);
                                    if(_loc2_ != this.m_groundBody)
                                    {
                                       §§goto(addr158);
                                    }
                                    §§goto(addr126);
                              }
                              return;
                              addr305:
                           }
                        }
                        else
                        {
                           addr287:
                           §§push(1);
                           if(!_loc16_)
                           {
                              addr300:
                           }
                        }
                        §§goto(addr305);
                     }
                     else
                     {
                        §§push(b2Joint.§3!u§);
                        if(_loc16_)
                        {
                           §§push(_loc14_);
                           if(_loc16_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_)
                                 {
                                    §§goto(addr287);
                                 }
                                 else
                                 {
                                    addr297:
                                    §§push(2);
                                    if(!_loc16_)
                                    {
                                    }
                                    §§goto(addr305);
                                 }
                              }
                              else
                              {
                                 §§push(b2Joint.§ !0§);
                                 if(!_loc15_)
                                 {
                                    addr296:
                                    if(§§pop() === _loc14_)
                                    {
                                       §§goto(addr297);
                                    }
                                    else
                                    {
                                       §§goto(addr305);
                                       §§push(3);
                                    }
                                    §§goto(addr305);
                                 }
                              }
                              §§goto(addr300);
                           }
                           §§goto(addr296);
                        }
                     }
                     §§goto(addr305);
                  }
               }
               §§goto(addr296);
            }
            §§goto(addr258);
         }
         §§goto(addr306);
      }
      
      b2internal function §#",§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc4_:b2CircleShape = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = 0;
         var _loc9_:b2PolygonShape = null;
         var _loc10_:* = 0;
         var _loc11_:Vector.<b2Vec2> = null;
         var _loc12_:Vector.<b2Vec2> = null;
         var _loc13_:b2EdgeShape = null;
         §§push(param1.§<";§);
         if(!(_loc15_ && param3))
         {
            var _loc14_:* = §§pop();
            if(!_loc15_)
            {
               §§push(b2Shape.§'!U§);
               if(_loc16_ || param1)
               {
                  §§push(_loc14_);
                  if(!(_loc15_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc16_ || param3)
                        {
                           §§push(0);
                           if(!_loc16_)
                           {
                              addr296:
                           }
                        }
                        else
                        {
                           addr303:
                           §§push(2);
                           if(!_loc16_)
                           {
                           }
                        }
                        addr312:
                        loop3:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = param1 as b2CircleShape;
                              _loc5_ = b2Math.§2C§(param2,_loc4_.§ m§);
                              if(_loc16_ || this)
                              {
                                 _loc6_ = _loc4_.§%I§;
                              }
                              _loc7_ = param2.R.col1;
                              if(!(_loc15_ && param3))
                              {
                                 this.§8!?§.§3B§(_loc5_,_loc6_,_loc7_,param3);
                              }
                              break;
                           case 1:
                              §§push((_loc9_ = param1 as b2PolygonShape).§^x§());
                              if(_loc16_ || param2)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc10_ = §§pop();
                              _loc11_ = _loc9_.§9y§();
                              _loc12_ = new Vector.<b2Vec2>(_loc10_);
                              if(_loc16_ || param1)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                 }
                                 addr189:
                              }
                              loop1:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    if(§§pop() >= _loc10_)
                                    {
                                       if(!(_loc15_ && param1))
                                       {
                                          if(_loc15_)
                                          {
                                             continue loop1;
                                          }
                                          this.§8!?§.§-"!§(_loc12_,_loc10_,param3);
                                       }
                                       if(_loc16_ || param2)
                                       {
                                          if(!(_loc15_ && param2))
                                          {
                                             if(true)
                                             {
                                                break loop3;
                                             }
                                          }
                                          else
                                          {
                                             addr187:
                                          }
                                          _loc8_++;
                                       }
                                       continue;
                                    }
                                    _loc12_[_loc8_] = b2Math.§2C§(param2,_loc11_[_loc8_]);
                                    §§goto(addr187);
                                 }
                                 §§goto(addr189);
                              }
                              break;
                           case 2:
                              _loc13_ = param1 as b2EdgeShape;
                              if(_loc16_)
                              {
                                 this.§8!?§.§ !L§(b2Math.§2C§(param2,_loc13_.GetVertex1()),b2Math.§2C§(param2,_loc13_.GetVertex2()),param3);
                              }
                        }
                        return;
                        addr311:
                     }
                     else
                     {
                        §§push(b2Shape.§@!#§);
                        if(!(_loc15_ && param2))
                        {
                           addr267:
                           §§push(_loc14_);
                           if(!(_loc15_ && this))
                           {
                              addr285:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    addr288:
                                    §§push(1);
                                    if(_loc16_ || this)
                                    {
                                       §§goto(addr296);
                                    }
                                    else
                                    {
                                       addr301:
                                       if(§§pop() !== _loc14_)
                                       {
                                          §§goto(addr311);
                                          §§push(3);
                                       }
                                       §§goto(addr311);
                                    }
                                 }
                                 §§goto(addr303);
                              }
                              else
                              {
                                 §§push(b2Shape.§`M§);
                                 if(!_loc15_)
                                 {
                                    §§goto(addr301);
                                 }
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr301);
                        }
                     }
                     §§goto(addr296);
                  }
                  §§goto(addr285);
               }
               §§goto(addr267);
            }
            §§goto(addr288);
         }
         §§goto(addr312);
      }
   }
}
