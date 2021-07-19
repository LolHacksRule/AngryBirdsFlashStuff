package §+#$§
{
   import §1!2§.*;
   import §3"5§.*;
   import §4!$§.*;
   import §5"i§.*;
   import §8[§.*;
   import §["3§.b2Controller;
   import §["3§.b2ControllerEdge;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep;
      
      private static var §!!+§:b2Transform;
      
      private static var §;"`§:b2Sweep;
      
      private static var §^=§:b2Sweep;
      
      private static var §;"C§:b2TimeStep;
      
      private static var §7!7§:Vector.<b2Body>;
      
      private static var §@!]§:b2Color;
      
      private static var § M§:Boolean;
      
      private static var §%!J§:Boolean;
      
      public static const §#h§:int = 1;
      
      public static const §+"z§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            s_timestep2 = new b2TimeStep();
            loop0:
            while(true)
            {
               §!!+§ = new b2Transform();
               addr135:
               while(true)
               {
                  §;"`§ = new b2Sweep();
                  addr119:
                  while(true)
                  {
                     §^=§ = new b2Sweep();
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §;"C§ = new b2TimeStep();
            §§goto(addr98);
         }
      }
      
      private var §7I§:Vector.<b2Body>;
      
      b2internal var §6b§:int;
      
      b2internal var §1P§:b2ContactManager;
      
      private var §"!k§:b2ContactSolver;
      
      private var §"x§:b2Island;
      
      b2internal var §,!A§:b2Body;
      
      private var §%#J§:b2Joint;
      
      b2internal var §'#H§:b2Contact;
      
      private var §9#,§:int;
      
      b2internal var §1N§:int;
      
      private var §5!I§:int;
      
      private var §?`§:b2Controller;
      
      private var §'"g§:int;
      
      private var §@!>§:b2Vec2;
      
      private var §`";§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §@#I§:b2DestructionListener;
      
      private var §@#J§:b2DebugDraw;
      
      private var §%"@§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            this.§7I§ = new Vector.<b2Body>();
            loop0:
            while(true)
            {
               this.§1P§ = new b2ContactManager();
               loop1:
               while(true)
               {
                  this.§"!k§ = new b2ContactSolver();
                  loop2:
                  while(true)
                  {
                     this.§"x§ = new b2Island();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§@#I§ = null;
                           loop5:
                           while(true)
                           {
                              this.§@#J§ = null;
                              loop6:
                              while(true)
                              {
                                 this.§,!A§ = null;
                                 loop7:
                                 while(true)
                                 {
                                    this.§'#H§ = null;
                                    while(true)
                                    {
                                       this.§%#J§ = null;
                                       addr147:
                                       while(!(_loc5_ && param1))
                                       {
                                          continue loop3;
                                          addr92:
                                          if(!(_loc4_ || param1))
                                          {
                                             continue;
                                          }
                                          addr99:
                                          if(!(_loc5_ && param2))
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§@!>§ = param1;
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§%"@§ = 0;
                                                            addr46:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr48:
                                                                  if(_loc5_ && param2)
                                                                  {
                                                                     while(_loc4_)
                                                                     {
                                                                        §%!J§ = true;
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           this.§`";§ = param2;
                                                                           addr85:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              §§goto(addr92);
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr48);
                                                                     }
                                                                     continue loop5;
                                                                     addr130:
                                                                  }
                                                                  addr55:
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr55);
                                                                  }
                                                                  continue loop7;
                                                                  addr166:
                                                                  while(true)
                                                                  {
                                                                     this.§9#,§ = 0;
                                                                     §§goto(addr166);
                                                                  }
                                                                  addr185:
                                                               }
                                                               §§goto(addr85);
                                                            }
                                                            continue loop4;
                                                            addr38:
                                                            if(!_loc5_)
                                                            {
                                                               if(true)
                                                               {
                                                                  var _loc3_:b2BodyDef = new b2BodyDef();
                                                                  if(!_loc5_)
                                                                  {
                                                                     this.m_groundBody = this.CreateBody(_loc3_);
                                                                  }
                                                               }
                                                               continue;
                                                               return;
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§'"g§ = 0;
                                                         }
                                                         addr142:
                                                      }
                                                      while(true)
                                                      {
                                                         § M§ = true;
                                                         §§goto(addr130);
                                                      }
                                                   }
                                                   continue loop6;
                                                   addr76:
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             this.§?`§ = null;
                                             §§goto(addr185);
                                             §§goto(addr99);
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
         }
         §§goto(addr190);
      }
      
      public function §2"3§(param1:b2DestructionListener) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@#I§ = param1;
         }
      }
      
      public function §1""§(param1:b2ContactFilter) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1P§.§7l§ = param1;
         }
      }
      
      public function §4!O§(param1:b2ContactListener) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1P§.§?O§ = param1;
         }
      }
      
      public function §0=§(param1:b2DebugDraw) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@#J§ = param1;
         }
      }
      
      public function §`-§(param1:§8t§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc2_:§8t§ = this.§1P§.§7#U§;
         if(_loc5_ || _loc3_)
         {
            this.§1P§.§7#U§ = param1;
         }
         var _loc3_:b2Body = this.§,!A§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§<"v§;
            if(!_loc6_)
            {
               while(_loc4_)
               {
                  _loc4_.§4"t§ = param1.§ #Q§(_loc2_.§1"§(_loc4_.§4"t§),_loc4_);
                  if(_loc6_)
                  {
                     break;
                  }
                  _loc4_ = _loc4_.§!"!§;
               }
            }
            _loc3_ = _loc3_.§!"!§;
         }
      }
      
      public function §%!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§1P§.§7#U§.§%!&§();
         }
      }
      
      public function §<§() : int
      {
         return this.§1P§.§7#U§.§<§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc2_)
         {
            if(this.§]#`§() == true)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:b2Body = new b2Body(param1,this);
            if(_loc5_)
            {
               _loc2_.§ #&§ = null;
               while(true)
               {
                  _loc2_.§!"!§ = this.§,!A§;
                  loop1:
                  for(; _loc5_ || _loc2_; if(!(_loc5_ || param1))
                  {
                     continue;
                  },§§goto(addr92),§§push(this.§,!A§))
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§,!A§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 continue loop1;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§,!A§ = _loc2_;
                                 if(!_loc6_)
                                 {
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    continue;
                                 }
                              }
                           }
                           addr137:
                           return _loc2_;
                        }
                        addr92:
                        §§pop().§ #&§ = _loc2_;
                        §§goto(addr94);
                     }
                  }
               }
            }
            §§goto(addr58);
         }
         addr34:
         return null;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(_loc12_)
         {
            if(this.§]#`§() == true)
            {
               if(!_loc13_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2JointEdge = param1.§%#J§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§]!D§;
            if(!(_loc13_ && param1))
            {
               §§push(this.§@#I§);
               if(_loc12_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc12_)
                     {
                        continue;
                     }
                     addr71:
                     this.§@#I§.§,"$§(_loc6_.joint);
                     if(_loc13_)
                     {
                        continue;
                     }
                  }
                  this.DestroyJoint(_loc6_.joint);
                  continue;
               }
            }
            §§goto(addr71);
         }
         var _loc3_:b2ControllerEdge = param1.§?`§;
         if(_loc12_)
         {
            while(_loc3_)
            {
               _loc7_ = _loc3_;
               _loc3_ = _loc3_.§7"!§;
               if(!(_loc13_ && param1))
               {
                  _loc7_.§>k§.§<?§(param1);
               }
            }
         }
         var _loc4_:b2ContactEdge = param1.§'#H§;
         if(_loc12_ || param1)
         {
            while(_loc4_)
            {
               _loc8_ = _loc4_;
               _loc4_ = _loc4_.§]!D§;
               if(!_loc13_)
               {
                  this.§1P§.§;!"§(_loc8_.§>"6§);
               }
            }
            if(!(_loc13_ && _loc3_))
            {
               param1.§'#H§ = null;
            }
         }
         var _loc5_:b2Fixture = param1.§<"v§;
         if(!(_loc13_ && _loc3_))
         {
            loop3:
            while(_loc5_)
            {
               _loc9_ = _loc5_;
               _loc5_ = _loc5_.§!"!§;
               if(_loc12_ || param1)
               {
                  §§push(this.§@#I§);
                  if(!(_loc13_ && this))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§@#I§);
                           addr222:
                           while(true)
                           {
                              §§pop().§,!=§(_loc9_);
                              addr224:
                              while(true)
                              {
                              }
                           }
                        }
                        addr220:
                     }
                     loop5:
                     while(true)
                     {
                        _loc9_.§,X§(this.§1P§.§7#U§);
                        addr209:
                        while(true)
                        {
                           _loc9_.§;!"§();
                           if(!(_loc12_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc12_)
                           {
                              if(!_loc13_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr224);
                        }
                        continue loop3;
                     }
                  }
                  §§goto(addr222);
               }
               §§goto(addr209);
            }
            if(!_loc13_)
            {
               param1.§<"v§ = null;
               if(_loc12_)
               {
                  param1.§?"m§ = 0;
                  loop9:
                  while(true)
                  {
                     §§push(param1.§ #&§);
                     if(!_loc13_)
                     {
                        if(§§pop())
                        {
                           addr303:
                           while(true)
                           {
                              §§push(param1.§ #&§);
                              addr305:
                              while(true)
                              {
                                 §§pop().§!"!§ = param1.§!"!§;
                                 addr308:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr303:
                        }
                        loop10:
                        while(true)
                        {
                           §§push(param1.§!"!§);
                           if(!(_loc13_ && param1))
                           {
                              if(!§§pop())
                              {
                                 loop12:
                                 for(; param1 == this.§,!A§; while(true)
                                 {
                                    continue loop12;
                                 })
                                 {
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          this.§,!A§ = param1.§!"!§;
                                          if(!(_loc13_ && _loc2_))
                                          {
                                             if(_loc13_)
                                             {
                                                continue loop12;
                                             }
                                             if(_loc12_)
                                             {
                                                if(_loc12_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop12;
                                                   }
                                                   continue loop10;
                                                }
                                                §§goto(addr303);
                                             }
                                             else
                                             {
                                                while(!(_loc13_ && this))
                                                {
                                                   continue loop9;
                                                }
                                                addr277:
                                             }
                                             §§goto(addr308);
                                          }
                                          §§goto(addr338);
                                       }
                                       addr247:
                                    }
                                    §§goto(addr338);
                                 }
                                 var _loc10_:*;
                                 §§push((_loc10_ = this).§9#,§);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc11_:* = §§pop();
                                 if(!_loc13_)
                                 {
                                    _loc10_.§9#,§ = _loc11_;
                                 }
                                 §§goto(addr338);
                              }
                              §§goto(addr277);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§pop().§ #&§ = param1.§ #&§;
                              }
                              addr293:
                           }
                           §§goto(addr296);
                        }
                     }
                     §§goto(addr305);
                  }
               }
               addr338:
               return;
            }
            §§goto(addr247);
         }
         §§goto(addr303);
      }
      
      public function CreateJoint(param1:b2JointDef) : b2Joint
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§=!S§(param1,null);
         if(_loc8_ || _loc2_)
         {
            _loc2_.§ #&§ = null;
            loop0:
            while(true)
            {
               _loc2_.§!"!§ = this.§%#J§;
               while(true)
               {
                  while(true)
                  {
                     §§push(this.§%#J§);
                     if(_loc8_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              addr63:
                              this.§%#J§.§ #&§ = _loc2_;
                              if(!_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    continue loop0;
                                 }
                                 addr33:
                                 this.§%#J§ = _loc2_;
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§5!I§);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc8_ || param1)
                                    {
                                       _loc6_.§5!I§ = _loc7_;
                                    }
                                    if(_loc8_ || _loc3_)
                                    {
                                       addr314:
                                       _loc2_.§>"-§.joint = _loc2_;
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc2_.§>"-§);
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().other = _loc2_.§ "z§;
                                             addr311:
                                             loop16:
                                             while(true)
                                             {
                                                §§push(_loc2_.§>"-§);
                                                loop12:
                                                while(!_loc9_)
                                                {
                                                   §§pop().§-B§ = null;
                                                   addr304:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§>"-§);
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop12;
                                                   }
                                                   §§pop().§]!D§ = _loc2_.§2!g§.§%#J§;
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§2!g§);
                                                      loop25:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§%#J§);
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§2!g§);
                                                                  addr270:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§%#J§);
                                                                     addr271:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§-B§ = _loc2_.§>"-§;
                                                                        addr274:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr268:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§2!g§);
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  addr250:
                                                                  §§pop().§%#J§ = _loc2_.§>"-§;
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§push(_loc2_.§<!$§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().joint = _loc2_;
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§<!$§);
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().other = _loc2_.§2!g§;
                                                                                 addr224:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc2_.§<!$§);
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§-B§ = null;
                                                                                          addr210:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                       }
                                                                                       addr208:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr268);
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                       addr316:
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr274);
                        }
                        §§goto(addr33);
                     }
                     §§goto(addr63);
                  }
               }
            }
         }
         §§goto(addr161);
      }
      
      public function DestroyJoint(param1:b2Joint) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:b2ContactEdge = null;
         §§push(param1.§6"m§);
         if(!(_loc8_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_)
         {
            §§push(param1.§ #&§);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1.§ #&§);
                     addr94:
                     while(true)
                     {
                        §§pop().§!"!§ = param1.§!"!§;
                        addr97:
                        while(true)
                        {
                        }
                     }
                     addr57:
                     if(_loc8_ && _loc3_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        if(false)
                        {
                           while(true)
                           {
                              §§push(param1.§!"!§);
                              if(!(_loc8_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       addr81:
                                       param1.§!"!§.§ #&§ = param1.§ #&§;
                                    }
                                    while(_loc9_)
                                    {
                                       if(_loc8_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       this.§%#J§ = param1.§!"!§;
                                       §§goto(addr57);
                                    }
                                    §§goto(addr97);
                                 }
                                 while(param1 == this.§%#J§)
                                 {
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§goto(addr46);
                                    }
                                    §§goto(addr57);
                                 }
                                 addr98:
                                 var _loc3_:b2Body = param1.§2!g§;
                                 var _loc4_:b2Body = param1.§ "z§;
                                 if(_loc9_)
                                 {
                                    _loc3_.SetAwake(true);
                                    while(true)
                                    {
                                       _loc4_.SetAwake(true);
                                    }
                                    addr426:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§>"-§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop().§-B§);
                                       loop7:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(param1.§>"-§);
                                                addr412:
                                                while(true)
                                                {
                                                   §§push(§§pop().§-B§);
                                                   addr413:
                                                   while(true)
                                                   {
                                                      §§push(param1.§>"-§.§]!D§);
                                                      addr416:
                                                      while(true)
                                                      {
                                                         §§pop().§]!D§ = §§pop();
                                                         addr417:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr410:
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§>"-§);
                                             loop14:
                                             while(true)
                                             {
                                                §§push(§§pop().§]!D§);
                                                if(!_loc8_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(param1.§>"-§);
                                                         loop18:
                                                         while(_loc9_)
                                                         {
                                                            if(§§pop() == _loc3_.§%#J§)
                                                            {
                                                               while(_loc9_ || param1)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc3_.§%#J§ = param1.§>"-§.§]!D§;
                                                                     while(true)
                                                                     {
                                                                        addr343:
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§>"-§);
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ || _loc3_))
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(null);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§-B§ = §§pop();
                                                                                 addr357:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr333:
                                                                                 §§push(null);
                                                                                 continue loop18;
                                                                                 if(_loc8_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§pop().§]!D§ = §§pop();
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§<!$§);
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§-B§);
                                                                                       if(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.§<!$§);
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§-B§);
                                                                                                      addr295:
                                                                                                      while(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(param1.§<!$§.§]!D§);
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            §§pop().§]!D§ = §§pop();
                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§<!$§);
                                                                                                                  loop30:
                                                                                                                  for(; !_loc8_; if(!(_loc9_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },§§goto(addr163))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§]!D§);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop31:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param1.§<!$§);
                                                                                                                              loop32:
                                                                                                                              while(_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§]!D§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§<!$§.§-B§);
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§pop().§-B§ = §§pop();
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§<!$§);
                                                                                                                                                loop34:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == _loc4_.§%#J§)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr223:
                                                                                                                                                            if(!(_loc8_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  _loc4_.§%#J§ = param1.§<!$§.§]!D§;
                                                                                                                                                                  loop35:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr198:
                                                                                                                                                                     if(!(_loc8_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§<!$§);
                                                                                                                                                                              if(!(_loc8_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop30;
                                                                                                                                                                              }
                                                                                                                                                                              addr185:
                                                                                                                                                                              while(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(null);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§-B§ = §§pop();
                                                                                                                                                                                       if(_loc9_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr198);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr449);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§]!D§ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                          addr121:
                                                                                                                                                                                          if(!(_loc8_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop32;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop34;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop25;
                                                                                                                                                                           addr146:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop21;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr410);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§>"-§);
                                                                                                                                                                  continue loop6;
                                                                                                                                                                  §§goto(addr223);
                                                                                                                                                               }
                                                                                                                                                               addr390:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr357);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr449);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr185);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr400:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§>"-§.§-B§);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr208:
                                                                                                                                          }
                                                                                                                                          §§goto(addr449);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr400);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§-B§ = §§pop();
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr208);
                                                                                                                     }
                                                                                                                     §§goto(addr267);
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               addr253:
                                                                                                            }
                                                                                                            §§goto(addr449);
                                                                                                         }
                                                                                                         §§goto(addr416);
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr295);
                                                                                    }
                                                                                    §§goto(addr413);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr426);
                                                                  }
                                                               }
                                                               §§goto(addr417);
                                                            }
                                                            §§goto(addr343);
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                   }
                                                   §§goto(addr390);
                                                }
                                                §§goto(addr400);
                                             }
                                          }
                                       }
                                    }
                                    if(_loc8_ && param1)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       §§goto(addr146);
                                    }
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§5!I§);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(_loc9_)
                                    {
                                       _loc6_.§5!I§ = _loc7_;
                                    }
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       addr449:
                                       if(_loc2_ == false)
                                       {
                                          addr452:
                                          _loc5_ = _loc4_.§9!K§();
                                          addr493:
                                          if(_loc5_)
                                          {
                                             if(_loc5_.other == _loc3_)
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   _loc5_.§>"6§.§=y§();
                                                   if(_loc8_ && _loc2_)
                                                   {
                                                   }
                                                   §§goto(addr495);
                                                }
                                             }
                                             _loc5_ = _loc5_.§]!D§;
                                             §§goto(addr493);
                                          }
                                       }
                                       addr495:
                                       return;
                                    }
                                    §§goto(addr452);
                                 }
                              }
                              §§goto(addr81);
                           }
                           addr66:
                        }
                        §§goto(addr98);
                     }
                     addr64:
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr94);
         }
         §§goto(addr64);
      }
      
      public function § #<§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            param1.§!"!§ = this.§?`§;
            if(_loc4_)
            {
               param1.§ #&§ = null;
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§?`§ = param1;
                     if(_loc4_ || this)
                     {
                        while(true)
                        {
                           param1.m_world = this;
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           if(_loc4_)
                           {
                              if(true)
                              {
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§'"g§);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                              }
                              continue loop1;
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc2_.§'"g§ = _loc3_;
                              }
                              break loop1;
                           }
                           continue loop0;
                        }
                        addr55:
                     }
                     break;
                  }
               }
            }
            return param1;
         }
         §§goto(addr55);
      }
      
      public function §3!Z§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1.§ #&§);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop())
               {
                  addr114:
                  while(true)
                  {
                     §§push(param1.§ #&§);
                     addr116:
                     while(true)
                     {
                        §§pop().§!"!§ = param1.§!"!§;
                        addr119:
                        while(true)
                        {
                        }
                     }
                  }
                  addr114:
               }
               loop0:
               while(true)
               {
                  §§push(param1.§!"!§);
                  if(!(_loc5_ && this))
                  {
                     if(§§pop())
                     {
                        loop1:
                        for(; _loc4_ || param1; if(_loc5_ && _loc2_)
                        {
                           continue;
                        },if(false)
                        {
                           continue loop0;
                        },§§goto(addr120))
                        {
                           §§push(param1.§!"!§);
                           while(true)
                           {
                              §§pop().§ #&§ = param1.§ #&§;
                              loop4:
                              while(true)
                              {
                                 addr24:
                                 while(this.§?`§ == param1)
                                 {
                                    if(!(_loc4_ || this))
                                    {
                                       continue loop1;
                                    }
                                    if(_loc5_ && this)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc4_ || _loc2_)
                                    {
                                       this.§?`§ = param1.§!"!§;
                                       if(!(_loc4_ || _loc2_))
                                       {
                                          return;
                                       }
                                       addr150:
                                       continue loop1;
                                    }
                                    §§goto(addr114);
                                    continue loop4;
                                 }
                                 addr120:
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§'"g§);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!_loc5_)
                                 {
                                    _loc2_.§'"g§ = _loc3_;
                                 }
                                 §§goto(addr150);
                              }
                           }
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr116);
         }
         §§goto(addr114);
      }
      
      public function §#"W§(param1:b2Controller) : b2Controller
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(param1.m_world == this)
            {
               while(true)
               {
                  param1.§!"!§ = this.§?`§;
                  if(_loc4_)
                  {
                     return param1;
                  }
                  if(_loc4_ && this)
                  {
                     break;
                  }
                  param1.§ #&§ = null;
                  loop1:
                  while(!(_loc4_ && _loc3_))
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§?`§);
                        if(_loc5_ || this)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 addr55:
                                 this.§?`§.§ #&§ = param1;
                                 if(!(_loc4_ && this))
                                 {
                                    while(true)
                                    {
                                       addr25:
                                       while(true)
                                       {
                                          this.§?`§ = param1;
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          if(_loc5_)
                                          {
                                             if(true)
                                             {
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§'"g§);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                var _loc3_:* = §§pop();
                                             }
                                             continue loop2;
                                             if(_loc5_)
                                             {
                                                _loc2_.§'"g§ = _loc3_;
                                             }
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             break loop2;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr74:
                                 }
                                 break;
                              }
                              param1.m_world = this;
                              break;
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr55);
                     }
                  }
               }
            }
            throw new Error("Controller can only be a member of one world");
         }
         §§goto(addr74);
      }
      
      public function §+!i§(param1:b2Controller) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            param1.§#u§();
         }
         loop0:
         while(true)
         {
            §§push(param1.§!"!§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1.§!"!§);
                     addr120:
                     while(true)
                     {
                        §§pop().§ #&§ = param1.§ #&§;
                        addr123:
                        while(true)
                        {
                        }
                     }
                     loop6:
                     while(true)
                     {
                        if(!(_loc5_ || _loc3_))
                        {
                           continue loop1;
                        }
                        addr106:
                        while(true)
                        {
                           if(param1 == this.§?`§)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 addr37:
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    this.§?`§ = param1.§!"!§;
                                    if(_loc4_ && _loc3_)
                                    {
                                       addr152:
                                    }
                                    §§goto(addr55);
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§ #&§);
                                    addr96:
                                    while(true)
                                    {
                                       §§pop().§!"!§ = param1.§!"!§;
                                       continue loop6;
                                    }
                                    §§goto(addr37);
                                 }
                                 addr94:
                              }
                              addr55:
                              if(!(_loc5_ || _loc2_))
                              {
                                 continue loop6;
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop0;
                              return;
                           }
                           addr127:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§'"g§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_)
                           {
                              _loc2_.§'"g§ = _loc3_;
                           }
                           §§goto(addr152);
                           §§goto(addr106);
                        }
                        §§goto(addr123);
                     }
                  }
               }
               while(true)
               {
                  §§push(param1.§ #&§);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr96);
               }
               continue;
               addr83:
            }
            §§goto(addr120);
         }
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § M§ = param1;
         }
      }
      
      public function §#"J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §%!J§ = param1;
         }
      }
      
      public function §^>§() : int
      {
         return this.§9#,§;
      }
      
      public function §<"#§() : int
      {
         return this.§5!I§;
      }
      
      public function §?!L§() : int
      {
         return this.§1N§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!>§ = param1;
         }
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§@!>§;
      }
      
      public function §3&§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§6b§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() & §#h§);
            }
            if(§§pop())
            {
               while(true)
               {
                  this.§1P§.§7"D§();
                  addr89:
                  while(true)
                  {
                     addr56:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§6b§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§#h§);
                           if(_loc5_)
                           {
                              §§push(~§§pop());
                           }
                           §§push(§§pop() & §§pop());
                        }
                        §§pop().§6b§ = §§pop();
                        addr73:
                        while(true)
                        {
                        }
                     }
                  }
                  addr47:
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr56);
                  }
                  addr90:
                  var _loc4_:b2TimeStep;
                  (_loc4_ = s_timestep2).§1!O§ = param1;
                  if(_loc5_ || param2)
                  {
                     _loc4_.§,H§ = param2;
                     while(true)
                     {
                        _loc4_.§5"A§ = param3;
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    _loc4_.§4"r§ = 0;
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§%"@§);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§pop().§8"]§ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                _loc4_.§-'§ = § M§;
                                                loop9:
                                                for(; !(_loc6_ && param3); if(!(_loc6_ && param3))
                                                {
                                                   continue loop3;
                                                })
                                                {
                                                   this.§1P§.§9#Z§();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.§1!O§);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr261:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               addr286:
                                                               while(true)
                                                               {
                                                                  addr186:
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  this.§%"@§ = _loc4_.§4"r§;
                                                                  loop22:
                                                                  while(_loc5_ || param2)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§6b§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§+"z§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(~§§pop());
                                                                           }
                                                                           §§push(§§pop() & §§pop());
                                                                        }
                                                                        §§pop().§6b§ = §§pop();
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr182:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr186);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.§1!O§);
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr256:
                                                                              }
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr144:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.§1!O§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§%!J§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr253:
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§goto(addr144);
                                                                        }
                                                                        addr228:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr256);
                                                                  }
                                                                  addr255:
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                addr337:
                                                while(true)
                                                {
                                                   _loc4_.§4"r§ = 1 / param1;
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          addr304:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr304);
                                       }
                                    }
                                 }
                                 §§goto(addr337);
                              }
                           }
                           if(!(_loc6_ && this))
                           {
                              return;
                           }
                        }
                        if(_loc6_ && this)
                        {
                           continue;
                        }
                        this.§=#6§(_loc4_);
                        §§goto(addr286);
                     }
                  }
                  §§goto(addr237);
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§6b§);
               if(!(_loc6_ && param3))
               {
                  §§push(§§pop() | §+"z§);
               }
               §§pop().§6b§ = §§pop();
               if(!(_loc5_ || param3))
               {
                  continue;
               }
               if(!(_loc6_ && param2))
               {
                  §§goto(addr47);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr89);
      }
      
      public function ClearForces() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Body = this.§,!A§;
         while(_loc1_)
         {
            _loc1_.§#r§.§&"Q§();
            if(_loc2_)
            {
               _loc1_.§?"4§ = 0;
               if(_loc3_)
               {
                  break;
               }
            }
            _loc1_ = _loc1_.§!"!§;
         }
      }
      
      public function §`!<§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§8t§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(_loc23_ || _loc2_)
         {
            §§push(this.§@#J§);
            if(!_loc24_)
            {
               if(§§pop() == null)
               {
                  if(_loc23_ || _loc3_)
                  {
                     return;
                  }
               }
               §§push(this.§@#J§);
               if(_loc23_)
               {
                  addr84:
                  §§pop().§3"k§.graphics.clear();
                  §§push(this.§@#J§);
               }
               §§push(§§pop().§0"k§());
               if(!_loc24_)
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
               if(_loc23_ || _loc1_)
               {
                  if(_loc1_ & b2DebugDraw.§;#F§)
                  {
                     addr144:
                     _loc3_ = this.§,!A§;
                     while(_loc3_)
                     {
                        _loc11_ = _loc3_.m_xf;
                        _loc4_ = _loc3_.GetFixtureList();
                        if(_loc23_)
                        {
                           loop13:
                           for(; _loc4_; _loc4_ = _loc4_.§!"!§)
                           {
                              _loc5_ = _loc4_.GetShape();
                              if(_loc23_ || this)
                              {
                                 §§push(_loc3_.§%!L§());
                                 loop14:
                                 while(true)
                                 {
                                    §§push(false);
                                    loop15:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(_loc3_.§8! §());
                                       loop16:
                                       while(true)
                                       {
                                          §§push(b2Body.b2_staticBody);
                                          loop17:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(_loc3_.§8! §());
                                             if(_loc24_)
                                             {
                                                continue loop16;
                                             }
                                             §§push(b2Body.b2_kinematicBody);
                                             if(_loc24_)
                                             {
                                                continue;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                §§push(_loc3_.IsAwake());
                                                if(_loc24_)
                                                {
                                                   continue loop14;
                                                }
                                                §§push(false);
                                                if(_loc24_ && _loc1_)
                                                {
                                                   continue loop15;
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   _loc15_.Set(0.9,0.7,0.7);
                                                   addr201:
                                                   if(_loc23_ || this)
                                                   {
                                                      if(!_loc24_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§56§(_loc5_,_loc11_,_loc15_);
                                                            if(!(_loc24_ && _loc3_))
                                                            {
                                                               if(!_loc24_)
                                                               {
                                                                  if(_loc24_)
                                                                  {
                                                                     break loop17;
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr217:
                                                                  if(!(_loc23_ || _loc3_))
                                                                  {
                                                                     addr291:
                                                                     if(!_loc24_)
                                                                     {
                                                                        this.§56§(_loc5_,_loc11_,_loc15_);
                                                                        break;
                                                                     }
                                                                     addr321:
                                                                     addr300:
                                                                     this.§56§(_loc5_,_loc11_,_loc15_);
                                                                     continue loop13;
                                                                  }
                                                                  if(!(_loc23_ || _loc3_))
                                                                  {
                                                                     continue loop13;
                                                                     addr328:
                                                                  }
                                                               }
                                                               continue loop13;
                                                            }
                                                            §§goto(addr201);
                                                            §§goto(addr217);
                                                         }
                                                         addr269:
                                                         if(!_loc24_)
                                                         {
                                                            if(_loc23_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            addr338:
                                                            this.§56§(_loc5_,_loc11_,_loc15_);
                                                            §§goto(addr328);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr300);
                                                         }
                                                      }
                                                      addr248:
                                                      if(_loc23_ || this)
                                                      {
                                                         _loc15_.Set(0.6,0.6,0.6);
                                                         addr260:
                                                         if(!_loc24_)
                                                         {
                                                            this.§56§(_loc5_,_loc11_,_loc15_);
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      else
                                                      {
                                                         addr286:
                                                         _loc15_.Set(0.5,0.5,0.9);
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   §§goto(addr260);
                                                }
                                                §§goto(addr248);
                                             }
                                             §§goto(addr286);
                                          }
                                          if(!(_loc23_ || _loc1_))
                                          {
                                             break loop15;
                                          }
                                          _loc15_.Set(0.5,0.9,0.5);
                                          §§goto(addr321);
                                       }
                                    }
                                    _loc15_.Set(0.5,0.5,0.3);
                                    §§goto(addr338);
                                 }
                              }
                              §§goto(addr210);
                           }
                        }
                        _loc3_ = _loc3_.§!"!§;
                     }
                  }
                  §§push(_loc1_);
                  if(!_loc24_)
                  {
                     §§push(b2DebugDraw.§'"l§);
                     if(_loc23_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!(_loc24_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(!_loc24_)
                              {
                                 _loc6_ = this.§%#J§;
                                 if(_loc23_ || _loc1_)
                                 {
                                    loop0:
                                    while(_loc6_)
                                    {
                                       this.§#"2§(_loc6_);
                                       if(_loc24_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc6_ = _loc6_.§!"!§;
                                          continue loop0;
                                       }
                                    }
                                    addr403:
                                    §§push(_loc1_);
                                    if(!_loc24_)
                                    {
                                       §§push(b2DebugDraw.§@# §);
                                       if(!(_loc24_ && _loc1_))
                                       {
                                          addr415:
                                          §§push(§§pop() & §§pop());
                                          if(!(_loc24_ && _loc1_))
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc24_)
                                                {
                                                   _loc16_ = this.§?`§;
                                                   if(!(_loc24_ && _loc1_))
                                                   {
                                                      while(_loc16_)
                                                      {
                                                         _loc16_.§>"#§(this.§@#J§);
                                                         if(!_loc23_)
                                                         {
                                                            break;
                                                         }
                                                         _loc16_ = _loc16_.§!"!§;
                                                      }
                                                   }
                                                }
                                                addr486:
                                                §§push(this.§1P§);
                                                if(!_loc24_)
                                                {
                                                   _loc17_ = §§pop().§'#H§;
                                                   if(_loc23_)
                                                   {
                                                      while(_loc17_)
                                                      {
                                                         _loc18_ = _loc17_.§?!@§();
                                                         _loc19_ = _loc17_.§;"R§();
                                                         _loc20_ = _loc18_.§8# §().§&!m§();
                                                         _loc21_ = _loc19_.§8# §().§&!m§();
                                                         if(!_loc24_)
                                                         {
                                                            this.§@#J§.§,"B§(_loc20_,_loc21_,_loc15_);
                                                         }
                                                         _loc17_ = _loc17_.§>!>§();
                                                      }
                                                   }
                                                   §§goto(addr529);
                                                }
                                                §§goto(addr559);
                                             }
                                             §§push(_loc1_);
                                             if(!(_loc24_ && _loc3_))
                                             {
                                                §§push(b2DebugDraw.§]5§);
                                                if(_loc23_)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   if(!_loc24_)
                                                   {
                                                      §§goto(addr466);
                                                   }
                                                }
                                                §§goto(addr546);
                                             }
                                          }
                                          §§goto(addr701);
                                       }
                                       §§goto(addr546);
                                    }
                                    §§goto(addr537);
                                 }
                                 §§goto(addr397);
                              }
                              §§goto(addr486);
                           }
                           §§goto(addr403);
                        }
                        addr466:
                        if(§§pop())
                        {
                           if(_loc23_ || _loc3_)
                           {
                              _loc15_.Set(0.3,0.9,0.9);
                              if(!(_loc24_ && _loc3_))
                              {
                                 §§goto(addr486);
                              }
                              §§goto(addr559);
                           }
                           §§goto(addr706);
                        }
                        addr529:
                        §§push(_loc1_);
                        if(_loc23_ || _loc1_)
                        {
                           addr537:
                           §§push(b2DebugDraw.§##Q§);
                           if(!(_loc24_ && this))
                           {
                              addr546:
                              §§push(§§pop() & §§pop());
                              if(!_loc24_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc23_ || _loc2_)
                                    {
                                       addr559:
                                       _loc7_ = this.§1P§.§7#U§;
                                       _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
                                       _loc3_ = this.§,!A§;
                                       if(!(_loc24_ && _loc1_))
                                       {
                                          while(_loc3_)
                                          {
                                             if(_loc3_.§%!L§() == false)
                                             {
                                                if(!_loc23_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                _loc4_ = _loc3_.GetFixtureList();
                                                if(!_loc24_)
                                                {
                                                   while(_loc4_)
                                                   {
                                                      _loc22_ = _loc7_.§1"§(_loc4_.§4"t§);
                                                      if(_loc23_ || _loc1_)
                                                      {
                                                         _loc14_[0].Set(_loc22_.§1!,§.x,_loc22_.§1!,§.y);
                                                      }
                                                      loop6:
                                                      while(true)
                                                      {
                                                         _loc14_[1].Set(_loc22_.§ D§.x,_loc22_.§1!,§.y);
                                                         while(true)
                                                         {
                                                            _loc14_[2].Set(_loc22_.§ D§.x,_loc22_.§ D§.y);
                                                            while(_loc23_)
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc14_[3].Set(_loc22_.§1!,§.x,_loc22_.§ D§.y);
                                                                  do
                                                                  {
                                                                     this.§@#J§.§2=§(_loc14_,4,_loc15_);
                                                                  }
                                                                  while(_loc24_ && _loc3_);
                                                                  
                                                                  if(_loc24_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      _loc4_ = _loc4_.§>!>§();
                                                   }
                                                }
                                             }
                                             _loc3_ = _loc3_.§>!>§();
                                          }
                                       }
                                       §§goto(addr701);
                                    }
                                    §§goto(addr706);
                                 }
                                 addr701:
                                 §§goto(addr705);
                              }
                              addr705:
                              §§goto(addr704);
                           }
                           addr704:
                           §§goto(addr702);
                        }
                        addr702:
                        if(_loc1_ & b2DebugDraw.§>"v§)
                        {
                           addr706:
                           _loc3_ = this.§,!A§;
                           if(!_loc24_)
                           {
                              for(; _loc3_; _loc3_ = _loc3_.§!"!§)
                              {
                                 (_loc11_ = §!!+§).R = _loc3_.m_xf.R;
                                 if(_loc23_)
                                 {
                                    _loc11_.position = _loc3_.§;#&§();
                                    if(!(_loc23_ || _loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 this.§@#J§.§?!G§(_loc11_);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr415);
                  }
                  §§goto(addr701);
               }
               §§goto(addr144);
            }
         }
         §§goto(addr84);
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           continue loop4;
                           addr50:
                           if(!(_loc4_ && _loc3_))
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  continue loop1;
               }
            }
            while(!(_loc4_ && param2))
            {
               §§pop().§§slot[4] = function(param1:*):Boolean
               {
                  return callback(broadPhase.GetUserData(param1));
               };
               §§goto(addr115);
            }
         }
      }
      
      public function §%"a§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr251:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               addr253:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §-"g§(param1:Function, param2:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr237:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr239:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
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
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[5] = §§pop();
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(!(_loc5_ || param3))
                              {
                                 continue loop1;
                              }
                              §§pop().§§slot[6] = §§pop();
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 addr163:
                                 while(true)
                                 {
                                    §§pop().§§slot[1] = param1;
                                    addr165:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       addr158:
                                       while(true)
                                       {
                                          §§pop().§§slot[2] = param2;
                                          addr160:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
            if(!(_loc5_ || param1))
            {
               continue;
            }
            §§pop().§§slot[4] = this.§1P§.§7#U§;
            §§goto(addr126);
         }
      }
      
      public function §9!%§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     if(_loc4_ && param1)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr116:
                           while(!_loc4_)
                           {
                              §§push(§§newactivation());
                              continue loop5;
                           }
                           continue loop4;
                        }
                     }
                     if(!(_loc4_ && this))
                     {
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §+#]§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
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
                  addr129:
                  while(true)
                  {
                     §§push(null);
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(!_loc4_)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[2] = param2;
                                 addr117:
                                 while(!_loc4_)
                                 {
                                    §§push(§§newactivation());
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
            }
            if(_loc4_ && param1)
            {
               continue;
            }
            §§pop().§§slot[4] = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
            {
               result[result.length] = param1;
               return 1;
            };
            loop10:
            for(; _loc5_ || param2; §§pop().§§slot[3] = new Vector.<b2Fixture>(),do
            {
               this.RayCast(RayCastAllWrapper,point1,point2);
            }
            while(_loc4_);
            ,if(!(_loc5_ || param2))
            {
               continue;
            },if(_loc5_)
            {
               §§goto(addr62);
            },§§goto(addr144))
            {
               §§push(§§newactivation());
               while(true)
               {
                  if(_loc5_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop10;
                  }
                  §§goto(addr115);
                  addr62:
                  §§push(§§newactivation());
                  if(!(_loc5_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr31);
               }
               §§goto(addr129);
            }
            §§goto(addr117);
         }
      }
      
      public function §^!&§() : b2Body
      {
         return this.§,!A§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§%#J§;
      }
      
      public function §9!K§() : b2Contact
      {
         return this.§'#H§;
      }
      
      public function §]#`§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6b§);
         if(!(_loc2_ && _loc1_))
         {
            §§push(§+"z§);
            if(_loc1_ || this)
            {
               addr54:
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            return §§pop() > §§pop();
         }
         §§goto(addr54);
      }
      
      b2internal function §=#6§(param1:b2TimeStep) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§?`§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            if(_loc18_ && _loc2_)
            {
               break;
            }
            _loc3_ = _loc3_.§!"!§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§"x§).§8#5§(this.§9#,§,this.§1N§,this.§5!I§,null,this.§1P§.§?O§,this.§"!k§);
         _loc2_ = this.§,!A§;
         if(_loc17_)
         {
            loop1:
            while(_loc2_)
            {
               _loc2_.§6b§ &= ~b2Body.§96§;
               if(_loc18_)
               {
                  break;
               }
               while(true)
               {
                  _loc2_ = _loc2_.§!"!§;
                  continue loop1;
               }
            }
            var _loc5_:b2Contact = this.§'#H§;
            if(!_loc18_)
            {
               loop2:
               while(_loc5_)
               {
                  _loc5_.§6b§ &= ~b2Contact.§96§;
                  if(!_loc17_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc5_ = _loc5_.§!"!§;
                     continue loop2;
                  }
               }
               var _loc6_:b2Joint = this.§%#J§;
               if(!_loc18_)
               {
                  while(_loc6_)
                  {
                     _loc6_.§'!z§ = false;
                     if(!_loc17_)
                     {
                        break;
                     }
                     _loc6_ = _loc6_.§!"!§;
                  }
               }
               §§push(this.§9#,§);
               if(!_loc18_)
               {
                  §§push(int(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:Vector.<b2Body> = this.§7I§;
               var _loc9_:b2Body = this.§,!A§;
               if(!(_loc18_ && param1))
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc9_)
                     {
                        if(_loc17_ || _loc2_)
                        {
                           addr755:
                           §§push(0);
                           if(!(_loc18_ && _loc3_))
                           {
                              addr763:
                              _loc11_ = §§pop();
                              addr793:
                              if(_loc17_)
                              {
                                 addr789:
                                 §§push(_loc11_);
                              }
                              _loc2_ = this.§,!A§;
                              if(!_loc18_)
                              {
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc18_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc2_.IsAwake());
                                       if(_loc17_)
                                       {
                                          §§push(false);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc18_ && _loc2_))
                                             {
                                                §§push(§§pop());
                                                if(_loc17_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc18_)
                                                      {
                                                         addr822:
                                                         §§pop();
                                                         if(!_loc18_)
                                                         {
                                                            §§push(_loc2_.§%!L§());
                                                            if(_loc17_)
                                                            {
                                                               addr831:
                                                               if(§§pop() == false)
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr868:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr868:
                                                                  }
                                                                  continue;
                                                                  return;
                                                               }
                                                               if(_loc2_.§8! §() != b2Body.b2_staticBody)
                                                               {
                                                                  _loc2_.§7,§();
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc17_)
                                                               {
                                                               }
                                                               §§goto(addr868);
                                                            }
                                                            §§goto(addr831);
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr831);
                                       }
                                       §§goto(addr822);
                                    }
                                 }
                                 this.§1P§.§7"D§();
                              }
                              §§goto(addr868);
                           }
                           if(§§pop() < _loc8_.length)
                           {
                              if(!_loc8_[_loc11_])
                              {
                                 if(!_loc17_)
                                 {
                                    addr786:
                                    _loc11_++;
                                    if(_loc17_)
                                    {
                                       §§goto(addr789);
                                    }
                                 }
                                 §§goto(addr793);
                              }
                              _loc8_[_loc11_] = null;
                              if(_loc17_ || param1)
                              {
                                 §§goto(addr786);
                              }
                              §§goto(addr789);
                           }
                        }
                        §§goto(addr793);
                     }
                     else
                     {
                        §§push(_loc9_.§6b§);
                        loop5:
                        while(true)
                        {
                           §§push(b2Body.§96§);
                           addr248:
                           while(true)
                           {
                              §§push(§§pop() & §§pop());
                              addr249:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc18_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr793);
                                 }
                                 else
                                 {
                                    §§push(_loc9_.IsAwake());
                                    if(_loc17_)
                                    {
                                       §§push(false);
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc17_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                addr177:
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc9_.§%!L§());
                                                   if(_loc17_ || _loc2_)
                                                   {
                                                      if(!(_loc17_ || _loc3_))
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§push(false);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue loop13;
                                                            }
                                                         }
                                                         addr274:
                                                      }
                                                      while(true)
                                                      {
                                                         break loop11;
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      if(_loc17_ || param1)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop12;
                                                   }
                                                   §§goto(addr786);
                                                }
                                                §§goto(addr789);
                                             }
                                          }
                                          addr275:
                                       }
                                       §§goto(addr274);
                                    }
                                    §§goto(addr275);
                                 }
                              }
                              §§goto(addr793);
                           }
                        }
                     }
                     §§goto(addr789);
                  }
               }
               §§goto(addr763);
            }
            §§goto(addr114);
         }
         §§goto(addr90);
      }
      
      b2internal function §,!x§(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
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
         (_loc9_ = this.§"x§).§8#5§(this.§9#,§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§1P§.§?O§,this.§"!k§);
         var _loc10_:Vector.<b2Body> = §7!7§;
         _loc2_ = this.§,!A§;
         while(_loc2_)
         {
            _loc2_.§6b§ &= ~b2Body.§96§;
            if(_loc23_ || param1)
            {
               _loc2_.m_sweep.§ #L§ = 0;
               if(_loc24_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§!"!§;
         }
         _loc11_ = this.§'#H§;
         if(!(_loc24_ && param1))
         {
            loop1:
            for(; _loc11_; while(true)
            {
               _loc11_ = _loc11_.§!"!§;
               continue loop1;
            })
            {
               §§push(_loc11_);
               §§push(_loc11_.§6b§);
               §§push(b2Contact.§##R§ | b2Contact.§96§);
               if(!(_loc24_ && param1))
               {
                  §§push(~§§pop());
               }
               §§pop().§6b§ = §§pop() & §§pop();
               if(_loc24_ && this)
               {
                  continue;
               }
               while(true)
               {
                  _loc11_.§8"J§ = 1;
                  if(!_loc23_)
                  {
                     break loop1;
                  }
                  continue loop1;
               }
            }
            _loc8_ = this.§%#J§;
            if(!(_loc24_ && _loc2_))
            {
               while(_loc8_)
               {
                  _loc8_.§'!z§ = false;
                  if(_loc24_)
                  {
                     break;
                  }
                  _loc8_ = _loc8_.§!"!§;
               }
            }
            loop3:
            while(true)
            {
               _loc12_ = null;
               if(_loc23_ || param1)
               {
                  _loc13_ = Number(1);
               }
               _loc11_ = this.§'#H§;
               if(!_loc24_)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc11_)
                     {
                        if(_loc23_)
                        {
                           addr979:
                           §§push(_loc12_ == null);
                           if(!_loc24_)
                           {
                              addr985:
                              if(!§§pop())
                              {
                                 if(_loc23_)
                                 {
                                    addr988:
                                    §§pop();
                                    if(!_loc24_)
                                    {
                                       addr999:
                                       if(1 - 100 * Number.MIN_VALUE >= _loc13_)
                                       {
                                          addr1003:
                                          _loc3_ = _loc12_.§8"Q§;
                                          _loc4_ = _loc12_.§?# §;
                                          _loc5_ = _loc3_.m_body;
                                          _loc6_ = _loc4_.m_body;
                                          if(_loc23_)
                                          {
                                             §;"`§.Set(_loc5_.m_sweep);
                                             if(_loc23_ || _loc2_)
                                             {
                                                §^=§.Set(_loc6_.m_sweep);
                                                _loc5_.§?!'§(_loc13_);
                                                _loc6_.§?!'§(_loc13_);
                                                addr1180:
                                                addr1192:
                                                if(!(_loc24_ && this))
                                                {
                                                   _loc12_.§%!q§(this.§1P§.§?O§);
                                                   _loc12_.§6b§ &= ~b2Contact.§##R§;
                                                   addr1168:
                                                   addr1175:
                                                   §§push(_loc12_.§!W§());
                                                   if(!(_loc24_ && this))
                                                   {
                                                      §§push(true);
                                                      if(_loc23_ || this)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc23_)
                                                         {
                                                            addr1151:
                                                            §§push(§§pop());
                                                            if(_loc23_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc23_)
                                                                  {
                                                                     §§pop();
                                                                     §§push(_loc12_.§0"p§());
                                                                     if(_loc23_)
                                                                     {
                                                                        §§push(false);
                                                                        if(!(_loc24_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc24_)
                                                                           {
                                                                           }
                                                                           addr1215:
                                                                           if(§§pop() == false)
                                                                           {
                                                                              addr1216:
                                                                              continue loop3;
                                                                           }
                                                                           if((_loc14_ = _loc5_).§8! §() != b2Body.b2_dynamicBody)
                                                                           {
                                                                              if(_loc23_)
                                                                              {
                                                                                 _loc14_ = _loc6_;
                                                                                 addr1230:
                                                                                 _loc9_.§#u§();
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc23_ || param1)
                                                                                    {
                                                                                       _loc15_ = §§pop();
                                                                                       addr1289:
                                                                                       §§push(0);
                                                                                       if(_loc23_ || _loc3_)
                                                                                       {
                                                                                          _loc16_ = §§pop();
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                §§goto(addr1289);
                                                                                             }
                                                                                             addr1254:
                                                                                             _loc10_[_loc15_ + _loc16_++] = _loc14_;
                                                                                             _loc14_.§6b§ |= b2Body.§96§;
                                                                                             addr1264:
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr1254);
                                                                                                   }
                                                                                                   addr1749:
                                                                                                   if(_loc16_ > 0)
                                                                                                   {
                                                                                                      _loc2_ = _loc10_[_loc15_++];
                                                                                                      if(!(_loc24_ && this))
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         _loc16_ = §§pop();
                                                                                                         addr1324:
                                                                                                         _loc9_.§%j§(_loc2_);
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            if(_loc2_.IsAwake() == false)
                                                                                                            {
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  _loc2_.SetAwake(true);
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     addr1320:
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        addr1322:
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr1324);
                                                                                                                        }
                                                                                                                        addr1342:
                                                                                                                        if(_loc2_.§8! §() != b2Body.b2_dynamicBody)
                                                                                                                        {
                                                                                                                           addr1347:
                                                                                                                           §§goto(addr1749);
                                                                                                                        }
                                                                                                                        _loc7_ = _loc2_.§'#H§;
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           addr1603:
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr1605:
                                                                                                                              _loc21_ = _loc2_.§%#J§;
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 addr1747:
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1749);
                                                                                                                                 }
                                                                                                                                 if(_loc9_.§5!I§ == _loc9_.§=!I§)
                                                                                                                                 {
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr1743:
                                                                                                                                       _loc21_ = _loc21_.§]!D§;
                                                                                                                                       §§goto(addr1747);
                                                                                                                                    }
                                                                                                                                    addr1628:
                                                                                                                                    §§goto(addr1743);
                                                                                                                                 }
                                                                                                                                 if(_loc21_.joint.§'!z§ == true)
                                                                                                                                 {
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1628);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1749);
                                                                                                                                 }
                                                                                                                                 if((_loc22_ = _loc21_.other).§%!L§() == false)
                                                                                                                                 {
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1743);
                                                                                                                                    }
                                                                                                                                    addr1742:
                                                                                                                                    §§push(_loc22_.§6b§);
                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(b2Body.§96§);
                                                                                                                                       if(!(_loc24_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(§§pop() & §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1743);
                                                                                                                                             }
                                                                                                                                             addr1727:
                                                                                                                                             _loc22_.§?!'§(_loc13_);
                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _loc22_.SetAwake(true);
                                                                                                                                                addr1685:
                                                                                                                                                _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                addr1680:
                                                                                                                                                _loc16_++;
                                                                                                                                                addr1692:
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   _loc22_.§6b§ |= b2Body.§96§;
                                                                                                                                                   if(!(_loc24_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc23_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1680);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1743);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1727);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1692);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1680);
                                                                                                                                                }
                                                                                                                                                addr1697:
                                                                                                                                                §§goto(addr1697);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1742);
                                                                                                                                          }
                                                                                                                                          addr1724:
                                                                                                                                          §§push(_loc22_.§8! §());
                                                                                                                                          §§push(b2Body.b2_staticBody);
                                                                                                                                       }
                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr1727);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1685);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1724);
                                                                                                                                 }
                                                                                                                                 _loc9_.§^#1§(_loc21_.joint);
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    _loc21_.joint.§'!z§ = true;
                                                                                                                                    §§goto(addr1742);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1727);
                                                                                                                              }
                                                                                                                              §§goto(addr1749);
                                                                                                                           }
                                                                                                                           §§push(_loc9_.§1N§);
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              if(§§pop() == _loc9_.§5"x§)
                                                                                                                              {
                                                                                                                                 addr1474:
                                                                                                                                 §§goto(addr1605);
                                                                                                                              }
                                                                                                                              addr1503:
                                                                                                                              §§push(_loc7_.§>"6§);
                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr1488:
                                                                                                                                 if(§§pop().§6b§ & b2Contact.§96§)
                                                                                                                                 {
                                                                                                                                    addr1599:
                                                                                                                                    _loc7_ = _loc7_.§]!D§;
                                                                                                                                    §§goto(addr1603);
                                                                                                                                    addr1489:
                                                                                                                                 }
                                                                                                                                 §§push(_loc7_.§>"6§);
                                                                                                                              }
                                                                                                                              §§push(§§pop().§!W§());
                                                                                                                              §§push(true);
                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr1502:
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 addr1504:
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr1446:
                                                                                                                                    §§push(_loc7_.§>"6§);
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       addr1449:
                                                                                                                                       §§push(§§pop().§0"p§());
                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr1457:
                                                                                                                                          §§push(§§pop() == false);
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             addr1462:
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                addr1463:
                                                                                                                                                §§pop();
                                                                                                                                                addr1464:
                                                                                                                                                §§push(_loc7_.§>"6§.§[#B§());
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc24_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  addr1410:
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  if(_loc23_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1419:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1599);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1474);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1464);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1605);
                                                                                                                                                                        }
                                                                                                                                                                        _loc9_.§`"Q§(_loc7_.§>"6§);
                                                                                                                                                                        addr1442:
                                                                                                                                                                        §§push(_loc7_.§>"6§);
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§6b§ = _loc7_.§>"6§.§6b§ | b2Contact.§96§;
                                                                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1464);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push((_loc22_ = _loc7_.other).§6b§);
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(b2Body.§96§);
                                                                                                                                                                                          if(_loc23_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() & §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1599);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1588:
                                                                                                                                                                                                _loc10_[_loc15_ + _loc16_] = _loc22_;
                                                                                                                                                                                                addr1570:
                                                                                                                                                                                                _loc16_++;
                                                                                                                                                                                                addr1598:
                                                                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc22_.§6b§ |= b2Body.§96§;
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1570);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1599);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1570);
                                                                                                                                                                                                      addr1586:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1598);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1594:
                                                                                                                                                                                                §§goto(addr1594);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1537:
                                                                                                                                                                                             §§push(_loc22_.§8! §());
                                                                                                                                                                                             §§push(b2Body.b2_staticBody);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc22_.§?!'§(_loc13_);
                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc22_.SetAwake(true);
                                                                                                                                                                                                   §§goto(addr1570);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1586);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1570);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1588);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1537);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1489);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1442);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1605);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1446);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1464);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1504);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1463);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1503);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1457);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1462);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1503);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1449);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1410);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1419);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1463);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1502);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1503);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1605);
                                                                                                                              }
                                                                                                                              §§goto(addr1462);
                                                                                                                           }
                                                                                                                           §§goto(addr1488);
                                                                                                                        }
                                                                                                                        §§goto(addr1474);
                                                                                                                     }
                                                                                                                     §§goto(addr1324);
                                                                                                                  }
                                                                                                                  §§goto(addr1347);
                                                                                                               }
                                                                                                               §§goto(addr1320);
                                                                                                            }
                                                                                                            §§goto(addr1342);
                                                                                                         }
                                                                                                         addr1341:
                                                                                                         §§goto(addr1341);
                                                                                                      }
                                                                                                      §§goto(addr1322);
                                                                                                   }
                                                                                                   addr1752:
                                                                                                   (_loc17_ = §;"C§).§-'§ = false;
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      §§push(_loc17_);
                                                                                                      §§push(1 - _loc13_);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(§§pop() * param1.§1!O§);
                                                                                                      }
                                                                                                      §§pop().§1!O§ = §§pop();
                                                                                                      if(!(_loc24_ && this))
                                                                                                      {
                                                                                                         _loc17_.§4"r§ = 1 / _loc17_.§1!O§;
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            _loc17_.§8"]§ = 1;
                                                                                                            _loc17_.§,H§ = param1.§,H§;
                                                                                                            addr1824:
                                                                                                            if(_loc23_ || this)
                                                                                                            {
                                                                                                               _loc17_.§5"A§ = param1.§5"A§;
                                                                                                               if(_loc23_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc23_ || _loc2_))
                                                                                                                  {
                                                                                                                     §§goto(addr1824);
                                                                                                                  }
                                                                                                                  addr1780:
                                                                                                                  _loc9_.§,!x§(_loc17_);
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc23_ || _loc2_)
                                                                                                                     {
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr1780);
                                                                                                                           }
                                                                                                                           addr1944:
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              addr1947:
                                                                                                                              §§push(_loc9_.§9#,§);
                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    _loc2_ = _loc9_.§%6§[_loc18_];
                                                                                                                                    if(_loc23_ || this)
                                                                                                                                    {
                                                                                                                                       _loc2_.§6b§ &= ~b2Body.§96§;
                                                                                                                                       if(_loc23_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc2_.IsAwake() == false)
                                                                                                                                          {
                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr1943:
                                                                                                                                                _loc18_++;
                                                                                                                                                addr1894:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1944);
                                                                                                                                          }
                                                                                                                                          if(_loc2_.§8! §() != b2Body.b2_dynamicBody)
                                                                                                                                          {
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                addr1902:
                                                                                                                                                §§goto(addr1943);
                                                                                                                                             }
                                                                                                                                             addr1907:
                                                                                                                                             _loc7_ = _loc2_.§'#H§;
                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr1941:
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1943);
                                                                                                                                                }
                                                                                                                                                _loc7_.§>"6§.§6b§ &= ~b2Contact.§##R§;
                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr1937:
                                                                                                                                                   _loc7_ = _loc7_.§]!D§;
                                                                                                                                                   §§goto(addr1941);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1943);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1937);
                                                                                                                                          }
                                                                                                                                          _loc2_.§7,§();
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1907);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1944);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1902);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1894);
                                                                                                                                 }
                                                                                                                                 if(_loc23_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr1999:
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.§1N§);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                addr2011:
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   _loc11_ = _loc9_.§+"C§[_loc18_];
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   §§push(_loc11_.§6b§);
                                                                                                                                                   §§push(b2Contact.§##R§ | b2Contact.§96§);
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      §§push(~§§pop());
                                                                                                                                                   }
                                                                                                                                                   §§pop().§6b§ = §§pop() & §§pop();
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      _loc18_++;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1999);
                                                                                                                                                }
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                addr2014:
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr2017:
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   addr2055:
                                                                                                                                                   if(_loc23_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr2040:
                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                      §§push(_loc9_.§5!I§);
                                                                                                                                                      addr2025:
                                                                                                                                                   }
                                                                                                                                                   this.§1P§.§7"D§();
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2040);
                                                                                                                                             }
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                (_loc8_ = _loc9_.§8!s§[_loc18_]).§'!z§ = false;
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   _loc18_++;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2040);
                                                                                                                                             }
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             §§goto(addr2055);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2017);
                                                                                                                                          addr1975:
                                                                                                                                       }
                                                                                                                                       §§goto(addr2017);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2040);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2014);
                                                                                                                              }
                                                                                                                              §§goto(addr2011);
                                                                                                                           }
                                                                                                                           §§goto(addr2040);
                                                                                                                        }
                                                                                                                        §§goto(addr2025);
                                                                                                                     }
                                                                                                                     §§goto(addr1947);
                                                                                                                  }
                                                                                                                  §§goto(addr1975);
                                                                                                                  addr1806:
                                                                                                               }
                                                                                                               §§goto(addr2040);
                                                                                                            }
                                                                                                            §§goto(addr2017);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1999);
                                                                                                   }
                                                                                                   §§goto(addr1806);
                                                                                                }
                                                                                                §§goto(addr1264);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1752);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1749);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1289);
                                                                           }
                                                                           §§goto(addr1230);
                                                                        }
                                                                     }
                                                                     §§goto(addr1215);
                                                                     addr1158:
                                                                  }
                                                                  §§goto(addr1215);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc24_ && param1))
                                                                  {
                                                                     addr1127:
                                                                     _loc5_.m_sweep.Set(§;"`§);
                                                                  }
                                                                  addr1129:
                                                                  §§push(_loc6_.m_sweep);
                                                                  if(!(_loc24_ && _loc2_))
                                                                  {
                                                                     §§pop().Set(§^=§);
                                                                     if(!(_loc24_ && this))
                                                                     {
                                                                        if(_loc23_ || this)
                                                                        {
                                                                           if(_loc23_ || param1)
                                                                           {
                                                                              if(!(_loc24_ && param1))
                                                                              {
                                                                                 addr1055:
                                                                                 _loc5_.§`"a§();
                                                                                 _loc6_.§`"a§();
                                                                                 addr1058:
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       if(!(_loc24_ && _loc2_))
                                                                                       {
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             if(_loc23_ || param1)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr1055);
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§goto(addr1180);
                                                                                          }
                                                                                          §§goto(addr1168);
                                                                                       }
                                                                                       §§goto(addr1158);
                                                                                    }
                                                                                    §§goto(addr1058);
                                                                                 }
                                                                                 §§goto(addr1216);
                                                                              }
                                                                              §§goto(addr1192);
                                                                           }
                                                                           §§goto(addr1175);
                                                                        }
                                                                        §§goto(addr1129);
                                                                     }
                                                                     §§goto(addr1216);
                                                                  }
                                                                  §§goto(addr1127);
                                                               }
                                                               §§push(_loc12_.§[#B§());
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1215);
                                                   }
                                                   §§goto(addr1151);
                                                }
                                                addr1198:
                                                §§goto(addr1198);
                                             }
                                             §§goto(addr1216);
                                          }
                                          §§goto(addr1127);
                                       }
                                    }
                                    return;
                                    addr1000:
                                 }
                              }
                           }
                        }
                        §§goto(addr999);
                     }
                     else
                     {
                        §§push(_loc11_.§!W§());
                        if(_loc23_)
                        {
                           §§push(true);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc23_ || _loc2_)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 for(; !§§pop(); if(_loc23_ || _loc3_)
                                 {
                                    if(!_loc24_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       break;
                                    }
                                    continue loop5;
                                 })
                                 {
                                    if(_loc23_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc23_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc11_.§0"p§());
                                                if(!_loc24_)
                                                {
                                                   §§push(false);
                                                   if(!(_loc24_ && param1))
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                else
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc23_ || _loc2_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc24_)
                                                            {
                                                               §§pop();
                                                               if(_loc23_ || _loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc11_.§;!g§());
                                                                     if(_loc23_ || _loc3_)
                                                                     {
                                                                        §§push(false);
                                                                        if(!(_loc24_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc23_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           addr915:
                                                                           §§push(§§pop());
                                                                           if(_loc23_ || this)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                        }
                                                                        §§goto(addr985);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr999);
                                                                  addr259:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr979);
                                                               }
                                                               §§goto(addr999);
                                                            }
                                                            §§goto(addr915);
                                                         }
                                                         else
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc23_ || this)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  addr934:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc19_);
                                                                     if(_loc24_ && this)
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc13_);
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           if(_loc23_)
                                                                           {
                                                                              addr948:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(_loc23_ || param1)
                                                                                 {
                                                                                    addr956:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc12_ = _loc11_;
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(!(_loc24_ && _loc3_))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc13_ = §§pop();
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr956:
                                                                                 }
                                                                              }
                                                                              addr948:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr999);
                                                                           }
                                                                           §§goto(addr1000);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr999);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(1);
                                                                  if(_loc23_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc24_)
                                                                     {
                                                                        _loc19_ = §§pop();
                                                                        if(!(_loc24_ && _loc3_))
                                                                        {
                                                                           §§push(_loc11_.§6b§ & b2Contact.§##R§);
                                                                           if(_loc23_ || param1)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc24_ && this))
                                                                                 {
                                                                                    §§push(_loc11_.§8"J§);
                                                                                    if(_loc23_ || param1)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc24_ && _loc3_))
                                                                                       {
                                                                                          _loc19_ = §§pop();
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             addr257:
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr909:
                                                                                                §§push(Number.MIN_VALUE < _loc19_);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§goto(addr915);
                                                                                                }
                                                                                                §§goto(addr948);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr979);
                                                                                          }
                                                                                          §§goto(addr999);
                                                                                       }
                                                                                       §§goto(addr942);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr257);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc11_.§8"Q§);
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    _loc4_ = _loc11_.§?# §;
                                                                                    _loc5_ = _loc3_.m_body;
                                                                                    _loc6_ = _loc4_.m_body;
                                                                                    if(!(_loc24_ && this))
                                                                                    {
                                                                                       §§push(_loc5_.§8! §());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(b2Body.b2_dynamicBody);
                                                                                          addr903:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             addr904:
                                                                                             loop12:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_.IsAwake());
                                                                                                               if(!(_loc24_ && this))
                                                                                                               {
                                                                                                                  if(_loc24_ && _loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(false);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     addr894:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     while(!(_loc24_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.m_sweep);
                                                                                                                                 loop31:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§ #L§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                          while(!_loc24_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.m_sweep);
                                                                                                                                             loop35:
                                                                                                                                             for(; !_loc24_; while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc23_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop35;
                                                                                                                                                }
                                                                                                                                                §§goto(addr787);
                                                                                                                                                §§push(_loc20_);
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§ #L§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                   loop37:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§ #L§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                            if(_loc23_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc24_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§ #L§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_.m_sweep);
                                                                                                                                                                     if(!(_loc23_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop().§ #L§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.m_sweep);
                                                                                                                                                                              addr765:
                                                                                                                                                                              loop71:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc23_ || _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().§ #L§);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr774:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc20_ = §§pop();
                                                                                                                                                                                       continue loop71;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr698);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop37;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr808);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr765);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr799);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              while(!(_loc24_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc24_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 §§goto(addr661);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr895);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr894);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.§8! §());
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(b2Body.b2_dynamicBody);
                                                                                             if(_loc23_ || _loc3_)
                                                                                             {
                                                                                                §§goto(addr868);
                                                                                                §§push(§§pop() == §§pop());
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr903);
                                                                                             }
                                                                                             §§goto(addr904);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr454);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1003);
                                                                           }
                                                                           §§goto(addr999);
                                                                        }
                                                                        §§goto(addr956);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr999);
                                                               }
                                                               §§goto(addr956);
                                                            }
                                                            §§goto(addr999);
                                                            addr287:
                                                         }
                                                         §§goto(addr999);
                                                      }
                                                      break;
                                                   }
                                                   addr336:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc23_ || _loc2_)
                                                      {
                                                         §§pop();
                                                         if(!_loc24_)
                                                         {
                                                            §§goto(addr934);
                                                         }
                                                         §§goto(addr956);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr985);
                                                      }
                                                   }
                                                   §§goto(addr948);
                                                }
                                             }
                                             addr383:
                                          }
                                          §§goto(addr979);
                                       }
                                       addr380:
                                    }
                                    §§goto(addr985);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr336);
                                 }
                              }
                              break;
                           }
                           §§goto(addr988);
                        }
                        §§goto(addr380);
                     }
                  }
               }
               §§goto(addr383);
            }
         }
         §§goto(addr159);
      }
      
      b2internal function §#"2§(param1:b2Joint) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§;!`§();
         var _loc3_:b2Body = param1.§8!'§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §@!]§;
         §§push(param1.§%!9§);
         if(!(_loc16_ && _loc3_))
         {
            var _loc14_:* = §§pop();
            if(_loc15_ || _loc2_)
            {
               §§push(b2Joint.§83§);
               if(!_loc16_)
               {
                  §§push(_loc14_);
                  if(_loc15_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_)
                        {
                           §§push(0);
                           if(_loc15_ || this)
                           {
                           }
                        }
                        else
                        {
                           addr296:
                           §§push(2);
                           if(!(_loc16_ && _loc3_))
                           {
                              addr314:
                           }
                        }
                        addr320:
                        loop8:
                        switch(§§pop())
                        {
                           case 0:
                              this.§@#J§.§,"B§(_loc8_,_loc9_,_loc10_);
                              if(!_loc16_)
                              {
                                 break;
                              }
                              break;
                           case 1:
                              _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§-#6§();
                              _loc13_ = _loc11_.§=!V§();
                              if(_loc15_)
                              {
                                 addr214:
                                 this.§@#J§.§,"B§(_loc12_,_loc8_,_loc10_);
                                 this.§@#J§.§,"B§(_loc13_,_loc9_,_loc10_);
                                 addr218:
                              }
                              else
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§@#J§);
                                    if(_loc15_)
                                    {
                                       if(!(_loc16_ && this))
                                       {
                                          if(_loc15_)
                                          {
                                             §§pop().§,"B§(_loc7_,_loc9_,_loc10_);
                                             loop7:
                                             while(true)
                                             {
                                                if(!(_loc16_ && _loc3_))
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      addr128:
                                                      if(_loc15_)
                                                      {
                                                         if(false)
                                                         {
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(this.§@#J§);
                                                               addr135:
                                                               loop4:
                                                               while(!_loc16_)
                                                               {
                                                                  §§pop().§,"B§(_loc8_,_loc9_,_loc10_);
                                                                  while(true)
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        while(_loc15_ || this)
                                                                        {
                                                                           §§push(this.§@#J§);
                                                                           break loop4;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr195:
                                                                        addr161:
                                                                     }
                                                                     if(_loc3_ == this.m_groundBody)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc15_ || param1))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!_loc15_)
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     addr203:
                                                                     continue loop6;
                                                                  }
                                                                  break loop8;
                                                               }
                                                               while(!_loc16_)
                                                               {
                                                                  §§pop().§,"B§(_loc6_,_loc8_,_loc10_);
                                                                  while(!_loc16_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               addr199:
                                                               §§pop().§,"B§(_loc12_,_loc13_,_loc10_);
                                                               §§goto(addr203);
                                                            }
                                                            addr211:
                                                            §§goto(addr199);
                                                            §§push(this.§@#J§);
                                                            addr211:
                                                            addr132:
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr141);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr214);
                                          }
                                          §§goto(addr214);
                                       }
                                       else
                                       {
                                          addr184:
                                          if(_loc16_ && _loc3_)
                                          {
                                             break;
                                          }
                                          §§pop().§,"B§(_loc8_,_loc9_,_loc10_);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr211);
                           case 2:
                              §§goto(addr184);
                           default:
                              §§push(this.§@#J§);
                              if(_loc2_ != this.m_groundBody)
                              {
                                 §§goto(addr161);
                              }
                              §§goto(addr132);
                        }
                        return;
                        addr319:
                     }
                     else
                     {
                        §§push(b2Joint.§ "j§);
                        if(_loc15_)
                        {
                           addr265:
                           §§push(_loc14_);
                           if(_loc15_)
                           {
                              addr268:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc16_ && this))
                                 {
                                    addr276:
                                    §§push(1);
                                    if(_loc16_ && this)
                                    {
                                       addr294:
                                       if(§§pop() === _loc14_)
                                       {
                                          §§goto(addr296);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    §§goto(addr319);
                                 }
                                 §§goto(addr296);
                              }
                              else
                              {
                                 §§push(b2Joint.§4#T§);
                                 if(_loc15_ || param1)
                                 {
                                    §§goto(addr294);
                                 }
                                 §§goto(addr314);
                              }
                           }
                           §§goto(addr294);
                        }
                     }
                     §§goto(addr314);
                  }
                  §§goto(addr268);
               }
               §§goto(addr265);
            }
            §§goto(addr276);
         }
         §§goto(addr320);
      }
      
      b2internal function §56§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         §§push(param1.§%!9§);
         if(!(_loc15_ && param1))
         {
            var _loc14_:* = §§pop();
            if(!_loc15_)
            {
               §§push(b2Shape.§;!T§);
               if(_loc16_ || param1)
               {
                  §§push(_loc14_);
                  if(_loc16_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc15_)
                        {
                           addr234:
                           §§push(0);
                           if(!(_loc16_ || this))
                           {
                              addr291:
                           }
                           addr297:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc4_ = param1 as b2CircleShape;
                                 _loc5_ = b2Math.§""$§(param2,_loc4_.§&!i§);
                                 if(_loc16_ || param2)
                                 {
                                    _loc6_ = _loc4_.§ "^§;
                                 }
                                 _loc7_ = param2.R.col1;
                                 if(_loc16_)
                                 {
                                    this.§@#J§.§=! §(_loc5_,_loc6_,_loc7_,param3);
                                 }
                                 break;
                              case 1:
                                 §§push((_loc9_ = param1 as b2PolygonShape).§4#_§());
                                 if(_loc16_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 _loc10_ = §§pop();
                                 _loc11_ = _loc9_.§!"-§();
                                 _loc12_ = new Vector.<b2Vec2>(_loc10_);
                                 if(_loc16_ || param3)
                                 {
                                    §§push(0);
                                    loop0:
                                    while(true)
                                    {
                                       _loc8_ = §§pop();
                                       addr175:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr132);
                              case 2:
                                 _loc13_ = param1 as b2EdgeShape;
                                 if(!(_loc15_ && param3))
                                 {
                                    this.§@#J§.§,"B§(b2Math.§""$§(param2,_loc13_.GetVertex1()),b2Math.§""$§(param2,_loc13_.GetVertex2()),param3);
                                 }
                           }
                           return;
                           addr296:
                        }
                        else
                        {
                           addr263:
                           §§push(1);
                           if(_loc15_ && this)
                           {
                              §§goto(addr291);
                           }
                           §§goto(addr296);
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§ !7§);
                        if(_loc16_)
                        {
                           §§push(_loc14_);
                           if(_loc16_ || this)
                           {
                              addr255:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc16_ || param3)
                                 {
                                    §§goto(addr263);
                                 }
                                 else
                                 {
                                    addr278:
                                    §§push(2);
                                    if(!_loc15_)
                                    {
                                       §§goto(addr291);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(b2Shape.§5"l§);
                                 if(_loc16_)
                                 {
                                    addr277:
                                    if(§§pop() === _loc14_)
                                    {
                                       §§goto(addr278);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr296);
                           }
                           §§goto(addr277);
                        }
                     }
                     §§goto(addr291);
                  }
                  §§goto(addr255);
               }
               §§goto(addr277);
            }
            §§goto(addr234);
         }
         §§goto(addr297);
      }
   }
}
